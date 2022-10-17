
create table per_2(
per_id int primary key ,
per_name nvarchar2(255),
per_age number,
per_gender nchar(50),
pnumber number
);

insert into per_2 values(1,'Samir',25,'male',0707456281);

insert into per_2 values(2,'Arif',24,'male',0995768394);

insert into per_2 values(3,'Kamil',29,'male',070830231);

insert into per_2 values(4,'Samir',34,'male',0554678798);

insert into per_2 values(5,'Samir',32,'male',0778590243);

insert into per_2 values(6,'Kamil',28,'male',0707456281);



select per_id,per_name,rank() over (  order  by per_name) from per_2; //ilk setrdeki elementin ranki setirin sira nomresi ile uygun gelir. Eger novbeti setrlerde data deyismese bu o demekdirki onlar ucunde rank eyni olacaq. Eks ha
basqa data ucun rank onun sira nomresi ile bersber olacaq.
s

select per_id,per_name,per_gender,dense_rank() over (order by per_name desc) from per_2; // bu haaldas ise   rank ardicil olaraq gedir setirin nomresine baxmir. Yeni biz datani elave etsek rank qaldigi yerden davam edecek.


select * from per_2;

drop table per_2;
