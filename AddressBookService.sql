-- welcome to address book service
-- UC1 ability to create a Address Book Service database


create database Address_Book_Service;

/*UC2 ability to create Address Book
 table with first name and last name, address, city , state
 , zip , phone number and email etc
*/

-- to perform operations on current database
use address_book_service;



create table Contact_table(
first_name varchar(255) not null,
last_name varchar(255),
address varchar(255),
city   varchar(255),
state   varchar(255),
zip   varchar(255),
phone_number varchar(20) primary key,
email varchar(255)
);

/*
  UC3 ability to insert new contact in the address book database
  system

*/
insert into contact_table(first_name,last_name,address,city,state,zip,phone_number,email) values
('david','warner','n5s3,sojanaager,kalegaon','mumbai','maharashtra','345543','000000000','warner@gmail.com'),
('michle','hustey','ere,sdf,kalegaon','pune','maharashtra','333333','1111111111','michel@gmail.com');

/*
UC4 ability to edit existing constact details based on their name
in the address book system
*/

-- to update we need to set sefe mood update =0
SET SQL_SAFE_UPDATES = 0;

update contact_table
set address= 'govandi', city='mumbai', state='maharashtra',email='updated@gamil.com',zip='999999'
WHERE first_name='david';

-- again I have set safe mood upadate to  1 to not change values in shell 
SET SQL_SAFE_UPDATES = 1;

/*
UC5
ability to delete person using person's name
*/


-- to delete contact based on name first we need to set safe mode =0
SET SQL_SAFE_UPDATES = 0;

delete from contact_table
where first_name='michle';


-- to again set safe mood on
SET SQL_SAFE_UPDATES = 1;

/*
UC6 ability to retrieve person belonging to a City or state form 
the address book
*/

select * from contact_table
where city='pune' or state='maharashtra';

/*
 UC7 ability to understanda the size of address book by city  and state

*/

use  address_book_service;

select * from contact_table;

insert into contact_table(first_name,last_name,address,city,state,zip,phone_number,email) values
('brotwan','warner','asdf,kalegaon','mumbai','maharashtra','987','7777777777','warner@gmail.com');

select city,state , count(*) from contact_table
group by state,city;



/*
 UC8 ability to retriveve entries sorted alphabatically by perosn's name for 
 a given city
*/

select first_name , city from contact_table
order by first_name;

alter table contact_table
add type varchar(255);
select * from contact_table;

update  contact_table
set type='friend'
where first_name='david';

update  contact_table
set type='friend'
where first_name='michle';

update  contact_table
set type='family'
where first_name='brotwan';
