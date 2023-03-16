const express = require('express')
const usersController = require('../controllers/usersController.js')
const router = express.Router()

router.get('/login',usersController.login)
router.get('/register',usersController.register)
router.get('/profile',usersController.profile)
router.get('/logout',usersController.logout)

module.exports = router
