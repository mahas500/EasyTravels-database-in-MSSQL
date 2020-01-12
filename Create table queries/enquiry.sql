GO
CREATE TABLE enquiry(
	 enquiry_id varchar(40) NOT NULL,
	 employee_id varchar (40) NOT NULL,
	 customer_id varchar (40) NOT NULL,
	 enquiry_detail text  NOT NULL,
	 enquiry_type varchar (20) NOT NULL,
 required_days int NULL,
 	 required_nights int NULL,
  	 required_country varchar(50) NULL,
	 created_on datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,

 CONSTRAINT  enquiry_id_pk  PRIMARY KEY (enquiry_id),
 CONSTRAINT employee_id_fk1 FOREIGN KEY(employee_id)
 REFERENCES employee(employee_id),
 CONSTRAINT customer_id_fk FOREIGN KEY(customer_id)
 REFERENCES customer(customer_id)


 )

