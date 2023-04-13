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
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name1','last_name1',11111111,'administrador_general1@gmail.com','$2a$10$wDvYAe84oDfo1LpHLwcK/ePSzkyb8pPa2Jq1Jye6/e5eRvlSgfq72',1,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name2','last_name2',22222222,'administrador_general2@gmail.com','$2a$10$SkhFI8VBNz4X3osdUacmxu8FHRMiStesFtqpa/1ue/iBpYPmjAh2e',1,2);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name3','last_name3',33333333,'administrador_institucion1@gmail.com','$2a$10$lWwIDxwCw1dVipkq/29mA.Ny2nb38mj5B6BDeTheMaZXokgqo.Dh6',2,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name4','last_name4',44444444,'administrador_institucion2@gmail.com','$2a$10$GgrDxlTc0/ua.gJwiZQJj.m9LsxMWOTLD8ysVo14I2mV4ndWEXuAO',2,4);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name5','last_name5',55555555,'profesor1@gmail.com','$2a$10$FjogmyY.bHGlbJoBquAnUOjnCtI8AIZ74g1knxv.jsyzckwxwhLuO',3,5);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name6','last_name6',66666666,'profesor2@gmail.com','$2a$10$y5MBDNO/oBpaXQyil1h4fuJUXZVcfLfF/gnLKCKXsi63YzSZYdI9i',3,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name7','last_name7',77777777,'mail1@mail.com','$2a$10$JOZEPUdJIcHR0m28xJLCOehO61o/n6LM/TXHmwHN740kpix217Tyy',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name8','last_name8',88888888,'mail2@mail.com','$2a$10$5FpBFG9jZgpdC6eFRttr2eV32eDm5I70xSYI.VQxFV6WN91t4V9BS',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name9','last_name9',99999999,'mail3@mail.com','$2a$10$cwf5mrLDoNoqLsm8qZSKM.1kQJ.2rIdfzzT6v1YAKRd2zXJkGwYVu',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name10','last_name10',11111111,'mail4@mail.com','$2a$10$TWdh2Q0zG/PJM838upgsF.K/jfNb4ChLXjZ27TG1pDq4ENbMRPie6',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name11','last_name11',22222222,'mail5@mail.com','$2a$10$z5vty2OiU7osiNluxXNA7.1/G1QA2LkWEBc0R5hhm3vxSE/GWrPhy',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name12','last_name12',33333333,'mail6@mail.com','$2a$10$lkF3dyT/hiB3tb9YxfV0Se/gv6HIZMwcWlWdTitxzyu3TEaUdu6na',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name13','last_name13',44444444,'mail7@mail.com','$2a$10$OhANyRQNI3yehLzRnyyMAueedBMxgsFgxNtXvsMqBpXJOHS2VX6P.',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name14','last_name14',55555555,'mail8@mail.com','$2a$10$/i8/HpJmH1Whnyl4Jgv9SOLRIk1klxm5dvRnev2xFGn3/9bd2boj6',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name15','last_name15',66666666,'mail9@mail.com','$2a$10$nJqf2m0SysNIHLhUZwmfZejRtbrDwUukmWEAkCFIeAYJNlJ6gmrGa',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name16','last_name16',77777777,'mail10@mail.com','$2a$10$ZTJmCiDHkSO6Hut7B/yRvuBcpyfIe/JDubk3rEeHFFDBcQGXFfzxS',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name17','last_name17',88888888,'mail11@mail.com','$2a$10$S.MAnqiIm0KhytMajWwYXe9jbz1pwCYtr1zPs50Ep58.uHnkUzn6e',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name18','last_name18',99999999,'mail12@mail.com','$2a$10$80xUKpv0zCK/0FLTo0xbUejHkPPeApZEH4VwXObhDI942yI4tYhf.',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name19','last_name19',11111111,'mail13@mail.com','$2a$10$691o7cXLOKFdb8svXmOfRuK49eXpQDu7VXXF7Is2moesUa8/vqOLC',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name20','last_name20',22222222,'mail14@mail.com','$2a$10$iFGH9mohd5Rmll2E6k3Jf.YvXljwq0hLAL21g7tg2KLcWtRSSwSSS',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name21','last_name21',33333333,'mail15@mail.com','$2a$10$boJNaBvFNsz6n9rbqXMME.X5lcWFr6f36GPVxKoMsHW5lxAh00nWa',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name22','last_name22',44444444,'mail16@mail.com','$2a$10$RMzI9FUsgJzMpF63yEE0Cuj45cuSjkEqP4M0zcbWT5G1kNfTbJ4Le',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name23','last_name23',55555555,'mail17@mail.com','$2a$10$wYrHV3d38ZtD3BDXRpJqgOHlWaev980szh2six8Uq84ub/H04o7Uu',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name24','last_name24',66666666,'mail18@mail.com','$2a$10$2a.jZPZQJxB9UKpJs/bcPeEy2URpqL.g8b/5KUsUxYIVGPioKFUkC',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name25','last_name25',77777777,'mail19@mail.com','$2a$10$er0l7g0bpXQ18vPZLD5jOOlmcFeJrp6XBD8HRW/UrkTu7I8SFvXX.',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name26','last_name26',88888888,'mail20@mail.com','$2a$10$q.liajUgC4mY/fnMWvwJeuKUKYM43W2dbKhz/3v/ZJLr1O1O4u6W.',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name27','last_name27',99999999,'mail21@mail.com','$2a$10$yHwBr9MG/DdFZNtBoFLI..3adO.W6qfla46jT0xxwJeJLF.edzZwa',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name28','last_name28',11111111,'mail22@mail.com','$2a$10$JQyDiTYxOJIWyBMnr59M2.HqcQkGKq3XK5ji.BYM4PyxqO.uhRB1.',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name29','last_name29',22222222,'mail23@mail.com','$2a$10$XvLVz7fmz6XlZdAikUVY5.ldlGUhNKlSR7tTT0PeGnv208AGeoJfC',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name30','last_name30',33333333,'mail24@mail.com','$2a$10$QdxoEAWqNkTx8R.E/MS1eesBTutBCNpnjMO0TtLxj/bSRvyqz05zG',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name31','last_name31',44444444,'mail25@mail.com','$2a$10$UVmUm.s3ff1jLak7/zxTCO3vBvxFw.HWPiWqa6KCU1tRjEsbCKJJq',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name32','last_name32',55555555,'mail26@mail.com','$2a$10$Pha.R9tkC1SJ5xh7R1Q4muevduEq9rkObcaOf/NGtC2vUHcX0u7Fe',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name33','last_name33',66666666,'mail27@mail.com','$2a$10$dkaxIcwUfyCMOblM09erxeThFWoSd7bDreqIl1ifvSH/HO2LrJ.wO',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name34','last_name34',77777777,'mail28@mail.com','$2a$10$5VRwUGVsanwe5uR4Q1AHKOcLxOAst/R3.5tfkVTvUiaG9OscBEvvm',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name35','last_name35',88888888,'mail29@mail.com','$2a$10$Q2q/IQKYPi.Nt3I0NiLJEe.dUAS7C99Q5Bg4pikoWW5xyehttGXeG',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name36','last_name36',99999999,'mail30@mail.com','$2a$10$7QGy8BK3QOD./nOKjSD86O4nRacibmbWxS9oUr5GWSMec0pY60fSu',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name37','last_name37',11111111,'mail31@mail.com','$2a$10$G6LOed4mniBPykl78Z9LCeSAQyJWxAU3zjDfGniYR36RDvrj1dqzm',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name38','last_name38',22222222,'mail32@mail.com','$2a$10$F9BeQdJDLUM7fCOXRnjDGuTS.y1UE46aTYF4TwmDTP59a0KJJP4wK',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name39','last_name39',33333333,'mail33@mail.com','$2a$10$lRz.wzuAH7vmLGDGXybfU./YsFmXoL2WcAIObwT8pmRh1yJRIL1F.',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name40','last_name40',44444444,'mail34@mail.com','$2a$10$2FtcL9uQyInpYKCBiRWAIup.h8g7yldALlHpT2daX1l8UzuRUON4S',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name41','last_name41',55555555,'mail35@mail.com','$2a$10$45QeNLn1nc8n62m4cTgRJePgQGSw6RmoDaAcFt7duemTTNXVe5DIO',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name42','last_name42',66666666,'mail36@mail.com','$2a$10$CdRr8ODyeDZfLdjQGe6Fje.bCP1APRsPk6kriToF/D1jG79hwk/0u',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name43','last_name43',77777777,'mail37@mail.com','$2a$10$UoQFUeS7aj97YXXO/93dLuDxHJYtyktff1BlqY8ed/HRu/fYLzW3u',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name44','last_name44',88888888,'mail38@mail.com','$2a$10$OgGGAB3UfGQKSCOJ11GopuWLSYcSsRw6U4cCmHPefQW2seDKivCbi',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name45','last_name45',99999999,'mail39@mail.com','$2a$10$EZT/AZI3ly7C2fswUWIhRuTcce1RcgWoao4KvC4QuiMcifczLyBKW',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name46','last_name46',11111111,'mail40@mail.com','$2a$10$f6fzshhDvM339RXZQNM1celF1MnCpQWO6hazVPN6i.f33G15U6Gji',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name47','last_name47',22222222,'mail41@mail.com','$2a$10$WWq.jgEgW5UtKFeAzSuj5e19V5GZvwc1crG4FA/0Mc/3us3HX.T2G',4,3);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name48','last_name48',33333333,'mail42@mail.com','$2a$10$oEQGaYZ7g33uNDcV1iiRIe0nwuzj5G/UYVwl8.9P8EU.9..YfLdwq',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name49','last_name49',44444444,'mail43@mail.com','$2a$10$fXXOR6k.D2/9l8PMwlngM.O9N0OPPgUW81PDox9p8CCyEz0UTJq4C',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name50','last_name50',55555555,'mail44@mail.com','$2a$10$l6Nkdi5p41xJJ0peK5Z7JuyjbrZ/6dNW/pyepv0ZuqycAbZHh15Qm',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name51','last_name51',66666666,'mail45@mail.com','$2a$10$4KoF6cy5W7mzxTdhYAfqEOpfoRverjiCwIU0XKflr2KJCMc6jJa4S',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name52','last_name52',77777777,'mail46@mail.com','$2a$10$Rf4jxrgVETc1jQGTvTwOBeQaisnXUCQ7Fp7qh0yR7nq5K8b/zRJhC',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name53','last_name53',88888888,'mail47@mail.com','$2a$10$bG9b0SUiWG2G0dTju.O3kuZ/ULoLbzH0RjUaPiWd4tfiSsDMVwohm',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name54','last_name54',99999999,'mail48@mail.com','$2a$10$OavDu63zlxXU2iDX6/i4Y.11ctArL7nfTzSe6FTNYdDPOhNUL3DMe',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name55','last_name55',11111111,'mail49@mail.com','$2a$10$/Wu6fUuKiMAB6JQyAt4IPOJURIn3PsJp726t7tKY/9P0l/6VKtkaS',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name56','last_name56',22222222,'mail50@mail.com','$2a$10$UOHtNGVPjNtiX1lHkOE/QOfY1HHiO3wIs9liWJoCaPjj/LBd6kY1a',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name57','last_name57',33333333,'mail51@mail.com','$2a$10$CAdZMEI5jrSJQNVl.7i7ROUkoHCWo2P0dfx9LHPvkh86vrLeA4PQK',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name58','last_name58',44444444,'mail52@mail.com','$2a$10$daSZsPqgHDSyVuVd7bOFZeOwuC/QIOKn2jHcnEaQ3KbCmxCoeUTdO',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name59','last_name59',55555555,'mail53@mail.com','$2a$10$N5dOeKNeWrMgJZMlCxECGenL44MGcxPkBQY1RhX23EENvlOxSnLb6',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name60','last_name60',66666666,'mail54@mail.com','$2a$10$GH9cr.J.og44.5gkFoHktepX1OqitY0HOZKrv5foA5M9/PopDCB1O',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name61','last_name61',77777777,'mail55@mail.com','$2a$10$B6XdEzReezg8Ah3bcaK/fOMW.salJaZHUHb6w03uL2BmAMdefKuQe',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name62','last_name62',88888888,'mail56@mail.com','$2a$10$NuNtv.FKoQSWv3DenXyIqe6Yhqgf5YBHsrZmsMhCP29c9niiTFD9u',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name63','last_name63',99999999,'mail57@mail.com','$2a$10$3Ox9/sTbbixq9yhD0HCxiueYsdBGE2a2uBjiqlkarXUxt6i/jshq2',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name64','last_name64',11111111,'mail58@mail.com','$2a$10$Lm2aY.bKOn3RHA5VMjOgJOgfTx7x4Vm4dJi9uucfuOXd9oDm8FZTy',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name65','last_name65',22222222,'mail59@mail.com','$2a$10$viTf9Sip.rgN6dwd5z7ze.9j.ieBHCGyvHJXkv5eP7xNuIJN6y9WO',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name66','last_name66',33333333,'mail60@mail.com','$2a$10$rfwMBauK3FV7TPb9GnWpvefkF.YEX5Q.8m67oFNeL8WgYfw2HfWwe',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name67','last_name67',44444444,'mail61@mail.com','$2a$10$d1tI2IN0d54BXCSNDYiqqu/kQRqW8RV3iZnyUm7dERBLfHPmcV2hi',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name68','last_name68',55555555,'mail62@mail.com','$2a$10$sKzLtKS/OlPLmHxUFY/0Te9VddZQGD360iNZ67QEQPb2g9TVVrRZG',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name69','last_name69',66666666,'mail63@mail.com','$2a$10$vh.3/hUel/yxtoZi38lfSeFabMCOvf3efKxBRi6pTO2aDhybCUngO',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name70','last_name70',77777777,'mail64@mail.com','$2a$10$nNBFbWRT9dU7UWaDBFAYFOQYCl0Asj.rGw/6q3BYny6DbI2pbaoMa',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name71','last_name71',88888888,'mail65@mail.com','$2a$10$/8p0kyTsD9oN3m5SkaYISO3cw3XAByeJFM/1pkasIQ0bXI/hd5ndG',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name72','last_name72',99999999,'mail66@mail.com','$2a$10$NCc.PJZQncMbGWRP4v3sqOV8MtJ7lanbCQupafOc0pLm3Z8t9lUsS',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name73','last_name73',11111111,'mail67@mail.com','$2a$10$PEu/LR0vg5n5uEI.ozRag.KzOGVvuv52bPWCRcQU8bpy2KGqgaPg2',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name74','last_name74',22222222,'mail68@mail.com','$2a$10$cPS5RrHBBqYQrqYp50/0JumPPVxQHn.n1LSRM1GkxLsZYmx9DULg6',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name75','last_name75',33333333,'mail69@mail.com','$2a$10$hGo5bQUINHl/Oyvy4JhPIeuD13fF6QXZkYczWoVKj0lEX7Iwc9nvy',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name76','last_name76',44444444,'mail70@mail.com','$2a$10$VjkTVvjkRISkLdzmB65d2e98.RH5squpjcruFcys85IN1OoPS.H.G',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name77','last_name77',55555555,'mail71@mail.com','$2a$10$dSQrI9BnDYaYKWt7sX2egeIPnuBpxRltXRPasIHV6r5tkJ5ci4OIa',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name78','last_name78',66666666,'mail72@mail.com','$2a$10$wGNpFrruyc4PqEL.qQ98rOH2k68FpxpB.VjwHcMCcGwkAnqD8189m',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name79','last_name79',77777777,'mail73@mail.com','$2a$10$mTFL55/.qm1deTLNc8MbOes/A3RIvwvyVCUahnjsjMyGrDG1WfhwK',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name80','last_name80',88888888,'mail74@mail.com','$2a$10$r3Q6H5F1pYvyNSl5fbIrG.Um15tzMDjVnZJDy0QSA4hncIEKIljDa',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name81','last_name81',99999999,'mail75@mail.com','$2a$10$UHhnpJicrYOmcyfHbd8i5em3DlqRw4VUDcarWxHUzy.hHwYC7PLX2',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name82','last_name82',11111111,'mail76@mail.com','$2a$10$iaAIJxK8vkiESprkWVhuE.W0rh7T78fblPMXn8ETrz19CZh08.SVG',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name83','last_name83',22222222,'mail77@mail.com','$2a$10$4dqnBjK6zwM2BfO7.T7gW.9MPqroaCyLEecfNAoCNnYQuSqjY6cuW',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name84','last_name84',33333333,'mail78@mail.com','$2a$10$1UkoU5nvbpo8FtHlIa//zeJCf5WzuVuJ/8hazESRHgPT/0f0kfnay',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name85','last_name85',44444444,'mail79@mail.com','$2a$10$dnaILhYrGeZ5hYzO6R8V6e64ejBb5BBQdL8Wm.oYI3CvPuynGE6Rm',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name86','last_name86',55555555,'mail80@mail.com','$2a$10$MUKm4Rt4JkItzGc/V6RWLO.HF70OOimfJWGLBQ6c5CKLzVaFRAXdG',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name87','last_name87',66666666,'mail81@mail.com','$2a$10$99Poo/3iQRn6deXgggeksOG9VfLNYKt6xKH/2Otgr3v4T5jkSy4IC',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name88','last_name88',77777777,'mail82@mail.com','$2a$10$AqT37CgmpeNFe4kni5UlcuK553cz5yudgR.jv3btkUhjCXFIEzPRq',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name89','last_name89',88888888,'mail83@mail.com','$2a$10$dSsP5OeVSmaH.rEksF.y9.1sTBVgua1uMYqgqev2rlGm/072SyhEK',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name90','last_name90',99999999,'mail84@mail.com','$2a$10$oQTvZQZxzZNDvjHx3dfwFeD5vET8hvUsDkP/mJe1UUwJujAZk8jDW',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name91','last_name91',11111111,'mail85@mail.com','$2a$10$kdsTpJb684JCxngLgA3K/uFRrd2agwkdfFQOlLm3FviEHjGgc3mIK',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name92','last_name92',22222222,'mail86@mail.com','$2a$10$hgyu9d1D1zIX4STpeTya8.VUvWLr.zPJBVL9RZMdZ6ZIA.xWBNAu6',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name93','last_name93',33333333,'mail87@mail.com','$2a$10$0SlVm/iWOVZ/XiJe.xFRV.0uH2A5Cg7wuKmJhzb1eCr2HNLtwtn52',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name94','last_name94',44444444,'mail88@mail.com','$2a$10$dneDSvaaTwwL5dA7PZ5vBeLN588qZd0xYvjMTuePCmXXAEyDXATJy',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name95','last_name95',55555555,'mail89@mail.com','$2a$10$ZgCWs798JajM3yZER.IXNegoaKwb7DgmtumcbL/z5R1Exj0/xgVhi',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name96','last_name96',66666666,'mail90@mail.com','$2a$10$HMlw5/TMD.97xSULq6tuI.dCIzfN/dhN0aO/Q7RuPbQmtyKAngG3W',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name97','last_name97',77777777,'mail91@mail.com','$2a$10$/eA3pTHko7ZBNpSIVofs7.re7PbjWi5Se8p0idgiafhXCms.LrG.S',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name98','last_name98',88888888,'mail92@mail.com','$2a$10$9tS3yNCb1hH9OBhvqpp/wekobNdtQIhCgVx.ZJLbsQ/I5hD/XQbE2',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name99','last_name99',99999999,'mail93@mail.com','$2a$10$m.HgFNM4ZjG3MW6aADrxf.dONmhP7KKd7SyzrXg4JeifStPHnE5aW',4,1);
INSERT INTO schema_db.users (first_name,last_name,id_document,user_email,password,id_user_categories,id_companies) VALUES('first_name100','last_name100',88888888,'mail94@mail.com','$2a$10$VkVzkQfeRqJLWbDa1VpQ7eBxEnAZOIp8VP8buVZMOWKp82mxZFFfG',4,1);


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
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator1','simulador uno',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator2','simulador dos',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator3','simulador tres',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator4','simulador cuatro',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator5','simulador cinco',1);
INSERT INTO schema_db.simulators (simulator_name,description,enabled) VALUES('simulator6','simulador seis',1);

/*Courses*/
INSERT INTO schema_db.courses (course_name,course_description,id_companies,course_number,enabled) VALUES('course1','description course1',1,1,1);
INSERT INTO schema_db.courses (course_name,course_description,id_companies,course_number,enabled) VALUES('course2','description course2',1,2,1);
INSERT INTO schema_db.courses (course_name,course_description,id_companies,course_number,enabled) VALUES('course3','description course3',1,3,1);
INSERT INTO schema_db.courses (course_name,course_description,id_companies,course_number,enabled) VALUES('course4','description course4',4,1,1);
INSERT INTO schema_db.courses (course_name,course_description,id_companies,course_number,enabled) VALUES('course5','description course5',5,1,1);

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


/*exercises*/
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise1','description exercise1',1);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise2','description exercise2',1);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise3','description exercise3',1);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise4','description exercise4',2);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise5','description exercise5',2);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise6','description exercise6',2);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise7','description exercise7',3);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise8','description exercise8',3);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise9','description exercise9',4);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise10','description exercise10',4);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise11','description exercise11',5);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise12','description exercise12',5);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise13','description exercise13',6);
INSERT INTO schema_db.exercises (exercise_name,exercise_description,id_simulators) VALUES('exercise14','description exercise14',6);

/*exercises_results*/
INSERT INTO schema_db.exercises_results (id_exercises,id_users,date,grade,duration_secs) VALUES(2,7,1674150771459,4.2,130);

/*exercises_answers*/
INSERT INTO schema_db.exercises_answers (id_exercises_results,description,log_time,type,observations) VALUES(1,'1_Bienvenida',5,'Paso Realizado Correctamente','Realizado Correctamente');
INSERT INTO schema_db.exercises_answers (id_exercises_results,description,log_time,type,observations) VALUES(1,'2_EPP',23,'Paso Realizado Correctamente','Realizado Correctamente');
INSERT INTO schema_db.exercises_answers (id_exercises_results,description,log_time,type,observations) VALUES(1,'2_b_Cuestionario',29,'Paso Realizado Correctamente','Realizado Correctamente');
INSERT INTO schema_db.exercises_answers (id_exercises_results,description,log_time,type,observations) VALUES(1,'4_Step1',51,'Error',': Señal de retroceso incorrecta');
