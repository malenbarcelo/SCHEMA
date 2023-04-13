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


    }
}
module.exports = apisController

