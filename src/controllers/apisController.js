const db = require('../../database/models')
const sequelize = require('sequelize');

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

            return res.status(200).json(coursesFiltered)

        }catch(error){
            return res.send('Ha ocurrido un error')
        }
    },
    teacherExercises:async(req,res) =>{
        try{
            const teacherCourses = await db.Course_commissions.findAll({
                attributes: [[sequelize.fn('DISTINCT', sequelize.col('id_courses')), 'id_courses']],
                where:{id_teachers:req.session.userLogged.id},
                nest:true,
                raw:true})

            //get an array of courses ids
            const idCourses = []

            teacherCourses.forEach(teacherCourse => {
                idCourses.push(teacherCourse.id_courses)
            });

            //get simulators
            const simulators = await db.Courses_simulators.findAll({
                where:{id_courses:idCourses},
                nest:true,
                raw:true
            })

            //get an array of simulators ids
            const idSimulators = []

            simulators.forEach(simulator => {
                idSimulators.push(simulator.id_simulators)
            });

            console.log(idSimulators)

            //get exercises
            const teacherExercises = await db.Exercises.findAll({
                where:{id_simulators:idSimulators},
                nest:true,
                raw:true
            })

            return res.status(200).json(teacherExercises)

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

        return res.status(200).json(exercisesResults)
    },
    
    exercisesAnswers: async(req,res) =>{

        const idExerciseResult = req.params.idExerciseResult
        
        const exercisesAnswers = await db.Exercises_answers.findAll({
            where:{id_exercises_results: idExerciseResult},
            order:[['description','ASC']],
            raw:true,
            nest:true,
            include:[{all:true}]
        })

        return res.status(200).json(exercisesAnswers)
    },
    exercisesSteps: async(req,res) =>{

        const idExercise = req.params.idExercise
        
        const exerciseSteps = await db.Exercises_answers.findAll({
            where:{id_exercises_results: idExerciseResult},
            order:[['description','ASC']],
            raw:true,
            nest:true,
            include:[{all:true}]
        })

        return res.status(200).json(exercisesanswers)
    },
    storeResults: async(req,res) =>{
        try{
            const keys = Object.keys(req.body.answers)

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
            return res.status(200).json(req.body)
        }catch(error){
            return res.send('Ha ocurrido un error')
        }
}
    
}
module.exports = apisController

