const db = require('../../database/models')
const sequelize = require('sequelize');

const coursesController = {
    createCourse: async(req,res) => {
        try{
            const companies = await db.Companies.findAll()
            const simulators = await db.Simulators.findAll()

            return res.render('courses/createCourse',{title:'Crear curso',simulators,companies})

        }catch(error){
            return res.send("Error")
        }
    },
    storeCourse: async(req,res) => {
        try{
            const keys = Object.keys(req.body)
            const notSimulatorKey = ['selectCompany','inputCourseName','inputCourseDescription']

            //Get company
            const company = await db.Companies.findOne({
            attributes:['id'],
            where:{company_name:req.body.selectCompany}
            })

            //Get course number
            const courseNumber = await db.Courses.findOne({
                where:{id_companies:company.dataValues.id},
                attributes:[[sequelize.fn('max', sequelize.col('course_number')),'max']],
                raw:true,
                nest:true
                })

            //Create course
            await db.Courses.create({
                course_name: req.body.inputCourseName,
                course_description: req.body.inputCourseDescription,
                id_companies: company.dataValues.id,
                course_number:courseNumber.max + 1,
                enabled:1
            })

            //Associate simulators to course
            const idCourse = await db.Courses.findOne({
                attributes:['id'],
                where:{course_name:req.body.inputCourseName}
                }) //get course id

            for (let i = 0; i < keys.length; i++) {
                if (!notSimulatorKey.includes(keys[i])){
                    await db.Courses_simulators.create({
                        id_courses: idCourse.dataValues.id,
                        id_simulators: parseInt(keys[i])
                    })
                }
            }
            return res.redirect('/courses/create-course')

        }catch(error){
            return res.send("Error")
        }
    },
    createCommission: async(req,res) => {
        try{
            const companies = await db.Companies.findAll()
            const courses = await db.Courses.findAll()
            const teachers = await db.Users.findAll({where:{id_user_categories:3}})
            return res.render('courses/createCommission',{title:'Crear comisión',companies,courses,teachers})

        }catch(error){
            return res.send("Error")
        }
    },
    storeCommission: async(req,res) => {
        try{
            //get course data
            const courseData = await db.Courses.findOne({
                attributes:['id','course_number'],
                where:{course_name:req.body.selectCourse},
                nest:true,
                raw:true
                })


            //get commission
            const courseNumber = courseData.course_number.toString()

            let commissionQty = await db.Course_commissions.findOne({
                where:{id_courses:courseData.id},
                attributes:[[sequelize.fn('count', sequelize.col('id_courses')),'count']],
                raw:true,
                nest:true
                })
            
            commissionQty = (commissionQty.count + 1).toString()

            const commission = '#' + courseNumber.padStart(3,'0') + commissionQty.padStart(4,'0')
            
            //create commission
            await db.Course_commissions.create({
                id_courses: courseData.id,
                start_date: req.body.startDateCommission,
                end_date: req.body.endDateCommission,
                commission: commission,
                id_teachers:parseInt(req.body.selectTeacher),
                enabled:1
            })

            return res.send(req.body)

        }catch(error){
            return res.send("Error")
        }
    },
    assignStudents: async(req,res) => {
        try{
            const students = await db.Users.findAll({where:{id_user_categories:4}})
            const companies = await db.Companies.findAll()
            const courses = await db.Courses.findAll()
            const commissions= await db.Course_commissions.findAll()
            
            return res.render('courses/assignStudents',{
                title:'Asignar alumnos',
                students,
                companies,
                courses,
                commissions})

        }catch(error){
            return res.send("Error")
        }
    },
    storeAssignedStudents: async(req,res) => {
        try{
            return res.send(req.body)
        }catch(error){
            return res.send("Error")
        }
    },
}

module.exports = coursesController

