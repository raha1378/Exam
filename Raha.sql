create database lib
use lib
create table book(code int,nam nvarchar(10) not null,nevisande nvarchar(10) not null,nasher nvarchar(10),motarjem nvarchar(10),chap int,tedad int,price bigint not null,primary key(code))
insert into book values(101,N'ریاضی',N'علیزاده',N'افق',N'',1398,20,40000)
insert into book values(102,N'فیزیک',N'حسن زاده',N'افق',N'',1397,30,50000)
insert into book values(103,'english','aaa',N'افق',N'رضاپور',1398,15,70000)

update book set tedad=tedad+5,price=price-(price*10/100) where code=102

select *
into ketab
from book

delete from book where code=103

select nam,nevisande,price
from book
where code=102