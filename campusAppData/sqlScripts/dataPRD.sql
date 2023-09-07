/*user_categories*/
INSERT INTO malenbar_schema_sim.user_categories (category_name) VALUES('administrador_general');
INSERT INTO malenbar_schema_sim.user_categories (category_name) VALUES('administrador_institucion');
INSERT INTO malenbar_schema_sim.user_categories (category_name) VALUES('profesor');
INSERT INTO malenbar_schema_sim.user_categories (category_name) VALUES('alumno');

/*companies*/
INSERT INTO malenbar_schema_sim.companies (company_name,enabled) VALUES('Schema',1);

/*users*/
INSERT INTO malenbar_schema_sim.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies,enabled) VALUES('Francisco','Barcelo',11111111,'lfbarcelo@gmail.com','$2a$10$HgNUd.rHxEMNl6xGvJYuXuAwzPi4a6lUN/0NWecyXrBArxcRF47le',1,1,1);
INSERT INTO malenbar_schema_sim.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies,enabled) VALUES('Maxi','Larreteguy',99999999,'mlarreteguy@schemasim.com','$2a$10$Msi7ldXFJ3iiaRjI1Nizu.PUhvc4BM5jYdbxlqJpOh6qZxYhBf7Jm',1,1,1);

/*Simulators*/
INSERT INTO malenbar_schema_sim.simulators (simulator_name,description,enabled) VALUES('simulator1','simulador uno',1);
INSERT INTO malenbar_schema_sim.simulators (simulator_name,description,enabled) VALUES('simulator2','simulador dos',1);
INSERT INTO malenbar_schema_sim.simulators (simulator_name,description,enabled) VALUES('simulator3','simulador tres',1);
INSERT INTO malenbar_schema_sim.simulators (simulator_name,description,enabled) VALUES('simulator4','simulador cuatro',1);
INSERT INTO malenbar_schema_sim.simulators (simulator_name,description,enabled) VALUES('simulator5','simulador cinco',1);
INSERT INTO malenbar_schema_sim.simulators (simulator_name,description,enabled) VALUES('simulator6','simulador seis',1);

/*Exercises*/
INSERT INTO malenbar_schema_sim.exercises (exercise_name,exercise_description,id_simulators,enabled) VALUES('exercise_z','description exercise_z',1,1);
INSERT INTO malenbar_schema_sim.exercises (exercise_name,exercise_description,id_simulators,enabled) VALUES('exercise_b','description exercise_b',1,1);
INSERT INTO malenbar_schema_sim.exercises (exercise_name,exercise_description,id_simulators,enabled) VALUES('exercise_a','description exercise_a',1,1);
INSERT INTO malenbar_schema_sim.exercises (exercise_name,exercise_description,id_simulators,enabled) VALUES('exercise_y','description exercise_y',2,1);
INSERT INTO malenbar_schema_sim.exercises (exercise_name,exercise_description,id_simulators,enabled) VALUES('exercise_b','description exercise_b',2,1);

/*Exercises results*/
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(1,4,1,1674150771500,80.5,100);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(1,5,1,1674150771499,81.5,101);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(1,6,1,1674150771498,82.5,102);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(2,4,1,1674150771497,83.5,103);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(2,5,1,1674150771496,84.5,104);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(2,6,1,1674150771495,85.5,105);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(3,4,1,1674150771494,86.5,106);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(3,5,1,1674150771493,87.5,107);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(3,6,1,1674150771492,88.5,108);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(4,4,2,1674150771491,89.5,109);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(4,5,2,1674150771490,90.5,110);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(4,6,2,1674150771489,91.5,111);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(5,4,2,1674150771488,92.5,112);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(5,5,2,1674150771487,93.5,113);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(5,6,2,1674150771486,94.5,114);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(1,4,1,1674150771485,95.5,100);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(1,5,1,1674150771484,96.5,101);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(1,6,1,1674150771483,97.5,102);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(2,4,1,1674150771482,98.5,103);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(2,5,1,1674150771481,99.5,104);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(2,6,1,1674150771480,70,105);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(3,4,1,1674150771479,71,106);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(3,5,1,1674150771478,72,107);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(3,6,1,1674150771477,73,108);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(4,4,2,1674150771476,74,109);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(4,5,2,1674150771475,75,110);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(4,6,2,1674150771474,76,111);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(5,4,2,1674150771473,77,112);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(5,5,2,1674150771472,78,113);
INSERT INTO malenbar_schema_sim.exercises_results (id_exercises,id_users,id_simulators,date,grade,duration_secs) VALUES(5,6,2,1674150771471,79,114);

/*Exercises answers*/
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(1,1,4,1,'1d_paso1d',10,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(1,1,4,1,'1a_paso1a',11,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(1,1,4,1,'1c_paso1c',12,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(2,1,5,1,'1d_paso1d',13,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(2,1,5,1,'1a_paso1a',14,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(2,1,5,1,'1c_paso1c',15,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(3,1,6,1,'1d_paso1d',16,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(3,1,6,1,'1a_paso1a',17,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(3,1,6,1,'1c_paso1c',18,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(16,1,4,1,'1d_paso1d',19,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(16,1,4,1,'1a_paso1a',20,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(16,1,4,1,'1c_paso1c',21,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(17,1,5,1,'1d_paso1d',22,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(17,1,5,1,'1a_paso1a',23,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(17,1,5,1,'1c_paso1c',24,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(18,1,6,1,'1d_paso1d',25,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(18,1,6,1,'1a_paso1a',26,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(18,1,6,1,'1c_paso1c',27,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(4,2,4,1,'2x_paso2x',28,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(4,2,4,1,'2d_paso2d',29,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(5,2,5,1,'2x_paso2x',30,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(5,2,5,1,'2d_paso2d',31,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(6,2,6,1,'2x_paso2x',32,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(6,2,6,1,'2d_paso2d',33,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(19,2,4,1,'2x_paso2x',34,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(19,2,4,1,'2d_paso2d',35,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(20,2,5,1,'2x_paso2x',36,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(20,2,5,1,'2d_paso2d',37,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(21,2,6,1,'2x_paso2x',38,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(21,2,6,1,'2d_paso2d',39,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(7,3,4,1,'3c_paso3c',40,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(7,3,4,1,'3f_paso3f',41,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(7,3,4,1,'3p_paso3p',42,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(7,3,4,1,'3x_paso3x',43,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(7,3,4,1,'3w_paso3w',44,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(8,3,5,1,'3c_paso3c',45,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(8,3,5,1,'3f_paso3f',46,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(8,3,5,1,'3p_paso3p',47,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(8,3,5,1,'3x_paso3x',48,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(8,3,5,1,'3w_paso3w',49,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(9,3,6,1,'3c_paso3c',50,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(9,3,6,1,'3f_paso3f',51,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(9,3,6,1,'3p_paso3p',52,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(9,3,6,1,'3x_paso3x',53,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(9,3,6,1,'3w_paso3w',54,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(22,3,4,1,'3c_paso3c',55,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(22,3,4,1,'3f_paso3f',56,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(22,3,4,1,'3p_paso3p',57,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(22,3,4,1,'3x_paso3x',58,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(22,3,4,1,'3w_paso3w',59,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(23,3,5,1,'3c_paso3c',60,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(23,3,5,1,'3f_paso3f',61,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(23,3,5,1,'3p_paso3p',62,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(23,3,5,1,'3x_paso3x',63,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(23,3,5,1,'3w_paso3w',64,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(24,3,6,1,'3c_paso3c',65,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(24,3,6,1,'3f_paso3f',66,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(24,3,6,1,'3p_paso3p',67,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(24,3,6,1,'3x_paso3x',68,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(24,3,6,1,'3w_paso3w',69,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(10,4,4,2,'4z_paso4z',70,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(10,4,4,2,'4y_paso4y',71,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(11,4,5,2,'4z_paso4z',72,'Error','Es necesario examinar la bomba en estudios con contraste');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(11,4,5,2,'4y_paso4y',73,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(12,4,6,2,'4z_paso4z',74,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(12,4,6,2,'4y_paso4y',75,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(25,4,4,2,'4z_paso4z',76,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(25,4,4,2,'4y_paso4y',77,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(26,4,5,2,'4z_paso4z',78,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(26,4,5,2,'4y_paso4y',79,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(27,4,6,2,'4z_paso4z',80,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(27,4,6,2,'4y_paso4y',81,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(13,5,4,2,'5g_paso5g',82,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(13,5,4,2,'5t_paso5t',83,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(13,5,4,2,'5u_paso5u',84,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(13,5,4,2,'5p_paso5p',85,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(14,5,5,2,'5g_paso5g',86,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(14,5,5,2,'5t_paso5t',87,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(14,5,5,2,'5u_paso5u',88,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(14,5,5,2,'5p_paso5p',89,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(15,5,6,2,'5g_paso5g',90,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(15,5,6,2,'5t_paso5t',91,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(15,5,6,2,'5u_paso5u',92,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(15,5,6,2,'5p_paso5p',93,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(28,5,4,2,'5g_paso5g',94,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(28,5,4,2,'5t_paso5t',95,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(28,5,4,2,'5u_paso5u',96,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(28,5,4,2,'5p_paso5p',97,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(29,5,5,2,'5g_paso5g',98,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(29,5,5,2,'5t_paso5t',99,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(29,5,5,2,'5u_paso5u',100,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(29,5,5,2,'5p_paso5p',101,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(30,5,6,2,'5g_paso5g',102,'Error','\nFaltó seleccionar:\nContraste, Jeringa, Algodon, Adhesivo, Descartador, Llave de 3 vías, Solucion, Difenhidramina, Guía\n\nSe requería el cateter de 22G');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(30,5,6,2,'5t_paso5t',103,'Error','Preguntas Faltantes: ¿Por qué motivo se realiza el estudio?; ¿Realizó el ayuno correspondiente?; ¿Se encuentra realizando un tratamiento con algún medicamento?; ¿Tiene algún objeto metálico como aros, anillos o pulseras?; Preguntas Incorrectas: ¿Está al tanto de todos los efectos adversos del contraste?');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(30,5,6,2,'5u_paso5u',104,'Paso realizado correctamente','');
INSERT INTO malenbar_schema_sim.exercises_answers (id_exercises_results,id_exercises,id_users,id_simulators,description,log_time,type,observations) VALUES(30,5,6,2,'5p_paso5p',105,'Paso realizado correctamente','');
