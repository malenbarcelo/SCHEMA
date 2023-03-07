const express = require('express')
const tokensController = require('../controllers/tokensController.js')
const router = express.Router()

router.get('/generate',tokensController.generate)
router.post('/generate', tokensController.store)
router.get('/asignation',tokensController.asignation)
router.post('/asignation',tokensController.asignationProcess)


module.exports = router
