const {body} = require('express-validator')
const path = require('path')

const tokensFormsValidations = {
    generateTokensFormValidations: [
        body('company')
            .custom(async(value,{ req }) => {
                if(req.body.company == 'default'){
                    throw new Error('Seleccione una compañía')
                }
                return true
            })
        ]
    }

module.exports = tokensFormsValidations