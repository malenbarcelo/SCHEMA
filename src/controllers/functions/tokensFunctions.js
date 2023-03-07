const db = require('../../../database/models')
const bcrypt = require('bcryptjs')

const tokensFunctions = {
    tokenGenerator: async() => {
        try{
            const lastTokenId = await db.Tokens.max('id')
            const newToken = "token" + lastTokenId + 1
            token = bcrypt.hashSync(newToken,10)
            return token
        }catch(error){
            res.send("Error")
        }
    },
    tokenStore: async(idCompany,idUser) => {
        try{
            await db.Tokens.create({
                token: token,
                id_companies: idCompany,
                id_user_categories: idUser,
                id_users:null
              })
        }catch(error){
            res.send("Error")
        }
    },
    notAsignedTokens:async(idCompany,idUserCategory) => {
        try{
            const notAsignedTokens = await db.Tokens.findAll({
                where:{
                    id_companies:idCompany,
                    id_user_categories:idUserCategory,
                    id_users:null
                }
            })
            return notAsignedTokens
        }catch(error){
            res.send("Error")
        }
    }
}

module.exports = tokensFunctions