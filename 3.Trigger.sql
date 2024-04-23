create database trigger1;
use trigger1;

create table person(
p_id varchar(30),
NAME VARCHAR(30),
ADDRESS VARCHAR(30),
CITY VARCHAR(30),
AGE varchar(30)
);


delimiter //
create trigger age_check before insert on person
for each row
if new.AGE < 18 then 
set new.AGE= 0;
end if;//

INSERT INTO person(p_id,NAME,ADDRESS,CITY,AGE)
VALUES
("1","Rahat","Thapar Nagar","Patiala",23),
("2","Rhuhi","Tagore Nagar","Jalandhar",14),
("3","Chatan","Dharamapura","Qadian",45),
("4","Pooja","GNDU","Amritsar",34);

select*from person;








