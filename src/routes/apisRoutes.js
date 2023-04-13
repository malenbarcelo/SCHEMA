const express = require('express')
const usersController = require('../controllers/usersController.js')
const exercisesController = require('../controllers/exercisesController.js')
const apisController = require('../controllers/apisController.js')

const router = express.Router()

router.get('/users',usersController.list)
router.get('/commissions',apisController.commissionsList)
router.get('/courses',apisController.coursesList)
router.get('/courses-filtered',apisController.coursesFiltered)
router.post('/exercises',exercisesController.storeResults)
router.get('/teacher-exercises',apisController.teacherExercises)

module.exports = router
