const db = require('../../database/models')
const sequelize = require('sequelize')
const bcrypt = require('bcryptjs')

const apisController = {
    commissionsList: async(req,res) =>{
        const commissions = await db.Course_commissions.findAll({nest:true,raw:true})
        return res.status(200).json(commissions)
    },
    coursesList: async(req,res) =>{
        const courses = await db.Courses.findAll({nest:true,raw:true})
        return res.status(200).json(courses)
    },
    coursesFiltered:async(req,res) =>{
        try{
            var coursesFiltered = []

            if(req.session.userLogged.id_user_categories == 2){
                const idCompany = req.session.userLogged.id_companies
                coursesFiltered = await db.Courses.findAll({
                    attributes:[['id','id_courses']],
                    where:{id_companies:idCompany},
                    nest:true,
                    raw:true})
            }

            if(req.session.userLogged.id_user_categories == 3){
                coursesFiltered = await db.Course_commissions.findAll({
                    attributes: [[sequelize.fn('DISTINCT', sequelize.col('id_courses')), 'id_courses']],
                    where:{id_teachers:req.session.userLogged.id},
                    nest:true,
                    raw:true})
            }

            if(req.session.userLogged.id_user_categories == 4){
                commissions = await db.Course_commissions_students.findAll({
                    attributes: [[sequelize.fn('DISTINCT', sequelize.col('id_course_commissions')), 'id_course_commissions']],
                    where:{id_students:req.session.userLogged.id},
                    include:[{all:true}],
                    nest:true,
                    raw:true})

                var coursesFiltered = []

                commissions.forEach(commission => {
                    coursesFiltered.push({'id_courses':commission.commission_data.id_courses})
                });

                //remove duplicates
                coursesFiltered = coursesFiltered.filter(function({id_courses}) {
                    return !this.has(id_courses) && this.add(id_courses)
                    }, new Set)
            }

            return res.status(200).json(coursesFiltered)

        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    userLoggedExercises:async(req,res) =>{
        try{

            var courses = []
            var exercises = []

            //if user Logged is an administrator
            if(req.session.userLogged.id_user_categories == 2){
                courses = await db.Courses.findAll({
                    where:{id_companies: req.session.userLogged.id_companies},
                    raw:true
                })
            }

            //if user Logged is a teacher
            if(req.session.userLogged.id_user_categories == 3){
                courses = await db.Course_commissions.findAll({
                    attributes: [[sequelize.fn('DISTINCT', sequelize.col('id_courses')), 'id']],
                    where:{id_teachers: req.session.userLogged.id},
                    raw:true
                })
            }

            const idsCourses = courses.map(course => course.id)

            //get simulators
            const simulators = await db.Courses_simulators.findAll({
                attributes: [[sequelize.fn('DISTINCT', sequelize.col('id_simulators')), 'id_simulators']],
                where: {id_courses:idsCourses},
                raw:true
            })

            const idsSimulators = simulators.map(simulator => simulator.id_simulators)

            //get exercises
            if(req.session.userLogged.id_user_categories == 4){
                exercises = await db.Exercises_results.findAll({
                    attributes: [[sequelize.fn('DISTINCT', sequelize.col('id_exercises')), 'id']],
                    where:{id_users: req.session.userLogged.id}
                })
            }else{
                exercises = await db.Exercises.findAll({
                    attributes:['id'],
                    where:{id_simulators: idsSimulators},
                    raw:true
                })
            }

            return res.status(200).json(exercises)

        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    notAssignedTokens: async(req,res) =>{
        const notAssignedTokens = await db.Tokens.findAll({
            where:{id_users:null},
            nest:true
        })
        return res.status(200).json(notAssignedTokens)
    },
    companies: async(req,res) =>{
        const companies = await db.Companies.findAll({
            nest:true
        })
        return res.status(200).json(companies)
    },
    studentsExercises: async(req,res) =>{

        const idCommission = req.params.idCommission

        const studentsExercises = await db.Course_commissions_students.findAll({
            where:{id_course_commissions: idCommission},
            raw:true,
            nest:true,  
            include:[{all:true}]
        })

        return res.status(200).json(studentsExercises)
    },
    exercisesResults: async(req,res) =>{

        const idExercise = req.params.idExercise
        const idStudent = req.params.idStudent

        const exercisesResults = await db.Exercises_results.findAll({
            where:{id_exercises: idExercise,id_users:idStudent},
            order:[['date','DESC']],
            raw:true,
            nest:true,  
            include:[{all:true}]
        })

        exercisesResults.map(exerciseResult => exerciseResult.stepsResults = [])

        //All exercises steps
        const exercisesSteps = await db.Exercises_answers.findAll({
            attributes: [[sequelize.fn('DISTINCT', sequelize.col('description')), 'description']],
            where:{id_exercises: idExercise},
            order:[['description','ASC']],
            raw:true
        })

        //Complete student exercises steps
        for (let i = 0; i < exercisesResults.length; i++) {
            for (let j = 0; j < exercisesSteps.length; j++) {
                const stepResult = await db.Exercises_answers.findOne({
                    where:{id_exercises_results:exercisesResults[i].id,description:exercisesSteps[j].description},
                    raw:true
                })

                const arrayDescription = exercisesSteps[j].description.split("_")
                const code = arrayDescription[0]
                const description = arrayDescription[1]

                if(stepResult){
                    exercisesResults[i].stepsResults.push({'code':code,'description':description,'log_time':stepResult.log_time,'type':stepResult.type,'observations':stepResult.observations})

                }else{
                    exercisesResults[i].stepsResults.push({'code':code,'description':description,'log_time':'-','type':'-','observations':'-'})
                }
            }
        }
        return res.status(200).json(exercisesResults)
    },
    
    exerciseAnswers: async(req,res) =>{

        const idExercise = req.params.idExercise
        const idStudent = req.params.idStudent
        
        const exercisesAnswers = await db.Exercises_answers.findAll({
            where:{id_exercises: idExercise, id_users: idStudent},
            raw:true,
        })

        return res.status(200).json(exercisesAnswers)
    },
    userLoggedWrongAnswers: async(req,res) =>{

        const idStudent =  req.session.userLogged.id
        const idExercise =  req.params.idExercise
        
        const wrongAnswers = await db.Exercises_answers.findAll({
            where:{id_users: idStudent,id_exercises:idExercise, type:'Error'},
            raw:true,
        })

        return res.status(200).json(wrongAnswers)
    },
    exerciseSteps: async(req,res) =>{

        const idExercise = req.params.idExercise
        
        //All exercises steps
        let exerciseSteps = await db.Exercises_answers.findAll({
            attributes: [[sequelize.fn('DISTINCT', sequelize.col('description')), 'description']],
            where:{id_exercises: idExercise},
            order:[['description','ASC']],
            raw:true
        })

        exerciseSteps.forEach(exerciseStep => {
            const arrayDescription = exerciseStep.description.split("_")
            
            exerciseStep.code = arrayDescription[0]
            exerciseStep.description = arrayDescription[1]
            
        });


        return res.status(200).json(exerciseSteps)
    },
    storeResults: async(req,res) =>{
        try{
            const keys = Object.keys(req.body.answers)

            //find user token
            const token = await db.Tokens.findOne({
                attributes:['token'],
                where:{id_users:req.body.id_users},
                raw:true
            })

            if(bcrypt.compareSync(token.token,req.body.token_hashed)){
                //store in exercises_results
                await db.Exercises_results.create({
                    id_exercises: req.body.id_exercises,
                    id_users: req.body.id_users,
                    id_simulators:req.body.id_simulators,
                    date: req.body.date,
                    grade: req.body.grade,
                    duration_secs: req.body.duration_secs
                })

                //get id of exercises_results
                const idExercisesResults = await db.Exercises_results.findOne({
                    where:{
                        id_exercises: req.body.id_exercises,
                        id_users: req.body.id_users,
                        id_simulators: req.body.id_simulators,
                        date: req.body.date,
                        grade: req.body.grade,
                        duration_secs: req.body.duration_secs
                    },
                    attributes:[[sequelize.fn('max', sequelize.col('id')),'max']],
                    raw:true,
                    nest:true
                    })

                    //store answers
                for (let i = 0; i < keys.length; i++) {
                    await db.Exercises_answers.create({
                        id_exercises_results: idExercisesResults.max,
                        id_exercises:req.body.id_exercises,
                        id_users:req.body.id_users,
                        id_simulators:req.body.id_simulators,
                        description: req.body.answers[i].description,
                        log_time: req.body.answers[i].log_time,
                        type: req.body.answers[i].type,
                        observations: req.body.answers[i].observations
                    })
                }
                const postResult = {
                    'status':'Datos guardados correctamente'
                }
                return res.status(200).json(postResult)
            }else{
                const postResult = {
                    'status':'Error de validación'
                }
                return res.status(200).json(postResult)
            }

        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    loginValidation: async(req,res) =>{
        try{            
            const email = req.params.email
            
            //find user
            const userPassword = await db.Users.findOne({
                attributes:['id','password'],
                where:{user_email:email},
                raw:true,
            })
            //find token
            const userToken = await db.Tokens.findOne({
                attributes:['token'],
                where:{id_users:userPassword.id},
                raw:true,
            })

            const user = {
                'passwordHashed': userPassword.password,
                'tokenHashed':userToken.token
            }

            //newPassword = bcrypt.hashSync(req.body.password,10)
            //console.log(bcrypt.compareSync(password, user.password))
            
            return res.status(200).json(user)
        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    companyCourses:async(req,res) =>{
        try{
            idCompany = req.params.idCompany

            const companyCourses = await db.Courses.findAll({
                where:{id_companies:idCompany},
                raw:true
            })
            return res.status(200).json(companyCourses)

        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    companyTeachers:async(req,res) =>{
        try{
            idCompany = req.params.idCompany

            const companyTeachers = await db.Users.findAll({
                where:{id_companies:idCompany, id_user_categories:3},
                raw:true
            })
            return res.status(200).json(companyTeachers)

        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    
}
module.exports = apisController

