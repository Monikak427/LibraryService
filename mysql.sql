use library;
drop table member;
create table member (memberId Integer primary key,  firstName Varchar(30),lastName varchar(30),emailAddress varchar(50),phoneNumber bigint);
insert into member (memberId,firstName,lastName,emailAddress,phoneNumber) Values (1,"John","Doe","john@gmail.com",9876543214);
select * from member;

create table books (bookId integer primary key,title varchar(30),author varchar(30),isbn bigint,price integer,genre varchar(30));
insert into books(bookId,title,author,isbn,price,genre) values (1,"Someone like you","xyz",234567, 19.99,"Fantasy" );
select * from books;