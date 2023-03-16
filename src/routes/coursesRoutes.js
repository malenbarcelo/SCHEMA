const express = require('express')
const coursesController = require('../controllers/coursesController.js')
const router = express.Router()

router.get('/create-course',coursesController.createCourse)
router.post('/create-course',coursesController.storeCourse)
router.get('/create-commission',coursesController.createCommission)
router.post('/create-commission',coursesController.storeCommission)
router.get('/students-assignation',coursesController.assignStudents)
router.post('/students-assignation',coursesController.storeAssignedStudents)






module.exports = router
