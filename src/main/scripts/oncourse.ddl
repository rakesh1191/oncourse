create sequence hibernate_sequence start 1 increment 1

    create table authorities (
        user_id int8 not null,
        role varchar(255)
    )

    create table courses (
        id int8 not null,
        code varchar(255) not null,
        name varchar(255),
        obsolete boolean not null,
        units int4 not null,
        primary key (id)
    )

    create table departments (
        id int8 not null,
        name varchar(255),
        primary key (id)
    )

    create table grade_records (
        id int8 not null,
        term int4,
        course_id int8,
        grade_id int8,
        student_id int8,
        primary key (id)
    )

    create table grades (
        id int8 not null,
        description varchar(255),
        symbol varchar(255) not null,
        value float8,
        primary key (id)
    )

    create table program_block_courses (
        program_block_id int8 not null,
        course_id int8 not null
    )

    create table program_blocks (
        id int8 not null,
        description varchar(255),
        name varchar(255),
        required_units int4 not null,
        program_id int8,
        block_index int4,
        primary key (id)
    )

    create table programs (
        id int8 not null,
        description varchar(255),
        name varchar(255) not null,
        department_id int8,
        primary key (id)
    )

    create table users (
        id int8 not null,
        cin varchar(255) not null,
        email varchar(255) not null,
        enabled boolean not null,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255) not null,
        username varchar(255) not null,
        program_id int8,
        primary key (id)
    )

    alter table courses 
        add constraint UK_61og8rbqdd2y28rx2et5fdnxd unique (code)

    alter table grades 
        add constraint UK_2ljyc433n941undoa4gnv7ony unique (symbol)

    alter table program_block_courses 
        add constraint UK4pmojs5b2efynpthd2lyl9mvc unique (program_block_id, course_id)

    alter table users 
        add constraint UK_ka6m8ghsr7vna1ti6lftwww8o unique (cin)

    alter table users 
        add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table users 
        add constraint UK_r43af9ap4edm43mmtq01oddj6 unique (username)

    alter table authorities 
        add constraint FKk91upmbueyim93v469wj7b2qh 
        foreign key (user_id) 
        references users

    alter table grade_records 
        add constraint FKqscg29lqkewwcatjf0pnmmtvu 
        foreign key (course_id) 
        references courses

    alter table grade_records 
        add constraint FKc8wd5p2mnl34xj6sxui0g0dxf 
        foreign key (grade_id) 
        references grades

    alter table grade_records 
        add constraint FKcph0cc8c53m9v3c8m8yxsuea9 
        foreign key (student_id) 
        references users

    alter table program_block_courses 
        add constraint FK9695vxyaeejmel1y3vv7bpydj 
        foreign key (course_id) 
        references courses

    alter table program_block_courses 
        add constraint FKqs4hnuitdfwftghpgq4o1hqhd 
        foreign key (program_block_id) 
        references program_blocks

    alter table program_blocks 
        add constraint FK6ca55f8kguyejb7lgdwrakg4y 
        foreign key (program_id) 
        references programs

    alter table programs 
        add constraint FK7xrusj91mbbujeaxtrrdowj7e 
        foreign key (department_id) 
        references departments

    alter table users 
        add constraint FKnygb5uvahfy3wrmd0xaj3hux2 
        foreign key (program_id) 
        references programs
