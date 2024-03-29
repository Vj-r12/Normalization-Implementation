*****************          SECOND NORMAL FORM IMPLEMENTATION          *****************


**** CREATING FACT TABLE AND DIMENSION TABLES WITH USING SECOND NORMAL FORM CONCEPT. ****


*NOTE* CONVERTING FIRST NORMAL FORM DATASET INTO SECOND NORMAL FORM.

** RULES TO BE FOLLOWED **

1). Must be in 1NF.
2). All non key columns must be fully dependent on candidate key.
i.e. if a non-key column is partially dependent on candidate key. then split them into separate tables.
3). Every table should have primary key & relationship between the tables should be formed using foreign key.


**** DDL SCRIPT ****

-- CREATING TABLE SALES_ORDER_INFO_2NF.
.
CREATE TABLE SALES_ORDER_INFO_2NF  
    ( 
	ORDER_ID INT PRIMARY KEY,
	ORDER_NUMBER VARCHAR,
	QUANTITY INT,
	PRODUCT_PRICE INT,
	TOTAL_PRICE INT,
	ENTERPRISE_NAME VARCHAR,
	ORDER_DATE DATE,
    PAYMENT_METHOD VARCHAR,
	STATUS VARCHAR,
	PRODUCT_ID VARCHAR,
	CUSTOMER_ID VARCHAR,
	CONSTRAINT FK_PRODUCT
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT_INFO_2NF(PRODUCT_ID),
	CONSTRAINT FK_CUSTOMER
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_INFO_2NF(CUSTOMER_ID)
	);


**** DML SCRIPT ****

-- INSERTING DATA INTO SALES_ORDER_INFO_2NF.

INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(1,'ODN1',8,1099,8792,'TECHHUB EMPORIUM','29-01-2023','UPI','SHIPPED','PD1','CID1');
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(2,'ODN1',2,699,1398,'TECHHUB EMPORIUM','30-01-2023','UPI','SHIPPED','PD4','CID1');
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(3,'ODN2',9,1899,17091,'CIRCUITMINDS ELECTRONICS','31-01-2023','GOOGLE PAY','CANCELLED','PD2','CID2');
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(4,'ODN2',3,1899,5697,'CIRCUITMINDS ELECTRONICS','31-01-2023','GOOGLE PAY','CANCELLED','PD3','CID2');	
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(5,'ODN3',11,699,7689,'DIGITALVISTA TECH DEPOT','01-02-2023','AMAZON PAY','CANCELLED','PD4','CID3');	
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(6,'ODN4',13,499,6487,'ELECTRONELITE GADGETS','06-02-2023','UPI','SHIPPED','PD5','CID4');	
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(7,'ODN4',3,1899,5697,'ELECTRONELITE GADGETS','06-02-2023','UPI','SHIPPED','PD2','CID4');	
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(8,'ODN5',8,299,2392,'QUANTUMQUEST ELECTRONICS','07-02-2023','PHONEPE','SHIPPED','PD6','CID5');	
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(9,'ODN6',10,299,2990,'POWERPULSE TECH SOLUTIONS','09-02-2023','CASH','ON HOLD','PD7','CID6');	
INSERT INTO SALES_ORDER_INFO_2NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ENTERPRISE_NAME,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID)
VALUES(10,'ODN6',12,1099,13188,'POWERPULSE TECH SOLUTIONS','09-02-2023','CASH','ON HOLD','PD1','CID6');	


**** DDL SCRIPT ****

-- CREATING TABLE PRODUCT_INFO_2NF.

CREATE TABLE PRODUCT_INFO_2NF
	(
	PRODUCT_ID VARCHAR PRIMARY KEY,
	PRODUCT_NAME VARCHAR,
	PRODUCT_PRICE INT
    );


**** DML SCRIPT ****

-- INSERTING DATA INTO PRODUCT_INFO_2NF.

INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD1','CHARGER',1099);
INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD2','MOUSE',1899);
INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD3','EARPHONE',1899);
INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD4','KEYBOARD',699);
INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD5','HARDDISK',499);
INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD6','DATA CABLE',299);
INSERT INTO PRODUCT_INFO_2NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD7','LAPTOP STAND',299);


**** DDL SCRIPT ****

-- CREATING TABLE CUSTOMER_INFO_2NF.

CREATE TABLE CUSTOMER_INFO_2NF
    (
	CUSTOMER_ID varchar PRIMARY KEY,
	CUSTOMER_NAME varchar,
	CONTACT_NUMBER bigint,
	CITY varchar,
	STATE varchar,
	COUNTRY varchar
    );


**** DML SCRIPT ****

-- INSERTING DATA INTO CUSTOMER_INFO_2NF.

INSERT INTO CUSTOMER_INFO_2NF(CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID1','MANAV',4642322436,'HYDERBAD','TELANGANA','INDIA');
INSERT INTO CUSTOMER_INFO_2NF(CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID2','KUNAL',2909626533,'HUBLI','KARNATAKA','INDIA');
INSERT INTO CUSTOMER_INFO_2NF(CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY) 
VALUES ('CID3','OMKAR DHALE',6257345868,'MUMBAI','MAHARASHTRA','INDIA');
INSERT INTO CUSTOMER_INFO_2NF(CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID4','VIVEK',5530302685,'NASHIK','MAHARASHTRA','INDIA');
INSERT INTO CUSTOMER_INFO_2NF(CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID5','PAVAN',6671792532,'BANGALORE','KARNATAKA','INDIA');
INSERT INTO CUSTOMER_INFO_2NF(CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID6','TANYA',8326362743,'DHARWARD','KARNATAKA','INDIA');


-- FETCH ALL TABLES.

SELECT * FROM SALES_ORDER_INFO_2NF S
JOIN PRODUCT_INFO_2NF P ON S.PRODUCT_ID = P.PRODUCT_ID
JOIN CUSTOMER_INFO_2NF C ON S.CUSTOMER_ID = C.CUSTOMER_ID;