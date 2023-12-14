const db = require('../../../database/models')
const sequelize = require('sequelize')

const usersQueries = {
    companyUsers: async(idCompany) => {
        const companyUsers = await db.Users.findAll({
            where:{id_companies:idCompany},
            raw:true,
        })
        return companyUsers
    },
}

module.exports = usersQueries