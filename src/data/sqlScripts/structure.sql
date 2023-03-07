/*Delete database if exists*/
DROP DATABASE IF EXISTS schema_db;

/*Create database*/
CREATE DATABASE schema_db;

/*Create table user_categories*/
CREATE TABLE schema_db.user_categories (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

/*Create table companies*/
CREATE TABLE schema_db.companies (
    id INT NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(50) NOT NULL UNIQUE,
    company_email VARCHAR(50) NOT NULL UNIQUE,    
    PRIMARY KEY (id)
);

/*Create table users*/
CREATE TABLE schema_db.users (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    user_email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    id_user_categories INT NOT NULL,
    id_companies INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_categories) REFERENCES user_categories(id),
    FOREIGN KEY (id_companies) REFERENCES companies(id)
);

/*Create table tokens*/
CREATE TABLE schema_db.tokens (
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
CREATE TABLE schema_db.simulators (
    id INT NOT NULL AUTO_INCREMENT,
    simulator VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

/*Create table courses*/
CREATE TABLE schema_db.courses (
    id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL UNIQUE,
    id_companies INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_companies) REFERENCES companies(id)
);

/*Create table course_instances*/
CREATE TABLE schema_db.course_instances (
    id INT NOT NULL AUTO_INCREMENT,
    id_courses INT NOT NULL,
    year INT NOT NULL,    
    quarter INT NOT NULL,
    id_teachers INT NOT NULL,
    course_instance_code VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id),
    FOREIGN KEY (id_courses) REFERENCES courses(id),
    FOREIGN KEY (id_teachers) REFERENCES users(id)    
);

/*Create table courses_simulators*/
CREATE TABLE schema_db.courses_simulators (
    id INT NOT NULL AUTO_INCREMENT,
    id_courses INT NOT NULL,
    id_simulators INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_courses) REFERENCES courses(id),
    FOREIGN KEY (id_simulators) REFERENCES simulators(id)    
);

/*Create table course_instances_students*/
CREATE TABLE schema_db.course_instances_students (
    id INT NOT NULL AUTO_INCREMENT,
    id_course_instances INT NOT NULL,
    id_students INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_course_instances) REFERENCES course_instances(id),
    FOREIGN KEY (id_students) REFERENCES users(id)    
);

