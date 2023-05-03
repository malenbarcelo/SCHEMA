const db = require('../../database/models')
const {validationResult} = require('express-validator')
const bcrypt = require('bcryptjs')
const functions = require('./functions/tokensFunctions')

const usersController = {
    login: (req,res) => {
        return res.render('users/login',{title:'Iniciar Sesión'})        
    },
    processLogin: async(req, res) => {
        try{
            const resultValidation = validationResult(req)
            if (resultValidation.errors.length > 0){
                return res.render('users/login',{
                    errors:resultValidation.mapped(),
                    oldData: req.body,
                    title:'Iniciar Sesión'
                })
            }
            
            if(req.body.email == req.body.password){
                const alertMessage = 'Debe cambiar la contraseña'
                const email = req.body.email
                return res.render('users/changePassword',{
                    oldData: req.body,
                    title:'Cambiar contraseña',
                    alertMessage
                })
            }
            const userToLogin = await db.Users.findOne({
                where:{user_email:req.body.email},
                nest:true,
                raw:true
            })
            delete userToLogin.password
            req.session.userLogged = userToLogin
            if (userToLogin.id_user_categories == 1) {
                return res.redirect('/tokens/generate')
            }
            else{
                return res.redirect('/courses/my-courses')
            }
                        
        }catch(error){
                res.send('Ha ocurrido un error')
            }
    },
    createCompany: (req,res) => {
        return res.render('users/createCompany',{title:'Crear institución'})
    },
    processCreateCompany: async(req,res) => {
        try{
            const resultValidation = validationResult(req)
            if (resultValidation.errors.length > 0){
                return res.render('users/createCompany',{
                    errors:resultValidation.mapped(),
                    oldData: req.body,
                    title:'Crear institución'
                })
            }
            //create company
            await db.Companies.create({
                company_name: req.body.company,
                enabled: 1
            })
            //get company created id
            const idCompany = await db.Companies.findOne({
                attributes:['id'],
                where:{company_name:req.body.company},
                nest:true,
                raw:true,
            })
            //create user
            await db.Users.create({
                first_name: req.body.firstName,
                last_name: req.body.lastName,
                user_email:req.body.email,
                password:bcrypt.hashSync(req.body.email,10),
                enabled:1,
                id_user_categories:2,
                id_companies:idCompany.id
            })
            //get user created id
            const idUser = await db.Users.findOne({
                attributes:['id'],
                where:{user_email:req.body.email},
                nest:true,
                raw:true,
            })

            //create token and assign to new user
            const token = await functions.tokenGenerator() //new token number
            await functions.tokenStore(token,idCompany.id,2,idUser.id) //store token in database
            
            const successMessage2 = 'Se ha creado la institución ' + req.body.company
            const companies = await db.Companies.findAll()
            
            return res.render('tokens/tokensGeneration',{
            title:'Crear token',
            companies,
            successMessage2
            })
            
        }catch(error){
            res.send(error)
        }
    },
    changePassword: (req,res) =>{
        return res.send('')
    },
    processChangePassword: async(req,res) =>{
        try{
            const resultValidation = validationResult(req)
            if (resultValidation.errors.length > 0){
                return res.render('users/changePassword',{
                    errors:resultValidation.mapped(),
                    oldData: req.body,
                    title:'Cambiar contraseña'
                })
            }
            const newPassword = bcrypt.hashSync(req.body.password,10)
            await db.Users.update(
                { password: newPassword },
                { where: { user_email: req.body.email } }
              )

            const userToLogin = await db.Users.findOne({
            where:{user_email:req.body.email},
            nest:true,
            raw:true
            })
        
            delete userToLogin.password
            req.session.userLogged = userToLogin
            if (userToLogin.id_user_categories == 1) {
                return res.redirect('/tokens/generate')
            }else{
                return res.redirect('/courses/my-courses')
            }
            
        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    profile: (req,res) => {
        return res.render('users/profile',{title:'Perfil',user:req.session.userLogged})
    },
    logout: (req,res) => {
        req.session.destroy()
        return res.redirect('/')
        
    },
    list: async(req,res) =>{
        const users = await db.Users.findAll()
        return res.status(200).json(users)
    },
    filterUser: async(req,res) =>{
        const users = await db.Users.findAll({where:{user_email:req.params.email}})
        if (users.length > 0){
            return res.status(200).json(users)
        }
        return res.status(200).json("Undefined user")
    },    
}
module.exports = usersController

