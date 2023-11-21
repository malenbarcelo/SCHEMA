const express = require('express')
const usersController = require('../controllers/usersController.js')
const apisController = require('../controllers/apisController.js')
const admMiddleware = require('../middlewares/admMiddleware.js')
const authMiddleware = require('../middlewares/authMiddleware.js')
const admsMiddleware = require('../middlewares/admsMiddleware.js')
const teacherMiddleware = require('../middlewares/teacherMiddleware.js')

const router = express.Router()

router.get('/users/:email',apisController.loginValidation)
router.get('/commissions',admsMiddleware,apisController.commissionsList)
router.get('/courses',admsMiddleware,apisController.coursesList)
router.get('/courses-filtered',authMiddleware,apisController.coursesFiltered)
router.post('/exercises',apisController.storeResults)
router.get('/user-exercises',authMiddleware,apisController.userLoggedExercises)
router.get('/not-assigned-tokens',admsMiddleware,apisController.notAssignedTokens)
router.get('/companies',admsMiddleware,apisController.companies)
router.get('/commissions/:idCommission',teacherMiddleware,apisController.studentsExercises)
router.get('/commission-data/:idCommission',teacherMiddleware,apisController.commissionData)
//router.get('/commission-data/:idCommission',apisController.commissionData)
router.get('/exercise-steps/:idExercise',teacherMiddleware,apisController.exerciseSteps)
router.get('/exercises-results/:idExercise/:idStudent',teacherMiddleware,apisController.exercisesResults)
//router.get('/exercises-results/:idExercise/:idStudent',apisController.exercisesResults)
router.get('/exercise-answers/:idExercise/:idStudent',teacherMiddleware,apisController.exerciseAnswers)
router.get('/steps-wrong-anwers/:idExercise',authMiddleware,apisController.userLoggedWrongAnswers)
router.get('/company-courses/:idCompany',admsMiddleware,apisController.companyCourses)
router.get('/company-teachers/:idCompany',admsMiddleware,apisController.companyTeachers)
router.get('/company-students/:idCompany',admsMiddleware,apisController.companyStudents)




module.exports = router
