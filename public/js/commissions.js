import { dominio } from "./dominio.js"

window.addEventListener('load',async()=>{

    const commissionId = document.getElementById('commissionId')
    const divDetailExercises = document.getElementById('divDetailExercises')
    const divStepComments = document.getElementById('divStepComments')
    const userExercises = await (await fetch(dominio + '/apis/user-exercises')).json()
    const commissionStudents = await (await fetch(dominio + '/apis/commissions/' + commissionId.innerText)).json()
    
    for (let i = 0; i < userExercises.length; i++) {
        const commissionExercise = document.getElementById('exercise' + userExercises[i].id)
        const commissionSteps = document.getElementById('table' + userExercises[i].id)
        const angleRight = document.getElementById('angleRight' + userExercises[i].id)
        const angleLeft = document.getElementById('angleLeft' + userExercises[i].id)
        const divRefs = document.getElementById('divRefs' + userExercises[i].id)
        
        commissionExercise.addEventListener("click",async(e)=>{

            divDetailExercises.style.display = 'none'
            divStepComments.style.display = 'none'
            
            for (let j = 0; j < userExercises.length; j++) {
                const exercise = document.getElementById('exercise' + userExercises[j].id)
                const steps = document.getElementById('table' + userExercises[j].id)
                const angleRight2 = document.getElementById('angleRight' + userExercises[j].id)
                const angleLeft2 = document.getElementById('angleLeft' + userExercises[j].id)
                const divRefs2 = document.getElementById('divRefs' + userExercises[j].id)
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

    for (let i = 0; i < userExercises.length; i++) {
        for (let j = 0; j < commissionStudents.length; j++) {

            //event listeners to steps comments
            const studentAnswers = await (await fetch(dominio + '/apis/exercise-answers/' + userExercises[i].id + '/' + commissionStudents[j].id_students)).json()
            
            for (let n = 0; n < studentAnswers.length; n++) {
                const stepComment = document.getElementById('comment_' + studentAnswers[n].id)
                if(stepComment != null){
                    stepComment.addEventListener("click",async(e)=>{

                        divDetailExercises.style.display = 'none'
            
                        divStepComments.innerHTML ='<div class="div13" id="closeObservation">x</div>'
                        divStepComments.innerHTML += '<div class="div14"> <b>Observaciones: </b></div>'
                        divStepComments.innerHTML += '<div class="div15">'+ studentAnswers[n].observations +'</div>'

                        divStepComments.style.display = 'block'
                        divStepComments.style.left = stepComment.getBoundingClientRect().x + window.pageXOffset + 'px'
                        divStepComments.style.top = stepComment.getBoundingClientRect().y + window.pageYOffset + 'px'

                        const closeObservation = document.getElementById('closeObservation')
                        
                        closeObservation.addEventListener("click",async(e)=>{
                            divStepComments.style.display = 'none'
                        })
                    })
                }
            }
            
            const plusDetailExercise = document.getElementById('plusDetailExercise_' + userExercises[i].id + '_' + commissionStudents[j].id_students)
            if (plusDetailExercise) {
                
                const exercisesResults = await (await fetch(dominio + '/apis/exercises-results/' + 
                userExercises[i].id + '/' + commissionStudents[j].id_students)).json()
               
                const exerciseSteps = await (await fetch(dominio + '/apis/exercise-steps/' + userExercises[i].id)).json()
                
                plusDetailExercise.addEventListener("click",async(e)=>{

                    divStepComments.style.display = 'none'
                    
                    divDetailExercises.innerHTML ='<div class="div13" id="closeStudentData">x</div>'
                    divDetailExercises.innerHTML += '<div class="div14"> <b>Alumno: </b> '+
                    commissionStudents[j].commission_user.last_name +', '+ commissionStudents[j].commission_user.first_name + '</div>'
                    divDetailExercises.innerHTML += '<div class="div15"><b>Ejercicio: </b>'+userExercises[i].exercise_name+'</div>'

                    var steps =''
                    for (let k = 0; k < exerciseSteps.length; k++) {
                        steps += '<div class="div17"><b>' + exerciseSteps[k].code + '</b></div>'
                    }

                    divDetailExercises.innerHTML += '<div class="divFlex9"><div class="div16"><b>Fecha</b></div><div class="div16"><b>Nota</b></div><div class="div16"><b>Tiempo</b></div>' + steps + '</div>'
                    
                    divDetailExercises.innerHTML += '</div>'                    

                    for (let k = 0; k < exercisesResults.length; k++) {
                        const fullDate = new Date(parseInt(exercisesResults[k].date))
                        const day = fullDate.getDate()
                        const month = fullDate.getMonth()
                        const year = fullDate.getFullYear()
                        const date = day +'/' + month + '/' + year

                        var stepsResults = []

                        for (let l = 0; l < exercisesResults[k].stepsResults.length; l++) {

                            var result = ''
                            if (exercisesResults[k].stepsResults[l].type == 'Paso realizado correctamente') {
                                result = '<i class="fa-solid fa-check stepPassed"></i>'
                            }
                            if (exercisesResults[k].stepsResults[l].type == 'Error') {
                                result = '<i class="fa-solid fa-xmark stepNotPassed"></i>'
                            }
                            if (exercisesResults[k].stepsResults[l].type == '-') {
                                result = '<i class="fa-solid fa-minus stepNotDone"></i>'
                            }
                            stepsResults += '<div class="div17">' + result + '</div>'
                        }
                        
                        divDetailExercises.innerHTML += '<div class="divFlex9"><div class="div16">'+date+'</div><div class="div16">'+exercisesResults[k].grade+'</div><div class="div16">'+exercisesResults[k].duration_secs + '</div>' + stepsResults + '</div>'
                    }

                    //steps description div
                    var steps = ''
                    exerciseSteps.forEach(exerciseStep => {
                        steps +='<div class="div19">' + exerciseStep.code + ': ' + exerciseStep.description + '</div>'
                    });

                    divDetailExercises.innerHTML +='<div class="div18"><b>Pasos del ejercicio</b>' + steps + '</div>'
                    
                    divDetailExercises.style.display = 'block'
                    divDetailExercises.style.left = plusDetailExercise.getBoundingClientRect().x + window.pageXOffset + 'px'
                    divDetailExercises.style.top = plusDetailExercise.getBoundingClientRect().y + window.pageYOffset + 'px'

                    const closeStudentData = document.getElementById('closeStudentData')
                    
                    closeStudentData.addEventListener("click",async(e)=>{
                            divDetailExercises.style.display = 'none'
                    })
                })
            }
        }
    }


})

    
