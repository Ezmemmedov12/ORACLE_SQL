create table person_5(
person_info nvarchar2(255)
);

insert into person_5 values('Eliyev Samir Akif oglu');
insert into person_5 values('Mahmudov Neriman Yalcin oglu');
insert into person_5 values('Namazov Ulker Rasim qizi');
insert into person_5 values('Tahirov Salman Mehman oglu');
insert into person_5 values('Sakitov Qafar Mirze oglu');
insert into person_5 values('Kerimova Humay Nicat qizi');

select substr(person_info,1,instr(person_info,' ',2,2)-1) as person_name from person_5;

select substr(person_info,instr(person_info,' ')+1,instr(person_info,' ',2,2)) from person_5;  

select substr(person_info,instr(person_info,' ')+1),instr(person_info,' ',2,2)-1)-instr(person_info,' ')) as surname from person_5; 


select substr(person_info,1,instr(person_info,' ')-1) as person_name,
substr(person_info,instr(person_info,' ')+1,instr(person_info,' ',2,2)-instr(person_info,' ')-1) as surname,
substr(person_info,instr(person_info,' ',2,2)+1,instr(person_info,' ',2,3)-instr(person_info,' ',2,2))as fath_name,
substr(person_info,instr(person_info,' ',2,3)+1) as title from person_5;
