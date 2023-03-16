const express = require('express')
const usersController = require('../controllers/usersController.js')
const exercisesController = require('../controllers/exercisesController.js')

const router = express.Router()

router.get('/users',usersController.list)
router.post('/exercises',exercisesController.storeResults)

module.exports = router
