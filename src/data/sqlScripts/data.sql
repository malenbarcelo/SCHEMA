/*user_categories*/
INSERT INTO schema_db.user_categories (category_name) VALUES('administrador_general');
INSERT INTO schema_db.user_categories (category_name) VALUES('administrador_institucion');
INSERT INTO schema_db.user_categories (category_name) VALUES('profesor');
INSERT INTO schema_db.user_categories (category_name) VALUES('alumno');

/*companies*/
INSERT INTO schema_db.companies (company_name,company_email) VALUES('company1','company1@company1.com');
INSERT INTO schema_db.companies (company_name,company_email) VALUES('company2','company2@company2.com');
INSERT INTO schema_db.companies (company_name,company_email) VALUES('company3','company3@company3.com');
INSERT INTO schema_db.companies (company_name,company_email) VALUES('company4','company4@company4.com');
INSERT INTO schema_db.companies (company_name,company_email) VALUES('company5','company5@company5.com');

/*users*/
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name1','last_name1','administrador_general1@gmail.com','pswuser1',1,1);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name2','last_name2','administrador_general2@gmail.com','pswuser2',1,2);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name3','last_name3','administrador_institucion1@gmail.com','pswuser1',2,3);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name4','last_name4','administrador_institucion2@gmail.com','pswuser2',2,4);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name5','last_name5','profesor1@gmail.com','pswuser1',3,5);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name6','last_name6','profesor2@gmail.com','pswuser2',3,1);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name7','last_name7','alumno1@gmail.com','pswuser1',4,2);
INSERT INTO schema_db.users (first_name,last_name,user_email,password,id_user_categories,id_companies) VALUES('first_name8','last_name8','alumno2@gmail.com','pswuser2',4,3);

/*tokens*/
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$lLNATnUCN0xgjxl7qzGOZes41q0kgYOdq2ttPnRUmgCl.FGQQoVnW',1,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$/OYqYl72td9ltVT5iSHoyO2Orh.74HFEXoI3mAchIMv5CYNKLUwle',1,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$0v5QvtczgutBxp1CIZCZ/OYF3I3HlV/I/0EjQePekG314VQQ38zFO',1,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$pbx.09Bo/KZ//CEaMEBSN.Q5USbMFsDhGU/JdHmCNK66kijpHd1nK',1,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$XCHGKkK0h1rR3pi3cPFFxeV3WS2ifpSSCifKeleG4nqlKLyYkO1v2',1,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$flsRN9KlzpkasdLafnnpKOabpUjztGw0NsrdsBh8xM496jHTZPXHy',1,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$GIroy45aYbOioOugKgCAMO7AUVE77HQNt/gwizaTtRtkxh8GPy67C',1,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$8NPWP.CiaBlovpVQEX8dTufckp3KxhZpqJj6/UCyt0X.w58kP1Ke2',1,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$IvDobQMfy.kbsoXK8qo.Wehob50g1KBu0yMLEbxwKOMfgyFbshNCe',4,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$FBnMJiicD2bAq9T1yLIlQOiHdKKEs0pfGWVJYOyM5LZ6f.kmFQHMa',5,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$lKnrrX81a3cC.f0OjxiBqOKKgwyypafzNkgYSbtC7uSghc4HVcTgS',4,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$Y5RL.6JIBjWbhCu9GhzK1efQVEapDVhgHD5pX0PAml4gv0jK0uBWS',5,2,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$XCNQtm8A3v0pqZ9R0Tidb.4gW81fW8RLztaAewxQxnfJAKtOminqa',4,2,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$MdnY.iTY3bRHrJ5uYn7SiOtqyoffo6BptG3jAuNIC4SMOLGRwWtSy',5,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$sPc7TuWF8FlP0uJ86IeEk.4uDkKlJ5msviGY6KNwQB9CqP4o8PT1K',4,3,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$8XVC0wVqAQ0Ot7kUTABDe.f7uMRmWBCM07tFbO6q/nrx2GPn/HCWO',5,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$ArXX9t7PusIkdqXDfILOxeGVmdClJJOsi574JywD0RbgfwpJtk//.',4,4,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$nHtVd0xHH7KOIHa.jTkLQuUI01K6v7o7JSRygB6fcpsRrfZa1.eWe',5,2,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$SBy8vZ7tPVjfeHJ/Otgyjuaouib1lXb393TqIcZ.C/dVpt4RuvdyC',4,2,NULL);
INSERT INTO schema_db.tokens (token,id_companies,id_user_categories,id_users) VALUES('$2a$10$Kp0x8/XodKF4m.xBb0EyR.wTyOvW2QI4DI6t282WJOcbYZ3m3cwxu',5,3,NULL);

/*Simulators*/
INSERT INTO schema_db.simulators (simulator) VALUES('simulator1');
INSERT INTO schema_db.simulators (simulator) VALUES('simulator2');
INSERT INTO schema_db.simulators (simulator) VALUES('simulator3');
INSERT INTO schema_db.simulators (simulator) VALUES('simulator4');
INSERT INTO schema_db.simulators (simulator) VALUES('simulator5');
INSERT INTO schema_db.simulators (simulator) VALUES('simulator6');

/*Courses*/
INSERT INTO schema_db.courses (course_name,id_companies) VALUES('course1',1);
INSERT INTO schema_db.courses (course_name,id_companies) VALUES('course2',2);
INSERT INTO schema_db.courses (course_name,id_companies) VALUES('course3',3);
INSERT INTO schema_db.courses (course_name,id_companies) VALUES('course4',4);
INSERT INTO schema_db.courses (course_name,id_companies) VALUES('course5',5);

/*Courses instances*/
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(1,2023,1,5,'00001-2023-1');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(1,2023,2,5,'00001-2023-2');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(1,2023,3,5,'00001-2023-3');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(1,2023,4,5,'00001-2023-4');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(2,2023,1,5,'00002-2023-1');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(2,2023,2,6,'00002-2023-2');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(2,2023,3,6,'00002-2023-3');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(2,2023,4,6,'00002-2023-4');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(3,2023,1,6,'00003-2023-1');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(3,2023,2,5,'00003-2023-2');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(3,2023,3,5,'00003-2023-3');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(3,2023,4,5,'00003-2023-4');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(4,2023,1,5,'00004-2023-1');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(4,2023,2,5,'00004-2023-2');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(4,2023,3,6,'00004-2023-3');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(4,2023,4,6,'00004-2023-4');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(5,2023,1,6,'00005-2023-1');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(5,2023,2,6,'00005-2023-2');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(5,2023,3,5,'00005-2023-3');
INSERT INTO schema_db.course_instances (id_courses,year,quarter,id_teachers,course_instance_code) VALUES(5,2023,4,5,'00005-2023-4');

/*Courses - Simulators*/
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('1',1);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('1',2);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('1',3);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('1',4);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('2',5);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('2',6);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('2',1);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('2',2);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('3',3);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('3',4);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('3',5);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('3',6);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('4',1);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('4',2);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('4',3);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('4',4);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('5',5);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('5',6);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('5',1);
INSERT INTO schema_db.courses_simulators (id_courses,id_simulators) VALUES('5',2);

/*course_instances_students*/
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('1',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('1',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('2',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('2',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('3',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('3',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('4',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('4',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('5',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('5',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('6',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('6',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('7',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('7',8);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('8',7);
INSERT INTO schema_db.course_instances_students (id_course_instances,id_students) VALUES('8',8);
