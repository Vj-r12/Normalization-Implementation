*****************          THIRD NORMAL FORM IMPLEMENTATION          *****************


**** CREATING FACT TABLE AND DIMENSION TABLES WITH USING THIRD NORMAL FORM CONCEPT. ****


*NOTE* CONVERTING SECOND NORMAL FORM DATASET INTO THIRD NORMAL FORM.


** RULES TO BE FOLLOWED **

1). Must be in 2NF.
2). Avoid Transitive dependency.


**** DDL SCRIPT ****

-- CREATING TABLE SALES_ORDER_INFO_3NF. 

CREATE TABLE SALES_ORDER_INFO_3NF
    (
	ORDER_ID int PRIMARY KEY,
	ORDER_NUMBER varchar,
	QUANTITY int,
	PRODUCT_PRICE int,
	TOTAL_PRICE int,
	ORDER_DATE date,
    PAYMENT_METHOD VARCHAR,
	STATUS varchar,
	PRODUCT_ID varchar,
	CUSTOMER_ID varchar,
	ENTERPRISE_ID varchar,
	CONSTRAINT FK_PRODUCT
	FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT_INFO_3NF(PRODUCT_ID),
	CONSTRAINT FK_CUSTOMER
	FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_INFO_3NF(CUSTOMER_ID),
	CONSTRAINT FK_ENTERPRISE
	FOREIGN KEY (ENTERPRISE_ID) REFERENCES ENTERPRISE_INFO_3NF(ENTERPRISE_ID)
    );
	
	
**** DML SCRIPT ****	
	
-- INSERTING DATA INTO SALES_ORDER_INFO_3NF.	
	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(1,'ODN1',8,1099,8792,'29-01-2023','UPI','SHIPPED','PD1','CID1','E1');
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(2,'ODN1',2,699,1398,'30-01-2023','UPI','SHIPPED','PD4','CID1','E1');
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(3,'ODN2',9,1899,17091,'31-01-2023','GOOGLE PAY','Cancelled','PD2','CID2','E2');
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(4,'ODN2',3,1899,5697,'31-01-2023','GOOGLE PAY','Cancelled','PD3','CID2','E2');	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(5,'ODN3',11,699,7689,'01-02-2023','AMAZON PAY','Cancelled','PD4','CID3','E3');	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(6,'ODN4',13,499,6487,'06-02-2023','UPI','SHIPPED','PD5','CID4','E4');	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(7,'ODN4',3,1899,5697,'06-02-2023','UPI','SHIPPED','PD2','CID4','E4');	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(8,'ODN5',8,299,2392,'07-02-2023','PHONEPE','SHIPPED','PD6','CID5','E5');	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(9,'ODN6',10,299,2990,'09-02-2023','CASH','ON HOLD','PD7','CID6','E6');	
INSERT INTO SALES_ORDER_INFO_3NF(ORDER_ID,ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,ORDER_DATE,PAYMENT_METHOD,STATUS,PRODUCT_ID,CUSTOMER_ID,ENTERPRISE_ID)
VALUES(10,'ODN6',12,1099,13188,'09-02-2023','CASH','ON HOLD','PD1','CID6','E6');	


**** DDL SCRIPT ****

-- CREATING TABLE PRODUCT_INFO_3NF.

CREATE TABLE PRODUCT_INFO_3NF
    (
	PRODUCT_ID varchar PRIMARY KEY,
	PRODUCT_NAME varchar,
	PRODUCT_PRICE int
	);


**** DML SCRIPT ****

-- INSERTING DATA INTO PRODUCT_INFO_3NF.

INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD1','CHARGER',1099);
INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD2','MOUSE',1899);
INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD3','EARPHONE',1899);
INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD4','KEYBOARD',699);
INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD5','HARDDISK',499);
INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD6','DATA CABLE',299);
INSERT INTO PRODUCT_INFO_3NF(PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE) VALUES ('PD7','LAPTOP STAND',299);


**** DDL SCRIPT ****

-- CREATING TABLE CUSTOMER_INFO_3NF.

CREATE TABLE CUSTOMER_INFO_3NF
    (
	CUSTOMER_ID varchar PRIMARY KEY,
	CUSTOMER_NAME varchar,
	CONTACT_NUMBER bigint,
	CITY varchar,
	STATE varchar,
	COUNTRY varchar
    );
	

**** DML SCRIPT ****

-- INSERTING DATA INTO CUSTOMER_INFO_3NF.

INSERT INTO CUSTOMER_INFO_3NF (CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY) 
VALUES ('CID1','MANAV',4642322436,'HYDERBAD','TELANGANA','INDIA');
INSERT INTO CUSTOMER_INFO_3NF (CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID2','KUNAL',2909626533,'HUBLI','KARNATAKA','INDIA');
INSERT INTO CUSTOMER_INFO_3NF (CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID3','OMKAR DHALE',6257345868,'MUMBAI','MAHARASHTRA','INDIA');
INSERT INTO CUSTOMER_INFO_3NF (CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID4','VIVEK',5530302685,'NASHIK','MAHARASHTRA','INDIA');
INSERT INTO CUSTOMER_INFO_3NF (CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY)
VALUES ('CID5','PAVAN',6671792532,'BANGALORE','KARNATAKA','INDIA');
INSERT INTO CUSTOMER_INFO_3NF (CUSTOMER_ID,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,COUNTRY) 
VALUES ('CID6','TANYA',8326362743,'DHARWARD','KARNATAKA','INDIA');	


**** DDL SCRIPT ****

-- CREATING TABLE ENTERPRISE_INFO_3NF.

CREATE TABLE ENTERPRISE_INFO_3NF
    (
	ENTERPRISE_ID varchar PRIMARY KEY,
	ENTERPRISE_NAME varchar
	);


**** DML SCRIPT ****

-- INSERTING DATA INTO ENTERPRISE_INFO_3NF.

INSERT INTO ENTERPRISE_INFO_3NF (ENTERPRISE_ID,ENTERPRISE_NAME) VALUES ('E1','TECHHUB EMPORIUM');
INSERT INTO ENTERPRISE_INFO_3NF (ENTERPRISE_ID,ENTERPRISE_NAME) VALUES ('E2','CIRCUITMINDS ELECTRONICS');
INSERT INTO ENTERPRISE_INFO_3NF (ENTERPRISE_ID,ENTERPRISE_NAME) VALUES ('E3','DIGITALVISTA TECH DEPOT');
INSERT INTO ENTERPRISE_INFO_3NF (ENTERPRISE_ID,ENTERPRISE_NAME) VALUES ('E4','ELECTRONELITE GADGETS');
INSERT INTO ENTERPRISE_INFO_3NF (ENTERPRISE_ID,ENTERPRISE_NAME) VALUES ('E5','QUANTUMQUEST ELECTRONICS');
INSERT INTO ENTERPRISE_INFO_3NF (ENTERPRISE_ID,ENTERPRISE_NAME) VALUES ('E6','POWERPULSE TECH SOLUTIONS');


-- FETCH ALL TABLES.

SELECT *
FROM SALES_ORDER_INFO_3NF S
JOIN PRODUCT_INFO_3NF P ON S.PRODUCT_ID = P.PRODUCT_ID
JOIN ENTERPRISE_INFO_3NF E ON S.ENTERPRISE_ID = E.ENTERPRISE_ID
JOIN CUSTOMER_INFO_3NF C ON S.CUSTOMER_ID = C.CUSTOMER_ID;