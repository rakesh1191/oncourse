-- suppress unnecessary messages when running the script.
set client_min_messages=WARNING;

insert into courses (id, code, name, units) values
    (100, 'CS 5035', 'Topics in Functional Programming', 3);
insert into courses (id, code, name, units) values
    (101, 'CS 5112', 'Design and Analysis of Algorithms', 3);
insert into courses (id, code, name, units) values
    (102, 'CS 5186', 'Theory of Computing', 3);
insert into courses (id, code, name, units) values
    (103, 'CS 5188', 'Languages and Translators', 3);
insert into courses (id, code, name, units) values
    (104, 'CS 5991', 'Thesis or Project I', 2);
insert into courses (id, code, name, units) values
    (105, 'CS 5992', 'Thesis or Project II', 1);

insert into departments (id, name) values (200, 'Computer Science');
insert into departments (id, name) values (201, 'Electrical Engineering');

insert into programs (id, department_id, name) values
    (300, 200, 'CS Graduate Program (Theis/Project Option)');

insert into program_blocks (id, program_id, name, required_units, block_index)
    values (400, 300, 'Core Requirement', 9, 0);
insert into program_blocks (id, program_id, name, required_units, block_index)
    values (401, 300, '500-level Electives', 9, 1);
insert into program_blocks (id, program_id, name, required_units, block_index)
    values (402, 300, 'Other Electives', 9, 2);
insert into program_blocks (id, program_id, name, required_units, block_index)
    values (403, 300, 'Thesis/Project', 3, 3);

insert into program_block_courses (program_block_id, course_id) values (400, 100);
insert into program_block_courses (program_block_id, course_id) values (400, 101);
insert into program_block_courses (program_block_id, course_id) values (401, 100);
insert into program_block_courses (program_block_id, course_id) values (401, 101);
insert into program_block_courses (program_block_id, course_id) values (401, 102);
insert into program_block_courses (program_block_id, course_id) values (401, 103);
insert into program_block_courses (program_block_id, course_id) values (402, 100);
insert into program_block_courses (program_block_id, course_id) values (402, 101);
insert into program_block_courses (program_block_id, course_id) values (402, 102);
insert into program_block_courses (program_block_id, course_id) values (402, 103);
insert into program_block_courses (program_block_id, course_id) values (403, 104);
insert into program_block_courses (program_block_id, course_id) values (403, 105);

insert into users (id, username, password, email, cin, first_name, last_name)
    values (1000, 'cysun', 'abcd', 'cysun@localhost.localdomain', '1000', 'Chengyu', 'Sun');
insert into users (id, username, password, email, cin, first_name, last_name)
    values (1001, 'jdoe1', 'abcd', 'jdoe1@localhost.localdomain', '1001', 'John', 'Doe');
insert into users (id, username, password, email, cin, first_name, last_name)
    values (1002, 'jdoe2', 'abcd', 'jdoe2@localhost.localdomain', '1002', 'Jane', 'Doe');

insert into authorities (user_id, role) values (1000, 'ROLE_ADMIN');
insert into authorities (user_id, role) values (1000, 'ROLE_ADVISOR');
insert into authorities (user_id, role) values (1002, 'ROLE_ADVISOR');

insert into grade_records (id, student_id, term, course_id, grade_id) values
    (3000, 1001, 1169, 101, 2006);
