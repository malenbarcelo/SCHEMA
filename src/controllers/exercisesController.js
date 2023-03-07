const db = require('../../database/models')
const fetch = (...args) => import('node-fetch').then(({ default: fetch }) => fetch(...args))

const exercisesController = {
    list: async(req,res) =>{
        const exercises = await db.User_categories.findAll()
        return res.status(200).json(exercises)
    },
    store: async(req,res) =>{
        await db.User_categories.create(req.body)
        return res.status(200).json(req.body)
    },
    exercisesList: async(req,res) =>{
        const exercises = await fetch('http://localhost:3000/apis/exercises')
        const exercisesJson = await (exercises.json())
        return res.json(exercisesJson)
    },
    addExercisesForm: (req,res) =>{
        return res.render('exercises/newExercise',{title:'Nuevo ejercicio'})
    },
    addExercise: async(req,res) =>{
        const body = req.body
        console.log(req.body)
        const response = await fetch('http://localhost:3000/apis/exercises',{
            method:'post',
            body: JSON.stringify(body),
            headers: {'Content-Type': 'application/json'}
        })
        const data = await response.json();

      return res.redirect('/exercises/new')
    }
}
module.exports = exercisesController

