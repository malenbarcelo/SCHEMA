const express = require('express')
const usersController = require('../controllers/usersController.js')
const exercisesController = require('../controllers/exercisesController.js')

const router = express.Router()

router.get('/users',usersController.list)
router.get('/users/:email',usersController.filterUser)
router.get('/exercises',exercisesController.list)
router.post('/exercises',exercisesController.store)

module.exports = router
