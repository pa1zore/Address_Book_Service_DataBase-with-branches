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



