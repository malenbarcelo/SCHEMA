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
    notAssignedTokens:async(idCompany,idUserCategory) => {
        try{
            if(idCompany != -1){
                const products = await db.Products.findAll({include: [{association:'token_company'}],where:{product_category_id:productCategoryId.dataValues.product_category_id}})
                const notAsignedTokens = await db.Tokens.findAll({
                    include:[{
                        association:'token_company'
                    }],
                    where:{
                        id_companies:idCompany,
                        id_user_categories:idUserCategory,
                        id_users:null
                    }
                })
            return notAssignedTokens
            }
            const notAssignedTokens = await db.Tokens.findAll({
                include:[{
                    association:'token_company'
                }],
                where:{
                    id_user_categories:idUserCategory,
                    id_users:null
                }
            })
            return notAssignedTokens
            }catch(error){
                return res.send('Error')            
        }
    }
}

module.exports = tokensFunctions