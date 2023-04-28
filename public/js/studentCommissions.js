window.addEventListener('load',async()=>{

    var userExercises = []
    if(await fetch('http://localhost:3000/apis/user-exercises')){
        userExercises = await (await fetch('http://localhost:3000/apis/user-exercises')).json()
    }else{
            userExercises = await (await fetch('https://malenbarcelo.wnpower.host/apis/user-exercises')).json()
    }
    
    const divStepComments = document.getElementById('divStepComments')

    for (let i = 0; i < userExercises.length; i++) {

        var wrongAnswers = []
        if(await fetch('http://localhost:3000/apis/steps-wrong-anwers/' + userExercises[i].id)){
            wrongAnswers = await (await fetch('http://localhost:3000/apis/steps-wrong-anwers/' + userExercises[i].id)).json()
        }else{
                wrongAnswers = await (await fetch('https://malenbarcelo.wnpower.host/apis/steps-wrong-anwers/' + userExercises[i].id)).json()
        }
        
        for (let j = 0; j < wrongAnswers.length; j++) {

            const observation = document.getElementById('obs_' + wrongAnswers[j].id)
            
            if(observation != null){
                observation.addEventListener("click",async(e)=>{

                    divStepComments.innerHTML ='<div class="div13" id="closeObservation">x</div>'
                    divStepComments.innerHTML += '<div class="div14"> <b>Observaciones: </b></div>'
                    divStepComments.innerHTML += '<div class="div15">'+ wrongAnswers[j].observations +'</div>'

                    divStepComments.style.display = 'block'
                    divStepComments.style.left = observation.getBoundingClientRect().x + window.pageXOffset + 'px'
                    divStepComments.style.top = observation.getBoundingClientRect().y + window.pageYOffset + 'px'

                    const closeObservation = document.getElementById('closeObservation')
                    
                    closeObservation.addEventListener("click",async(e)=>{
                        divStepComments.style.display = 'none'
                    })
                })
            }
    }

}

})