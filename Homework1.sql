use FE37_38;
create table students(
	id integer primary key not null auto_increment,
    firstname varchar(128) not null,
    lastname varchar(128) not null,
    class integer check (class between 1 and 10),
    subject varchar(128) not null,
    mark integer check(mark between 0 and 5)
);
insert into students (firstname, lastname, class, subject, mark)
values ('Alex', 'Ivanov', 3, 'Math', 3),
	   ('Ivan', 'Petrov', 4, 'Math', 4),
       ('Sergey', 'Sidorov', 6, 'English', 5),
       ('Oksana', 'Milova', 7, 'Liteerature', 5),
       ('Kristina', 'Ivanova', 9, 'Biology', 5),
       ('Petr', 'Sorokin', 5, 'Literature', 5),
       ('Alex', 'Novov', 2, 'Russian', 4),
       ('Vladimir', 'Botov', 10, 'Physic', 4),
       ('Alex', 'Vladimirov', 8, 'Math', 3),
       ('Michail', 'Ivanov', 3, 'Math', 3);

SET SQL_SAFE_UPDATES = 0;
delete from students
where mark = 0;
select * from students
where mark > 3;
select * from students
where class = 1 and mark < 3;
delete from students
where class = 1 and mark < 3;
select * from students
where length(firstname) > 4;
select * from students
where lastname like 'A%' and length(lastname) >= 3;
delete from students
where (subject!='Math' and mark < 4) or ((class not between 7 and 10) and mark > 3);
drop table students;



