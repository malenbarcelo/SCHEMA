const express = require('express')
const path = require('path')
const publicPath =  path.resolve('./public')
const mainRoutes = require('./src/routes/mainRoutes.js')
const usersRoutes = require('./src/routes/usersRoutes.js')
const tokensRoutes = require('./src/routes/tokensRoutes.js')
const coursesRoutes = require('./src/routes/coursesRoutes.js')
const apisRoutes = require('./src/routes/apisRoutes.js')
const exercisesRoutes = require('./src/routes/exercisesRoutes.js')
const cors = require('cors')

const app = express()

//use public as statis
app.use(express.static(publicPath))

//use cors to allow any website to connet to my app
app.use(cors())

//get forms info as objects
app.use(express.urlencoded({extended:false}))
app.use(express.json())

//set views folder in src/views
app.set('views', path.join(__dirname, 'src/views')); 

//set templates extension (ejs)
app.set('view engine','ejs')

//Declare and listen port
const APP_PORT = 3000
app.listen(APP_PORT,() => console.log("Servidor corriendo en puerto " + APP_PORT))

//Routes
app.use('/',mainRoutes)
app.use('/users',usersRoutes)
app.use('/tokens',tokensRoutes)
app.use('/courses',coursesRoutes)
app.use('/exercises',exercisesRoutes)
app.use('/apis',apisRoutes)


