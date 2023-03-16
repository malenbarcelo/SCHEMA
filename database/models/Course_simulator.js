module.exports = (sequelize, DataTypes) => {

   const alias = "Courses_simulators"
   const cols = {
   id:{
      type : DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement : true,
      allowNull: false
   },
   id_courses:{
      type: DataTypes.INTEGER,
      allowNull: false,
   },
   id_simulators:{
      type: DataTypes.INTEGER,
      allowNull: false,
   }
}
   
   const config = {
   tableName : 'courses_simulators',
   timestamps : false
   }
   const Course_simulator = sequelize.define(alias, cols, config)

   return Course_simulator
}