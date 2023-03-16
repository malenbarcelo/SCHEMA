const express = require('express')
const tokensController = require('../controllers/tokensController.js')
const router = express.Router()

router.get('/generate',tokensController.generate)
router.post('/generate', tokensController.store)
router.get('/assignation',tokensController.assignation)
router.post('/assignation',tokensController.assignationProcess)

module.exports = router
