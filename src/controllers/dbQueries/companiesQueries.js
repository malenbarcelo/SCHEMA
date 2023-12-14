const db = require('../../../database/models')
const sequelize = require('sequelize')

const companiesQueries = {
    findCompanies: async() => {
        const companies = await db.Companies.findAll({
            order:['company_name'],
            raw:true,
        })
        return companies
    },
}

module.exports = companiesQueries