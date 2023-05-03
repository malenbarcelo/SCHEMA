const username = "malenbar_malenbarcelo"
const password = "30941767Male-Male-Male-"
const database = "malenbar_schema_sim"

module.exports = 
{
  "development": {
    "username": username,
    "password": password,
    "database": database,
    "host": "127.0.0.1",
    "dialect": "mysql"
  },
  "test": {
    "username": "malenbar_malenbarcelo",
    "password": null,
    "database": "database_test",
    "host": "127.0.0.1",
    "dialect": "mysql"
  },
  "production": {
    "username": "malenbar_malenbarcelo",
    "password": null,
    "database": "database_production",
    "host": "127.0.0.1",
    "dialect": "mysql"
  }
}

