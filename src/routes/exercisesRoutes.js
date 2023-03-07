const express = require('express')
const exercisesController = require('../controllers/exercisesController.js')

const router = express.Router()

router.get('/list',exercisesController.exercisesList)
router.get('/new',exercisesController.addExercisesForm)
router.post('/new',exercisesController.addExercise)

module.exports = router

