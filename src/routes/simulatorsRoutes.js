const express = require('express')
const simulatorsController = require('../controllers/simulatorsController.js')
const router = express.Router()
const path = require('path')
const {body} = require('express-validator')
const admsMiddleware = require('../middlewares/admsMiddleware.js')
const simulatorsFormsValidations = require('../validations/simulatorsFormsValidations.js')

//Routes
router.get('/create',admsMiddleware,simulatorsController.createSimulator)
router.post('/create',admsMiddleware,simulatorsFormsValidations.createSimulatorForm,simulatorsController.storeSimulator)
router.get('/create-exercise',admsMiddleware,simulatorsController.createExercise)
router.post('/create-exercise',admsMiddleware,simulatorsFormsValidations.createExerciseForm,simulatorsController.storeExercise)

module.exports = router

