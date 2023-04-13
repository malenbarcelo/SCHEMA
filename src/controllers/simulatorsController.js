const db = require('../../database/models')
const {validationResult} = require('express-validator')

//Controllers
const tokensController = {
    createSimulator: async(req,res) => {
      try{
        return res.render('simulators/createSimulator',{title:'Crear simulador'})
      }catch(error){
        return res.send('Error')
      }
    },
    storeSimulator: async(req,res) => {
      try{
        await db.Simulators.create({
          simulator_name: req.body.simulatorName,
          description: req.body.simulatorDescription,
          enabled: 1,
        }) 
        return res.render('simulators/createSimulator',{title:'Crear simulador'})
      }catch(error){
        return res.send('Error')
      }
    },
    createExercise: async(req,res) => {
      try{
        const simulators = await db.Simulators.findAll({
          attributes:['id','simulator_name'],
          nest:true,
          raw:true
        })
        return res.render('simulators/createExercise',{title:'Crear ejercicio',simulators})
      }catch(error){
        return res.send('Error')
      }
    },
    storeExercise: async(req,res) => {
      try{
        await db.Exercises.create({
          exercise_name: req.body.exerciseName,
          exercise_description: req.body.exerciseDescription,
          id_simulators:req.body.selectSimulator,
          enabled: 1,
        })
        return res.send('ok')
      }catch(error){
        return res.send(error)
      }
    }     
}
module.exports = tokensController

