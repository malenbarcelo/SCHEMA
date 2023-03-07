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
    asignation: async(req,res) => {
      try{
        const notAsignedAdm = await functions.notAsignedTokens(1,2)
        const notAsignedTeacher = await functions.notAsignedTokens(1,3)
        const notAsignedStudent = await functions.notAsignedTokens(1,4)
        
        return res.render('tokens/tokensAsignation',{
          title:'Asignar token',
          notAsignedAdm,
          notAsignedTeacher,
          notAsignedStudent
        })
        }catch(error){
        return res.send('Error')
      } 
    },
    asignationProcess: async(req,res) =>{
      try{
        console.log(req.body)
        return res.send('hola')
        }catch(error){
          return res.send('Error')
      }

    }
}
module.exports = tokensController

