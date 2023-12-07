create database OurExerciseDb
on primary (name='OurExercise_Db', Filename='D:\mphasis\Phase2\Exercise\OurExercise_Db.mdf',size=24MB,Maxsize=24MB,filegrowth=8MB)
log on (name='OurExercise_Db_log',filename='D:\mphasis\Phase2\Exercise\OurExercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS



create	table Products(
PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 and PPrice<=100000),
PCompany nvarchar(20) check(PCompany='SamSung' or PCompany='Apple' or PCompany='Redmi' or PCompany='HTC'),
PQty int default 1  check(PQty>=1))

select * from Products

insert into Products(PName,PPrice,PCompany,PQty) values('Mobile',50000,'Apple',2)

select * from Products

insert into Products(PName,PPrice,PCompany,PQty) values('Mobile',20000,'Samsung',3)
insert into Products(PName,PPrice,PCompany,PQty) values('Mobile',20000,'HTC',1)
insert into Products(PName,PPrice,PCompany) values('Mobile',50000,'Apple')

insert into Products(PName,PPrice,PCompany,PQty) values('Laptop',20000,'Redmi',1)
insert into Products(PName,PPrice,PCompany,PQty) values('Laptop',20000,'Apple',2)

select * from Products

insert into Products(PName,PPrice,PCompany) values('Watch',20000,'Samsung')

select * from Products