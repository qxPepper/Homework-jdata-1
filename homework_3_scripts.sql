create schema netology;

#1.
create table PERSONS
(
    name varchar(20) not null,
    surname varchar(40) not null,
    age int check (age >= 0),
    phone_number varchar(16),
    city_of_living varchar(20) not null,
    primary key (name, surname, age)
);

insert into PERSONS (name, surname, age, phone_number, city_of_living)
    values ('Ivan', 'Ivanov', 24, '495-1234567', 'MOSCOW');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
    values ('Vasiliy', 'Pupkin', 31, '495-7778899', 'MOSCOW');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
    values ('Sidor', 'Kuzmin', 16, '49-1234567', 'COLONGE');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
    values ('Baba', 'Yaga', 118, '666-6666666', 'LUKOMORYE');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
    values ('John', 'Sweet', 42, '495-9876543', 'MOSCOW');

#2.
select name, surname from PERSONS
    where city_of_living = 'MOSCOW';

#3.
select * from PERSONS
    where age > 27
    order by age desc;