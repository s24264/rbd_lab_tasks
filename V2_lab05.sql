ALTER TABLE data.driver
    ADD COLUMN user_id INT NOT NULL;
ALTER TABLE data.driver
    ADD CONSTRAINT id_user_fk
    FOREIGN KEY (user_id) REFERENCES user(id);

ALTER TABLE data.passenger
    ADD COLUMN user_id INT NOT NULL;
ALTER TABLE data.passenger
    ADD CONSTRAINT id_user_fk
    FOREIGN KEY (user_id) REFERENCES user(id);

ALTER TABLE data.passenger_assessment
    ADD COLUMN passenger_id INT NOT NULL;
ALTER TABLE data.passenger_assessment
    ADD CONSTRAINT id_passenger_fk
    FOREIGN KEY (passenger_id) REFERENCES passenger(id);

ALTER TABLE data.passenger
    ADD COLUMN type_of_payment_id INT NOT NULL;
ALTER TABLE data.passenger
    ADD CONSTRAINT id_type_of_payment_fk
    FOREIGN KEY (type_of_payment_id) REFERENCES type_of_payment(id);

ALTER TABLE data.driver_assessment
    ADD COLUMN driver_id INT NOT NULL;
ALTER TABLE data.driver_assessment
    ADD CONSTRAINT id_driver_fk
    FOREIGN KEY (driver_id) REFERENCES driver(id);

ALTER TABLE data.drivers_car
    ADD COLUMN car_id INT NOT NULL;
ALTER TABLE data.drivers_car
    ADD CONSTRAINT id_car_fk
    FOREIGN KEY (car_id) REFERENCES car(id);

ALTER TABLE data.drivers_car
    ADD COLUMN driver_id INT NOT NULL;
ALTER  TABLE data.drivers_car
    ADD CONSTRAINT id_driver_fk
    FOREIGN KEY (driver_id) REFERENCES driver(id);

ALTER TABLE data.car
    ADD COLUMN vehicle_id INT NOT NULL;
ALTER TABLE data.car
    ADD CONSTRAINT id_vehicle_fk
    FOREIGN KEY  (vehicle_id) REFERENCES vehicle(id);

ALTER TABLE data.payment
    ADD COLUMN type_of_payment_id INT NOT NULL;
ALTER TABLE data.payment
    ADD CONSTRAINT id_type_of_payment_fk
    FOREIGN KEY (type_of_payment_id) REFERENCES type_of_payment(id);

ALTER TABLE data.address
    ADD COLUMN area_id INT NOT NULL ;
ALTER TABLE data.address
    ADD CONSTRAINT  id_area_fk
    FOREIGN KEY (area_id) REFERENCES area(id);

ALTER TABLE data.crossing
    ADD COLUMN driver_id INT NOT NULL;
ALTER TABLE data.crossing
    ADD CONSTRAINT id_driver_fk
    FOREIGN KEY (driver_id) REFERENCES driver(id);

ALTER TABLE data.crossing
    ADD COLUMN passenger_id INT NOT NULL;
ALTER TABLE data.crossing
    ADD CONSTRAINT id_passenger_fk
    FOREIGN KEY (passenger_id) REFERENCES passenger(id);

ALTER TABLE data.crossing
    ADD COLUMN  payment_id INT NOT NULL;
ALTER TABLE data.crossing
    ADD CONSTRAINT id_payment_fk
    FOREIGN KEY (payment_id) REFERENCES payment(id);

ALTER TABLE data.crossing
    ADD COLUMN collection_address_id INT NOT NULL;
ALTER TABLE data.crossing
    ADD CONSTRAINT id_address_fk
    FOREIGN KEY (collection_address_id) REFERENCES address(id);

ALTER TABLE data.crossing
    ADD COLUMN destination_address_id INT NOT NULL;
ALTER TABLE data.crossing
    ADD CONSTRAINT id_destination_address_fk
    FOREIGN KEY (destination_address_id) REFERENCES address(id);
