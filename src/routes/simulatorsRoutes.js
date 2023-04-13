const express = require('express')
const simulatorsController = require('../controllers/simulatorsController.js')
const router = express.Router()
const path = require('path')
const {body} = require('express-validator')
const admsMiddleware = require('../middlewares/admsMiddleware.js')

//Routes
router.get('/create',admsMiddleware,simulatorsController.createSimulator)
router.post('/create',admsMiddleware,simulatorsController.storeSimulator)
router.get('/create-exercise',admsMiddleware,simulatorsController.createExercise)
router.post('/create-exercise',admsMiddleware,simulatorsController.storeExercise)

module.exports = router

