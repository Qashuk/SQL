--  1. Создать таблицу employees
--   -id. serial,  primary key,
--   -employee_name. Varchar(50), not null
create table employees (
  id serial primary key,
  employee_name varchar(50) not null 
);

--  2. Наполнить таблицу employee 70 строками
insert into employees(id, employee_name)
values (1,'Andrew'),
       (2, 'Anna'),
       (3, 'Alex'),
       (4, 'Anton'),
       (5, 'Alina'),
       (6, 'Arina'),
       (7, 'Bob'),
       (8, 'Bryan'),
       (9, 'Ben'),
       (10, 'Bonnie'),
       (11, 'Chris'),
       (12, 'Harry'),
       (13, 'Serhio'),
       (14, 'Victor'),
       (15, 'Victoriia'),
       (16, 'Ronald'),
       (17, 'Nik'),
       (18, 'Dmitriy'),
       (19, 'Vitalii'),
       (20, 'Karim'),
       (21, 'Jordi'),
       (22, 'Frenkie'),
       (23, 'Toni'),
       (24, 'Andreas'),
       (25, 'Lionel'),
       (26, 'Steffan'),
       (27, 'Kaylor'),
       (28, 'Vlad'),
       (29, 'Luis'),
       (30, 'Jovanni'),
       (31, 'Luk'),
       (32, 'Inna'),
       (33, 'Elena'),
       (34, 'Mary'),
       (35, 'Julia'),
       (36, 'Megan'),
       (37, 'Marie'),
       (38, 'Jenny'),
       (39, 'Lucy'),
       (40, 'Vanessa'),
       (41, 'Rosa'),
       (42, 'Rachel'),
       (43, 'Monica'),
       (44, 'Phoebe'),
       (45, 'Lera'),
       (46, 'Nancy'),
       (47, 'Joe'),
       (48, 'Robert'),
       (49, 'Sam'),
       (50, 'Jeremie'),
       (51, 'James'),
       (52, 'Jone'),
       (53, 'Thomas'),
       (54, 'Charles'),
       (55, 'David'),
       (56, 'Michael'),
       (57, 'Richard'),
       (58, 'Daniele'),
       (59, 'Mark'),
       (60, 'Donald'),
       (61, 'Paul'),
       (62, 'Kevin'),
       (63, 'Lily'),
       (64, 'Emma'),
       (65, 'Olivia'),
       (66, 'Daisy'),
       (67, 'Graham'),
       (68, 'Alice'),
       (69, 'Scarlett'),
       (70, 'Freya');
       
--   3. Создать таблицу salary
--      -id. Serial  primary key,
--      -monthly_salary. Int, not null
 create table salary (
  id serial primary key,
  monthly_salary int not null
  );

--   4. Наполнить таблицу salary 15 строками
 insert into salary(monthly_salary)
      values (1000),
             (1100),
             (1200),
             (1300),
             (1400),
             (1500),
             (1600),
             (1700),
             (1800),
             (1900),
             (2000),
             (2100),
             (2200),
             (2300),
             (2400),
             (2500);
--   5. Создать таблицу employee_salary
--     -id. Serial  primary key,
--     -employee_id. Int, not null, unique
--     -salary_id. Int, not null
create table employee_salary (
id serial primary key,
employee_id int unique not null,
salary_id int not null
);

--   6. Наполнить таблицу employee_salary 40 строками:
--      в 10 строк из 40 вставить несуществующие employee_id
  insert into employee_salary (employee_id, salary_id)
  values (3, 7),
	       (1, 4),
	       (5, 9),
	       (40, 13),
	       (23, 4),
         (11, 2),
	       (52, 10),
	       (15, 13),
	       (26, 4),
	       (16, 1),
	       (33, 7),
	       (44, 5),
	       (32, 12),
	       (22, 16),
	       (10, 8),
	       (32, 3),
	       (6, 28),
	       (7, 30),
	       (4, 17),
	       (12, 34),
	       (28, 15),
	       (2, 29),
	       (14, 36),
	       (9, 40),
	       (19, 39),
	       (20,11),
	       (37, 18),
	       (27, 27),
	       (8, 22),
	       (24, 19),
	       (71, 26),
	       (72, 17),
	       (73, 18),
	       (74, 20),
	       (75, 36),
	       (76, 39),
	       (77, 2),
	       (78, 9),
	       (79, 10),
	       (80, 13),
         
--   7. Создать таблицу roles
--   -id. Serial  primary key,
--   -role_name. int, not null, unique
 create table roles (
id serial primary key,
role_name int unique not null
);

--   8. Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30)

 --   9. Наполнить таблицу roles 20 строками
            insert into roles(role_name)
     values ('Junior Python developer'),
            ('Middle Python developer'),
            ('Senior Python developer'),
            ('Junior Java developer'),
            ('Middle Java developer'),
            ('Senior Java developer'),
            ('Junior JavaScript developer'),
            ('Middle JavaScript developer'),
            ('Senior JavaScript developer'),
            ('Junior Manual QA engineer'),
            ('Middle Manual QA engineer'),
            ('Senior Manual QA engineer'),
            ('Project Manager'),
            ('Designer'),
            ('HR'),
            ('CEO'),
            ('Sales manager'),
            ('Junior Automation QA engineer'),
            ('Middle Automation QA engineer'),
            ('Senior Automation QA engineer');
            
--   10. Создать таблицу roles_employee
--    -id. Serial  primary key,
--     -employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--     -role_id. Int, not null (внешний ключ для таблицы roles, поле id)
   create table roles_employee (
   id serial primary key,
   employee_id int unique not null,
   role_id int not null,
   foreign key (employee_id)
   references employees(id),
   foreign key (role_id)
   references roles(id)
   );
   
   --   11. Наполнить таблицу roles_employee 40 строками
      insert into roles_employee(employee_id, role_id)
        values (7,2),
               (20,4),
               (3,9),
               (5,13),
               (23,4),
               (11,2),
               (10,9),
               (22,13),
               (21,3),
               (34,4),
               (6,7),
               (1,10),
               (2,1),
               (4,8),
               (8,5),
               (9,10),
               (13,11),
               (12,19),
               (14,12),
               (19,13),
               (17,14),
               (15,3),
               (18,16),
               (16,17),
               (25,12),
               (24,10),
               (26,18),
               (30,1),
               (29,5),
               (27,7),
               (28,13),
               (31,8),
               (33,3),
               (35,19),
               (32,2),
               (40,9),
               (36,15),
               (38,10),
               (37,9),
               (39,11);
              
         
