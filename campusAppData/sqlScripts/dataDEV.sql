/*user_categories*/
INSERT INTO schema_db.user_categories (category_name) VALUES('administrador_general');
INSERT INTO schema_db.user_categories (category_name) VALUES('administrador_institucion');
INSERT INTO schema_db.user_categories (category_name) VALUES('profesor');
INSERT INTO schema_db.user_categories (category_name) VALUES('alumno');

/*companies*/
INSERT INTO schema_db.companies (company_name,enabled) VALUES('schema',1);

/*users*/
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies,enabled) VALUES('Francisco','Barcelo',11111111,'fran@gmail.com','$2a$10$wVdGjuJCdSVvh4lUE.tNIOcNU91S/GvcKZMN65Ycf9eGtk9OfOXy.',1,1,1);

/*Simulators*/
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator1','simulador uno',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator2','simulador dos',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator3','simulador tres',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator4','simulador cuatro',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator5','simulador cinco',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator6','simulador seis',1);

/*Exercises results*/
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,3,1674150771459,85.5,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,4,1674150771459,86.3,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,5,1674150771459,82,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,6,1674150771459,81,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,7,1674150771459,94,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,8,1674150771459,91,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,9,1674150771459,97,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,10,1674150771459,85,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,11,1674150771459,86,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,12,1674150771459,82,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,13,1674150771459,81,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,14,1674150771459,94,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,15,1674150771459,96,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,16,1674150771459,97,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,17,1674150771459,85,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,18,1674150771459,86,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,19,1674150771459,82,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,20,1674150771459,81,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,21,1674150771459,94,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,22,1674150771459,96,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,3,1674150771459,85,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,4,1674150771459,86,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,5,1674150771459,82,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,6,1674150771459,81,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,7,1674150771459,94,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,8,1674150771459,92,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,9,1674150771459,97,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,10,1674150771459,85,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,11,1674150771459,86,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,12,1674150771459,82,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,13,1674150771459,81,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,14,1674150771459,94,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,15,1674150771459,96,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,16,1674150771459,97,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,17,1674150771459,85,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,18,1674150771459,86,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,19,1674150771459,82,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,20,1674150771459,81,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,21,1674150771459,94,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,22,1674150771459,96,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,3,1674150771459,85,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,4,1674150771459,86,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,5,1674150771459,82,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,6,1674150771459,81,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,7,1674150771459,94,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,8,1674150771459,93,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,9,1674150771459,97,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,10,1674150771459,85,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,11,1674150771459,86,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,12,1674150771459,82,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,13,1674150771459,81,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,14,1674150771459,94,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,15,1674150771459,96,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,16,1674150771459,97,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,17,1674150771459,85,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,18,1674150771459,86,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,19,1674150771459,82,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,20,1674150771459,81,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,21,1674150771459,94,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,22,1674150771459,96,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,3,1674150771459,85,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,4,1674150771459,86,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,5,1674150771459,82,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,6,1674150771459,81,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,7,1674150771459,94,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,8,1674150771459,94,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,9,1674150771459,97,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,10,1674150771459,85,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,11,1674150771459,86,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,12,1674150771459,82,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,13,1674150771459,81,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,14,1674150771459,94,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,15,1674150771459,96,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,16,1674150771459,97,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,17,1674150771459,85,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,18,1674150771459,86,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,19,1674150771459,82,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,20,1674150771459,81,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,21,1674150771459,94,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,22,1674150771459,96,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,3,1674150771458,85,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,4,1674150771459,86,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,5,1674150771459,82,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,6,1674150771459,81,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,7,1674150771459,94,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,8,1674150771458,95,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,9,1674150771459,97,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,10,1674150771459,85,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,11,1674150771459,86,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,12,1674150771459,82,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,13,1674150771459,81,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,14,1674150771459,94,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,15,1674150771459,96,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,16,1674150771459,97,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,17,1674150771459,85,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,18,1674150771459,86,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,19,1674150771459,82.8,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,20,1674150771459,81,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,21,1674150771459,94,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,22,1674150771459,96,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,3,1674150771460,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,4,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,5,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,6,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,7,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,8,1674150771460,96,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,9,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,10,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,11,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,12,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,13,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,14,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,15,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,16,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,17,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,18,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,19,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,20,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,21,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(1,22,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,3,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,4,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,5,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,6,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,7,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,8,1674150771458,97,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,9,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,10,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,11,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,12,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,13,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,14,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,15,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,16,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,17,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,18,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,19,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,20,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,21,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,22,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,3,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,4,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,5,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,6,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,7,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,8,1674150771458,98,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,9,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,10,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,11,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,12,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,13,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,14,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,15,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,16,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,17,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,18,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,19,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,20,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,21,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(3,22,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,3,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,4,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,5,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,6,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,7,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,8,1674150771458,99,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,9,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,10,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,11,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,12,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,13,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,14,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,15,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,16,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,17,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,18,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,19,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,20,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,21,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(4,22,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,3,1674150771471,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,4,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,5,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,6,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,7,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,8,1674150771471,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,9,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,10,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,11,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,12,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,13,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,14,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,15,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,16,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,17,1674150771458,75,97);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,18,1674150771458,75,130);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,19,1674150771458,75,110);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,20,1674150771458,75,120);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,21,1674150771458,75,100);
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(5,22,1674150771458,75,97);
