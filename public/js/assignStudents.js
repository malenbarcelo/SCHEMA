window.addEventListener('load',()=>{

    const selectCourse = document.getElementById('selectCourse')
    const selectCommission = document.getElementById('selectCommission')
        
    selectCourse.addEventListener("change",async(e)=>{

        //get the selected option
        const selectedOption = (e.target.options[e.target.selectedIndex]).innerText

        //get all the courses
        var courses = []
        
        if(await fetch('http://localhost:3000/apis/courses')){
            courses = await (await fetch('http://localhost:3000/apis/courses')).json()
        }else{
            courses = await (await fetch('https://malenbarcelo.wnpower.host/apis/courses')).json()
        }
        
        //get course id
        const courseId = courses.filter(course =>course.course_name == selectedOption)

        //get commissions list
        var allCommissions = []
        if(await fetch('http://localhost:3000/apis/commissions')){
            allCommissions = await (await fetch('http://localhost:3000/apis/commissions')).json()
        }else{
            allCommissions = await (await fetch('https://malenbarcelo.wnpower.host/apis/commissions')).json()
        }

        var commissionsFiltered = []

        if(selectCourse.value != 'default'){
            commissionsFiltered = allCommissions.filter(commission =>commission.id_courses == courseId[0].id)
        }

        const commissionsForSelect = []

        if(commissionsFiltered){
            commissionsFiltered.forEach(commission => {
                commissionsForSelect.push({id:commission.id, commissionName:commission.commission + ': [inicio: ' + commission.start_date + ' -- fin: ' + commission.end_date + "]"})
            })
        }        

        selectCommission.innerHTML='<option value="default" selected>--Seleccione una comisión--</option>'

        for (let i = 0; i < commissionsForSelect.length; i++) {
            selectCommission.innerHTML += '<option value=' + commissionsForSelect[i].id + '>' + commissionsForSelect[i].commissionName + '</option>'
        }

        if (commissionsForSelect.length == 0 && selectCourse.value != 'default') {
            selectCourse.classList.add('isInvalid')
            const divError = document.querySelector('.divError1')
            divError.innerHTML = 'El curso seleccionado no tiene comisiones asociadas. Primero debe crear una comisión'
        }else{
            selectCourse.classList.remove('isInvalid')
            const divError = document.getElementById('divErrorSelectCourse')
            divError.innerHTML = ''
        }
        }),
    selectCommission.addEventListener("change",async(e)=>{
        selectCommission.classList.remove('isInvalid')
        const divError2 = document.getElementById('divErrorSelectCommission')
        divError2.innerHTML = ''
    })

    
})