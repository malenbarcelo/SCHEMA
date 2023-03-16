const db = require('../../database/models')

const usersController = {
    login: (req,res) => {
        return res.render('users/login',{title:'Iniciar Sesión'})
    },
    register: (req,res) => {
        return res.render('users/register',{title:'Registrarse'})
    },
    profile: (req,res) => {
        return res.render('users/profile',{title:'Perfil'})
    },
    logout: (req,res) => {
        return res.redirect('users/profile')
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
    }
}
module.exports = usersController

