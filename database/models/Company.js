module.exports = (sequelize, DataTypes) => {
    const alias = "Companies"
    const cols = {
        id:{
          type : DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement : true,
          allowNull: false
       },
       company_name:{
          type: DataTypes.STRING,
          allowNull: false,
       },
       company_email:{
        type: DataTypes.STRING,
        allowNull: false,
      }
    }
    const config = {
       tableName : 'companies',
       timestamps : false
    }

    const Company = sequelize.define(alias, cols, config)

    return Company

 }