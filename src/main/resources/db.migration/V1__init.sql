create table demo.exam_results
(
    id         bigint           not null
        primary key,
    student_id bigint           not null
        constraint student_fk
            references demo.students,
    subject_id bigint           not null
        constraint subject_fk
            references demo.subjects,
    mark       double precision not null
);

create table demo.students
(
    id               bigint      not null
        primary key,
    surname          varchar(50) not null,
    dob              date,
    phone_number     varchar(20),
    primary_skill    varchar(100),
    created_datetime date,
    updated_datetime date,
    name             varchar(20)
);

create index std_name_idx
    on demo.students (surname) include (surname);

create index std_fullname_idx
    on demo.students (name);

create table demo.subjects
(
    id           bigint      not null
        primary key,
    subject_name varchar(20) not null,
    tutor        varchar(20)
);

alter table demo.subjects
    owner to postgres;

