const db = require('../../../database/models')
const sequelize = require('sequelize')

const tokensQueries = {
    companyTokensToAssign: async(idCompany) => {
        const tokensToAssign = await db.Tokens.findAll({
            where:{
                id_companies:idCompany,
                id_users:null
            },
            raw:true,
        })
        return tokensToAssign
    },
}

module.exports = tokensQueries