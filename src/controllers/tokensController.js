const db = require('../../database/models')
const functions = require('./functions/tokensFunctions')

//Controllers
const tokensController = {
    generate: async(req,res) => {
      try{
        const companies = await db.Companies.findAll()
        return res.render('tokens/tokensGeneration',{title:'Crear token',companies})
      }catch(error){
        return res.send('Error')
      }
    },
    store: async(req,res) => {
      try{
        //define company id
        const company = await db.Companies.findOne({
          attributes:['id'],
          where:{company_name:req.body.company}
        })
        const idCompany = company.dataValues.id

        //generate tokens for company administrators (if applies)
        // id for company administrators is 2
        const companyAdmTokensQty = req.body.company_administrator_tokens
        if(companyAdmTokensQty > 0){
          for (let i = 0; i < companyAdmTokensQty; i++) {
            token = await functions.tokenGenerator() //new token number
            await functions.tokenStore(idCompany,2) //store token in database
          }
        }
        //generate tokens for teachers (if applies)
        // id for teachers is 3
        const teacherTokensQty = req.body.teacher_tokens
        if(teacherTokensQty > 0){
          for (let i = 0; i < teacherTokensQty; i++) {
            token = await functions.tokenGenerator() //new token number
            await functions.tokenStore(idCompany,3) //store token in database
          }
        }
        //generate tokens for srudents (if applies)
        // id for students is 4
        const studentTokensQty = req.body.student_tokens
        if(studentTokensQty > 0){
          for (let i = 0; i < studentTokensQty; i++) {
            token = await functions.tokenGenerator() //new token number
            await functions.tokenStore(idCompany,4) //store token in database
          }
        }

        return res.redirect("/tokens/generate")

    }catch(error){
        res.send('Error')
      }
    },
    assignation: async(req,res) => {
      try{
        const companies = await db.Companies.findAll()
        const notAssignedAdm = await functions.notAssignedTokens(-1,2)
        const notAssignedTeacher = await functions.notAssignedTokens(-1,3)
        const notAssignedStudent = await functions.notAssignedTokens(-1,4)

        return res.render('tokens/tokensAssignation',{
          title:'Asignar token',
          notAssignedAdm,
          notAssignedTeacher,
          notAssignedStudent,
          companies
        })
        }catch(error){
        return res.send('Error')
      }
    },
    assignationProcess: async(req,res) =>{
      try{
        const keys = Object.keys(req.body)
        for (let i = 0; i < keys.length; i+=6) {
          if(req.body[keys[i+3]]){
            let categoryId
            switch (keys[i].substring(0,3)) {
              case 'adm':
                categoryId = 2;
                break;
              case 'tea':
                categoryId = 3;
                break;
              case 'stu':
                categoryId = 4;
                break;
            }
            let idToken = req.body[keys[i]]
            let idCompany = req.body[keys[i+1]]
            let firstName = req.body[keys[i+2]]
            let lastName = req.body[keys[i+3]]
            let email = req.body[keys[i+4]]

            //Create user
            await db.Users.create({
                  first_name: firstName,
                  last_name: lastName,
                  user_email: email,
                  password: email,
                  id_user_categories: categoryId,
                  id_companies: idCompany
                })
            //get new user id
            const newUser = await db.Users.findOne({where:{user_email:email}})
            const idNewUser = newUser.id

            //update tokens set user_id
            await db.Tokens.update(
              {id_users: idNewUser},
              {where: {id: idToken}
            });
          }
        }

        return res.redirect('/tokens/assignation')

      }catch(error){
          return res.send('Error')
      }

    }
}
module.exports = tokensController

