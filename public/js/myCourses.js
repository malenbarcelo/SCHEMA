window.addEventListener('load',async()=>{

    //get user logged courses
    var idCourses = []
    if(await fetch('http://localhost:3000/apis/courses-filtered')){
        idCourses = await (await fetch('http://localhost:3000/apis/courses-filtered')).json()
    }else{
            idCourses = await (await fetch('https://malenbarcelo.wnpower.host/apis/courses-filtered')).json()
    }

    idCourses.forEach(idCourse => {
        
        document.getElementById('plusMyCourses' + idCourse.id_courses).addEventListener("click",(e)=>{
            document.getElementById('commissionsCourse' + idCourse.id_courses).style.display = 'block'
            document.getElementById('plusMyCourses' + idCourse.id_courses).style.display = 'none'
            document.getElementById('minusMyCourses' + idCourse.id_courses).style.display = 'block'
        })
        document.getElementById('minusMyCourses' + idCourse.id_courses).addEventListener("click",(e)=>{
            document.getElementById('commissionsCourse' + idCourse.id_courses).style.display = 'none'
            document.getElementById('plusMyCourses' + idCourse.id_courses).style.display = 'block'
            document.getElementById('minusMyCourses' + idCourse.id_courses).style.display = 'none'
        })
    })
})
