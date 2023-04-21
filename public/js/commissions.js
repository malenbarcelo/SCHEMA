window.addEventListener('load',async()=>{

    const teacherExercises = await (await fetch('http://localhost:3000/apis/teacher-exercises')).json()
    const commissionId = document.getElementById('commissionId')
    const commissionStudents = await (await fetch('http://localhost:3000/apis/commissions/' + commissionId.innerText)).json()
    const exerciseStudentTable = document.getElementById('exerciseStudentTable')

    for (let i = 0; i < teacherExercises.length; i++) {
        const commissionExercise = document.getElementById('exercise' + teacherExercises[i].id)
        const commissionSteps = document.getElementById('table' + teacherExercises[i].id)
        const angleRight = document.getElementById('angleRight' + teacherExercises[i].id)
        const angleLeft = document.getElementById('angleLeft' + teacherExercises[i].id)
        const divRefs = document.getElementById('divRefs' + teacherExercises[i].id)
        
        commissionExercise.addEventListener("click",async(e)=>{

            for (let j = 0; j < teacherExercises.length; j++) {
                const exercise = document.getElementById('exercise' + teacherExercises[j].id)
                const steps = document.getElementById('table' + teacherExercises[j].id)
                const angleRight2 = document.getElementById('angleRight' + teacherExercises[j].id)
                const angleLeft2 = document.getElementById('angleLeft' + teacherExercises[j].id)
                const divRefs2 = document.getElementById('divRefs' + teacherExercises[j].id)
                if(exercise != null && exercise != commissionExercise){
                    exercise.classList.remove('exerciseSelected')
                    steps.classList.add('table2')
                    divRefs2.classList.add('div9')
                    angleRight2.classList.remove('angle1Display')
                    angleLeft2.classList.add('angle1Display')
                }
            }
            commissionExercise.classList.toggle('exerciseSelected')
            commissionSteps.classList.toggle('table2')
            angleRight.classList.toggle('angle1Display')
            angleLeft.classList.toggle('angle1Display')
            divRefs.classList.toggle('div9')
        })
    }

    for (let i = 0; i < teacherExercises.length; i++) {

        for (let j = 0; j < commissionStudents.length; j++) {
            
            const plusDetailExercise = document.getElementById('plusDetailExercise_' + teacherExercises[i].id + '_' + commissionStudents[j].id_students)
            if (plusDetailExercise) {
                const exercisesResults = await (await fetch('http://localhost:3000/apis/exercises-results/' + teacherExercises[i].id + '/' + commissionStudents[j].id_students)).json()
                plusDetailExercise.addEventListener("click",async(e)=>{
                    const divDetailExercises = document.getElementById('divDetailExercises')
                    divDetailExercises.innerHTML ='<div class="div13" id="closeStudentData">x</div>'
                    divDetailExercises.innerHTML += '<div class="div14"> <b>Alumno: </b> '+
                    commissionStudents[j].commission_user.last_name +', '+ commissionStudents[j].commission_user.first_name + '</div>'
                    divDetailExercises.innerHTML += '<div class="div15"><b>Ejercicio: </b>'+teacherExercises[i].exercise_name+'</div>'
                    divDetailExercises.innerHTML += '<div class="divFlex9"><div class="div16"><b>Fecha</b></div><div class="div16"><b>Nota</b></div><div class="div16"><b>Tiempo</b></div></div>'

                    for (let k = 0; k < exercisesResults.length; k++) {
                        const fullDate = new Date(parseInt(exercisesResults[k].date))
                        const day = fullDate.getDate()
                        const month = fullDate.getMonth()
                        const year = fullDate.getFullYear()
                        const date = day +'/' + month + '/' + year
                        
                        divDetailExercises.innerHTML += '<div class="divFlex9"><div class="div16">'+date+'</div><div class="div16">'+exercisesResults[k].grade+'</div><div class="div16">'+exercisesResults[k].duration_secs+'</div>'
                    }
                    divDetailExercises.style.display = 'block'
                    divDetailExercises.style.left = plusDetailExercise.getBoundingClientRect().x + 'px'
                    divDetailExercises.style.top = plusDetailExercise.getBoundingClientRect().y + 'px'

                    const closeStudentData = document.getElementById('closeStudentData')
                    
                    closeStudentData.addEventListener("click",async(e)=>{
                            divDetailExercises.style.display = 'none'
                    })

                })
            }
        }
    }

    


})

    
