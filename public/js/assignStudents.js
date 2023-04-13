window.addEventListener('load',()=>{

    const selectCourse = document.getElementById('selectCourse')
    const selectCommission = document.getElementById('selectCommission')
        
    selectCourse.addEventListener("change",async(e)=>{

        //get the selected option
        const selectedOption = (e.target.options[e.target.selectedIndex]).innerText

        //get all the courses
        const courses = await (await fetch('http://localhost:3000/apis/courses')).json()

        //get course id
        const courseId = courses.filter(course =>course.course_name == selectedOption)

        //get commissions list
        const allCommissions = await (await fetch('http://localhost:3000/apis/commissions')).json()
        const commissionsFiltered = allCommissions.filter(commission =>commission.id_courses == courseId[0].id)

        const commissionsForSelect = []

        commissionsFiltered.forEach(commission => {
            commissionsForSelect.push({id:commission.id, commissionName:commission.commission + ': [inicio: ' + commission.start_date + ' -- fin: ' + commission.end_date + "]"})
        })

        selectCommission.innerHTML='<option value="default" selected>--Seleccione una comisión--</option>'

        for (let i = 0; i < commissionsForSelect.length; i++) {
            selectCommission.innerHTML += '<option value=' + commissionsForSelect[i].id + '>' + commissionsForSelect[i].commissionName + '</option>'
        }

        if (commissionsForSelect.length == 0) {
            selectCourse.classList.add('isInvalid')
            const divError = document.querySelector('.divError')
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