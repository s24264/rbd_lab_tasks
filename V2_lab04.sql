CREATE SCHEMA data;
CREATE TABLE data.user(
    id serial PRIMARY KEY,
    name varchar(100),
    surename varchar(100),
    email varchar(100),
    telephone_number varchar(100), 
);
CREATE TABLE data.passenger(
    id serial PRIMARY KEY,
);
CREATE TABLE data.passenger_assessment(
    id serial PRIMARY KEY,
    behaviour int NOT NULL,
    timelines int NOT NULL,
);
CREATE TABLE data.driver_assessment(
    id serial PRIMARY KEY,
    skills int NOT NULL,
    condition_of_the_car int NOT NULL,
);
CREATE TABLE data.driver(
    id serial PRIMARY KEY,
    image byte[],
);
CREATE TABLE data.drivers_car(
    id serial PRIMARY KEY,
    registration_number varchar(25),
    color varchar(25),
);
CREATE TABLE data.car(
    id serial PRIMARY KEY,
    brand varchaar(100),
    model varchar(100),
);
CREATE TABLE data.vehicle(
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL,
);
CREATE TABLE data.crossing(
    id serial PRIMARY KEY,
    distance double NOT NULL,
);
CREATE TABLE data.type_of_payment(
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL,
);
CREATE TABLE data.payment(
    id serial PRIMARY KEY,
    value money NOT NULL,
);
CREATE TABLE data.address(
    id serial PRIMARY KEY,
    street varchar(100) NOT NULL,
    house_number varchar(25),
    flat_number varchar(25),
    zip_code varchar(25) NOT NULL,
    city varchar(25) NOT NULL,
    country varchar(25) NOT NULL,
);
CREATE TABLE data.area(
    id serial PRIMARY KEY,
    name varchar(255) NOT NULL,
);
