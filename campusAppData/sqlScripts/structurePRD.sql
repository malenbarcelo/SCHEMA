/*Delete database if exists*/
DROP DATABASE IF EXISTS malenbar_schema_sim;

/*Create database*/
CREATE DATABASE malenbar_schema_sim;

/*Create table user_categories*/
CREATE TABLE malenbar_schema_sim.user_categories (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

/*Create table companies*/
CREATE TABLE malenbar_schema_sim.companies (
    id INT NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(50) NOT NULL UNIQUE,
    enabled INT NOT NULL,
    PRIMARY KEY (id)
);

/*Create table users*/
CREATE TABLE malenbar_schema_sim.users (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    user_email VARCHAR(50) NOT NULL UNIQUE,
    id_document BIGINT,
    password VARCHAR(150) NOT NULL,
    id_user_categories INT NOT NULL,
    id_companies INT NOT NULL,
    enabled INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_categories) REFERENCES user_categories(id),
    FOREIGN KEY (id_companies) REFERENCES companies(id)
);

/*Create table tokens*/
CREATE TABLE malenbar_schema_sim.tokens (
    id INT NOT NULL AUTO_INCREMENT,
    token VARCHAR(200) NOT NULL UNIQUE,
    id_companies INT NOT NULL,
    id_user_categories INT NOT NULL,
    id_users INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_companies) REFERENCES companies(id),
    FOREIGN KEY (id_user_categories) REFERENCES user_categories(id),
    FOREIGN KEY (id_users) REFERENCES users(id)    
);

/*Create table simulators*/
CREATE TABLE malenbar_schema_sim.simulators (
    id INT NOT NULL AUTO_INCREMENT,
    simulator_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150),
    enabled INT NOT NULL,
    PRIMARY KEY (id)
);

/*Create table courses*/
CREATE TABLE malenbar_schema_sim.courses (
    id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL,
    course_description VARCHAR(150),
    course_number INT NOT NULL,    
    id_companies INT NOT NULL,
    enabled INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_companies) REFERENCES companies(id)
);

/*Create table course_commissions*/
CREATE TABLE malenbar_schema_sim.course_commissions (
    id INT NOT NULL AUTO_INCREMENT,
    id_courses INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    commission VARCHAR(50) NOT NULL,
    enabled INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_courses) REFERENCES courses(id)
);

/*Create table course_commissions_students*/
CREATE TABLE malenbar_schema_sim.course_commissions_students (
    id INT NOT NULL AUTO_INCREMENT,
    id_course_commissions INT NOT NULL,
    id_students INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_course_commissions) REFERENCES course_commissions(id),
    FOREIGN KEY (id_students) REFERENCES users(id)       
);

/*Create table course_commissions_teachers*/
CREATE TABLE malenbar_schema_sim.course_commissions_teachers (
    id INT NOT NULL AUTO_INCREMENT,
    id_course_commissions INT NOT NULL,
    id_teachers INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_course_commissions) REFERENCES course_commissions(id),
    FOREIGN KEY (id_teachers) REFERENCES users(id)       
);

/*Create table courses_simulators*/
CREATE TABLE malenbar_schema_sim.courses_simulators (
    id INT NOT NULL AUTO_INCREMENT,
    id_courses INT NOT NULL,
    id_simulators INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_courses) REFERENCES courses(id),
    FOREIGN KEY (id_simulators) REFERENCES simulators(id)    
);

/*Create table exercises*/
CREATE TABLE malenbar_schema_sim.exercises (
    id INT NOT NULL AUTO_INCREMENT,
    exercise_name VARCHAR(50) NOT NULL,
    exercise_description VARCHAR(50),
    id_simulators INT NOT NULL,
    enabled INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_simulators) REFERENCES simulators(id)    
);

/*Create table exercises_results*/
CREATE TABLE malenbar_schema_sim.exercises_results (
    id INT NOT NULL AUTO_INCREMENT,
    id_exercises INT NOT NULL,
    id_users INT NOT NULL,
    id_simulators INT NOT NULL,
    date VARCHAR(50) NOT NULL,
    grade DECIMAL(5,2) NOT NULL,
    duration_secs INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_exercises) REFERENCES exercises(id),
    FOREIGN KEY (id_users) REFERENCES users(id),
    FOREIGN KEY (id_simulators) REFERENCES simulators(id)   
);

/*Create table exercises_answers*/
CREATE TABLE malenbar_schema_sim.exercises_answers (
    id INT NOT NULL AUTO_INCREMENT,
    id_exercises_results INT NOT NULL,
    id_exercises INT NOT NULL,
    id_users INT NOT NULL,
    id_simulators INT NOT NULL,
    description VARCHAR(100) NOT NULL,
    log_time INT NOT NULL,
    type VARCHAR(100) NOT NULL,
    observations VARCHAR(6000),
    PRIMARY KEY (id),
    FOREIGN KEY (id_exercises_results) REFERENCES exercises_results(id),
    FOREIGN KEY (id_exercises) REFERENCES exercises(id),
    FOREIGN KEY (id_users) REFERENCES users(id)
);

