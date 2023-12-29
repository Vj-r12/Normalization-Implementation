*****************          FIRST NORMAL FORM IMPLEMENTATION          *****************


*NOTE* CONVERTING DENORMALIZED DATASET INTO FIRST NORMAL FORM.

** RULES TO BE FOLLOWED **

1). Every column need to have single value.
2). Each row should be unique. Either through a single or multiple columns. Not mandatory to have primary key.


**** DDL SCRIPT ****

-- CREATING TABLE SALES_ORDER_INFO_1NF.

CREATE TABLE SALES_ORDER_INFO_1NF
    ( 
	ORDER_NUMBER VARCHAR,
	QUANTITY INT,
	PRODUCT_PRICE INT,
	TOTAL_PRICE INT, 
	PRODUCT_ID VARCHAR,
	PRODUCT_NAME VARCHAR,
	CUSTOMER_NAME VARCHAR,
	CONTACT_NUMBER BIGINT,
	CITY VARCHAR, 
	STATE VARCHAR,
	COUNTRY VARCHAR,
	STATUS VARCHAR, 
	ORDER_DATE DATE,
	PAYMENT_METHOD VARCHAR,
	ENTERPRISE_NAME VARCHAR
	);


**** DML SCRIPT ****

-- INSERTING DATA INTO SALES_ORDER_INFO_1NF.

INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN1',8,1099,8792,'PD1','CHARGER','MANAV',4642322436,'HYDERBAD','TELANGANA','INDIA','SHIPPED','29-01-2023','UPI','TECHHUB EMPORIUM');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN1',2,699,1398,'PD4','KEYBOARD','MANAV',4642322436,'HYDERBAD','TELANGANA','INDIA','SHIPPED','29-01-2023','UPI','TECHHUB EMPORIUM');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN2',9,1899,17091,'PD2','MOUSE','KUNAL',2909626533,'HUBLI','KARNATAKA','INDIA','CANCELLED','31-01-2023','GOOGLE PAY','CIRCUITMINDS ELECTRONICS');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN2',3,1899,5697,'PD3','EARPHONE','KUNAL',2909626533,'HUBLI','KARNATAKA','INDIA','CANCELLED','31-01-2023','GOOGLE PAY','CIRCUITMINDS ELECTRONICS');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN3',11,699,7689,'PD4','KEYBAORD','OMKAR DHALE',6257345868,'MUMBAI','MAHARASHTRA','INDIA','CANCELLED','01-02-2023','AMAZON PAY','DIGITALVISTA TECH DEPOT');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN4',13,499,6487,'PD5','HARDDISK','VIVEK',5530302685,'NASHIK','MAHARASHTRA','INDIA','SHIPPED','06-02-2023','UPI','ELECTRONELITE GADGETS');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN4',3,1899,5697,'PD2','MOUSE','VIVEK',5530302685,'NASHIK','MAHARASHTRA','INDIA','SHIPPED','06-02-2023','UPI','ELECTRONELITE GADGETS');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN5',8,299,2392,'PD6','DATA CABLE','PAVAN',6671792532,'BANGALORE','KARNATAKA','INDIA','SHIPPED','07-02-2023','PHONEPE','QUANTUMQUEST ELECTRONICS');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN6',10,299,2990,'PD7','LAPTOP STAND','TANYA',8326362743,'DHARWARD','KARNATAKA','INDIA','ON HOLD','09-02-2023','CASH','POWERPULSE TECH SOLUTIONS');
INSERT INTO SALES_ORDER_INFO_1NF (ORDER_NUMBER,QUANTITY,PRODUCT_PRICE,TOTAL_PRICE,PRODUCT_ID,PRODUCT_NAME,CUSTOMER_NAME,CONTACT_NUMBER,CITY,STATE,
								  COUNTRY,STATUS,ORDER_DATE,PAYMENT_METHOD,ENTERPRISE_NAME
								 )
VALUES ('ODN6',12,1099,13188,'PD1','CHARGER','TANYA',8326362743,'DHARWARD','KARNATAKA','INDIA','ON HOLD','09-02-2023','CASH','POWERPULSE TECH SOLUTIONS');


-- FETCH SALES_ORDER_INFO_1NF.

SELECT *
FROM SALES_ORDER_INFO_1NF;