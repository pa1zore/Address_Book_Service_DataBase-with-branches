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


