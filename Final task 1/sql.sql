create database events_db;
use events_db;
create table events (
event_id int auto_increment
primary key,
event_name varchar(255) not null
);

create table attendees (
attendee_id int auto_increment
primary key,
event_name varchar(255) not null
);
create table event_attendees (
event_id int,
attendee_id int,
foreign key(event_id)
references events (event_id),
foreign key (attendee_id)
references attendees(attendee_id)
);
create table event_sponsors (
sponsor_id int auto_increment
primary key,
event_id int,
sponsor_name varchar(255) not null,
foreign key(event_id)
references events(event_id)
);




