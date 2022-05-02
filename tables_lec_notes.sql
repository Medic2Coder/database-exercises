show databases;
/*can run one line at a time or entire file*/
/*when you get to number 5 just click green run button*/

/*columns represent fields in the table*/
/*rows represent records in the table*/
/*create user table with email firstname lastname and dob*/
/*TODO: check this code below:*/
create table users
(
    id        int          not null auto_increment,
    email     varchar(255) not null,
    firstname varchar(255) not null,
    lastname  varchar(255) not null,
    dob       date         not null,
    primary key (id)
);
/*TODO: Check these notes below:*/
# //int is any whole number without decimal
#     Float is any number with decimal
#     varchar is any string
#     date is any date
#     primary key is the primary key for the table
#     auto_increment is the auto incrementing id
#     not null is the field that is required
#     foreign key is the key that is used to link the table to another table
#     unique is the field that is unique
#     index is the field that is indexed

# null = absence of value