window.addEventListener('load',async()=>{

    const teacherExercises = await (await fetch('http://localhost:3000/apis/teacher-exercises')).json()
    
    for (let i = 0; i < teacherExercises.length; i++) {
        const commissionExercise = document.getElementById('exercise' + teacherExercises[i].id)
        const commissionSteps = document.getElementById('table' + teacherExercises[i].id)
        const angleRight = document.getElementById('angleRight' + teacherExercises[i].id)
        const angleLeft = document.getElementById('angleLeft' + teacherExercises[i].id)

        commissionExercise.addEventListener("click",async(e)=>{

            for (let j = 0; j < teacherExercises.length; j++) {
                const exercise = document.getElementById('exercise' + teacherExercises[j].id)
                const steps = document.getElementById('table' + teacherExercises[j].id)
                const angleRight2 = document.getElementById('angleRight' + teacherExercises[j].id)
                const angleLeft2 = document.getElementById('angleLeft' + teacherExercises[j].id)
                if(exercise != null && exercise != commissionExercise){
                    exercise.classList.remove('exerciseSelected')
                    steps.classList.add('table2')
                    angleRight2.classList.remove('angle1Display')
                    angleLeft2.classList.add('angle1Display')
                }
            }
            
            commissionExercise.classList.toggle('exerciseSelected')
            commissionSteps.classList.toggle('table2')
            angleRight.classList.toggle('angle1Display')
            angleLeft.classList.toggle('angle1Display')
        })
        
    }
    
    

    
    

   

    

    
})