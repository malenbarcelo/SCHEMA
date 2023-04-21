const express = require('express')
const usersController = require('../controllers/usersController.js')
const exercisesController = require('../controllers/exercisesController.js')
const apisController = require('../controllers/apisController.js')
const apisMiddleware = require('../middlewares/apisMiddleware.js')

const router = express.Router()

router.get('/users',usersController.list)
router.get('/commissions',apisController.commissionsList)
router.get('/courses',apisController.coursesList)
router.get('/courses-filtered',apisController.coursesFiltered)
router.post('/exercises',apisController.storeResults)
router.get('/teacher-exercises',apisController.teacherExercises)
router.get('/not-assigned-tokens',apisController.notAssignedTokens)
router.get('/companies',apisController.companies)
router.get('/commissions/:idCommission',apisController.studentsExercises)
router.get('/exercises-results/:idExercise/:idStudent',apisMiddleware,apisController.exercisesResults)
router.get('/exercises-answers/:idExerciseResult',apisController.exercisesAnswers)
router.get('/exercises-steps/:idExercise',apisController.exercisesSteps)



module.exports = router
