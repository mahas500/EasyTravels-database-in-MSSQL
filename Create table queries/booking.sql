GO
CREATE TABLE booking(
	 booking_id varchar(40) NOT NULL,
	 customer_id varchar (40) NOT NULL,
	 package_id varchar (40) NOT NULL,
	 created_on datetime  NULL,

 CONSTRAINT  booking_id_pk  PRIMARY KEY (booking_id),
 CONSTRAINT customer_id_fk1 FOREIGN KEY(customer_id)
 REFERENCES customer(customer_id),
 CONSTRAINT package_id_fk FOREIGN KEY(package_id)
 REFERENCES package(package_id)
)

