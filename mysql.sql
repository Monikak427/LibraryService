CREATE SCHEMA libraryManagement;
use libraryManagement;
create table address( address_id int auto_increment, line1 varchar(30), line2 varchar(30), city varchar(20), state char(2), zip int, primary key (address_id));
create table library_member(member_id int auto_increment, first_name varchar(25), last_name varchar(25), email_address varchar(35), phone_number bigint, membership_level varchar(10), address_id int, primary key(member_id), foreign key(address_id) references address(address_id));
create table book(book_id int auto_increment, title varchar(45), author_name varchar(50), year_published int, quantity int, primary key(book_id));
create table book_isbn(isbn bigint, book_id int, primary key(isbn), foreign key(book_id) references book(book_id));
create table checkout(id int auto_increment, isbn bigint, member_id int, checkout_date datetime, due_date datetime, is_returned boolean, primary key(id), foreign key(member_id) References library_member(member_id), foreign key(isbn) references book_isbn(isbn));


insert into address(line1, line2, city, state, zip) 
value("300 cyberonics", "Blvd", "Houston", "TX", 77058),
("13 william ", "street", "LongIsland", "NY", 10005),
("north pine", "street", "Irvine", "CA", 71235),
("west", "Blvd", "Irvine", "CA", 71235),
("E 16th street", "Blvd", "Fairfax", "VA", 75678),
("Travis", "street", "Atlanta", "GA", 75675);

select * from address;
select * from library_member;
insert into book(title, author_name, year_published, quantity) 
values ("Java", "Sun microsysytems", "2018", "5"),
("python", "PSF", "2016", "8"),
("AWS","Amazon", "2018", "13"),
("Sql", "Sql author", "2019", "20"),
("Kafka", "Apache", "2017", "15"),
("Java", "Sun microsysytems", "2019", "10");
select * from book;


insert into book_isbn(isbn, book_id) 
value("123734","1"), ("234154","2"),("459678","3"),("645987","4"),
("832567","5"),("967432","6");

select * from book_isbn; 

-- ("665887","11"),("998776","12"),("665266","13"),("113887","14"),("221876","15"),("442754","16"),
-- ("332991","17"),("994226","18"),("552941","19"),("871641","20");


insert into library_member(first_name, last_name, email_address, phone_number, membership_level, address_id) 
value("John", "Welch", "jw123@gmail.com", "12345678", "Level 1", "1"),
("Taylor", "Costa", "tc123@gmail.com", "23456781", "Level 2", "2"),
("Adeline", "Carr", "ac123@gmail.com", "34567812", "Level 3", "3"),
("Wade", "Luna", "wl123@gmail.com", "45678123", "Level 4", "4"),
("Cash", "Carr", "cc123@gmail.com", "56781234", "Level 5", "5"),
("Jake", "West", "jwe123@gmail.com", "67812345", "Level 6", "6");

select * from library_member;

-- ("nithin", "Ch", "nch23@gmail.com", "78123456", "Level 7", "7"),
-- ("Chandu", "Gadupudi", "cg123@gmail.com", "81234567", "Level 8", "8"),
-- ("Prasanthi", "Ravuri", "pr123@gmail.com", "91234567", "Level 9", "9"),
-- ("Meena", "k", "mk123@gmail.com", "21354678", "Level 10", "10");

insert into checkout (isbn, member_id, checkout_date, due_Date, is_returned) 
value ("123734","1","2023-11-06", "2023-12-01","0"),
("234154","2","2023-11-06", "2023-12-01","1"),
("459678","3","2023-10-06", "2023-11-01","1"),
("645987","4","2023-9-06", "2023-10-01","0"),
("832567","5","2023-8-06", "2023-9-01","1"),
("967432","6","2023-7-06", "2023-8-01","1");

select * from checkout;