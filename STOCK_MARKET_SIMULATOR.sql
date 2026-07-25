
	CREATE DATABASE IF NOT EXISTS STOCK_MARKET_SIMULATOR2;
	USE STOCK_MARKET_SIMULATOR2;

	drop table if exists USER;
	create table USER (
		User_ID varchar(50) not null,
		First_name varchar(50) not null,
		Last_name varchar(50) not null,
		Street varchar(50) ,
		City varchar(50) ,
		Province varchar(20) ,
		Contact_no varchar(15) not null,
		primary key (User_ID));
	INSERT INTO USER(User_ID, First_name, Last_name, Street, City, Province, Contact_no)
	VALUES('USR001' ,'Charith', 'Disanayake', 'Passaramulla Street', 'Galle', 'Southern', '0712525251');
	INSERT INTO USER
	VALUES('USR002','Dilthini', 'Weerasekara', 'Wakwella', 'Hapugala', 'Southern', '045647845');
	INSERT INTO USER
	VALUES('USR003','Nuwandika', 'Weheragoda', 'Galagama Road', 'Balangoda', 'Sabaragamuwa', '0124545456');
	INSERT INTO USER
	VALUES('USR004', 'Dulmi', 'Delgahathenna', 'Hanthana Road', 'Bandarawela', 'Uva', '012365479' );
	INSERT INTO USER
	VALUES('USR005', 'Piyumi', 'Ariyarathna', 'Rassagala Street', 'Gampaha', 'Western', '012566852' );
	INSERT INTO USER
	VALUES('USR006', 'Sarath', 'Kumara', 'Temple Road', 'Mathara', 'Southern', '0712525258');       selecT * from USER;


	drop table if exists PROFILE;
	create table PROFILE(
		Profile_ID varchar(50) not null,
		Bio varchar(100),
		Image_url varchar(100),
		primary key(Profile_ID)
	);

	insert into PROFILE(Profile_ID, Bio, Image_url)
	values('PRF001','Day trader focused on tech stocks.', 'http://example.com/images/alice.jpg');
	insert into PROFILE
	values('PRF002', 'Long-term value investor.', 'http://example.com/images/bob.jpg');
	insert into PROFILE
	values('PRF003', 'Crypto enthusiast exploring traditional stocks.', NULL);
	insert into PROFILE
	values('PRF004', 'Retirement portfolio manager.', 'http://example.com/images/diana.jpg' );
	insert into PROFILE
	values('PRF005', 'Crypto enthusiast exploring traditional stocks.', NULL);
	insert into PROFILE
	values('PRF006', 'High-risk growth seeker.', 'http://example.com/images/fiona.jpg');

	selecT * from PROFILE;
	drop table if exists PORTFOLIO;
	create table PORTFOLIO(
		Portfolio_ID varchar(50) not null,
		Total_value decimal(15,2) not null default 00.00,
		Name varchar(30) not null,
		primary key(Portfolio_ID)
	);

	insert into PORTFOLIO(Portfolio_ID, Total_value, Name)
	values('PFT001', 25000.50, 'Tech Growth Fund' );
	insert into PORTFOLIO
	values('PFT002', 125000.00, 'Conservative Retirement');
	insert into PORTFOLIO
	values('PFT003', 5000.00, 'Aggressive Speculation');
	insert into PORTFOLIO
	values('PFT004', 85400.75, 'Dividend Income Engine');
	insert into PORTFOLIO
	values('PFT005', 310000.20, 'Core Institutional');
	insert into PORTFOLIO
	values('PFT006', 1200.00, 'Penny Stock Playground');

	select * FROM PORTFOLIO;
	drop table if exists STOCK_EXCHANGE;
	create table STOCK_EXCHANGE(
		Exchange_code varchar(50) not null,
		Exchange_name varchar(50) not null,
		Location varchar(50),
		primary key(Exchange_code)
	);
	insert into STOCK_EXCHANGE(Exchange_code, Exchange_name, Location)
	values('AABD', 'Sara Stock Exchange', 'Colombo-7');
	insert into STOCK_EXCHANGE
	values('AACD', 'AAD Exchange Group', 'Galle');
	insert into STOCK_EXCHANGE
	values('ASED','Tesm Exchange Group', 'Panadura');
	insert into STOCK_EXCHANGE
	values('ASDG', 'John Exchange Company', 'Colombo_1');
	insert into STOCK_EXCHANGE
	values('GAF','SUP Stock Exchange', 'Rathnapura');
	insert into STOCK_EXCHANGE
	values('ARTY', 'Nas Exchange Company', 'Gampaha');

	select * from STOCK_EXCHANGE;

	drop table if exists SECURITY;
	create table SECURITY(
		Security_ID varchar(50) not null,
		Name varchar(30) not null,
		Symbol varchar(30) not null,
		Assets decimal(15,2) not null default 00.00,
		Exchange varchar(50) not null,
		primary key(Security_ID));
	insert into SECURITY(Security_ID, Name, Symbol, Assets, Exchange)
	values('SEC001', 'Apple Inc.', 'AAPL', 350000.00, 'AABD');
	insert into SECURITY
	values('SEC002','Microsoft Corp.', 'MSFT', 420000.00, 'AABD');
	insert into SECURITY
	values('SEC003', 'Royal Bank of Canada', 'RY', 180000.00, 'GAF');
	insert into SECURITY
	values('SEC004', 'Corporate Bond Apple 2030', 'AAPL30', 50000.00, 'ASDG');
	insert into SECURITY
	values('SEC005','US Treasury Bond 10Y', 'US10Y', 1000000.00, 'ASDG');
	insert into SECURITY
	values('SEC006', 'Tesla Inc.', 'TSLA', 290000.00, 'AABD');
	select * from SECURITY;

	drop table if exists BOND;
	create table BOND(
		Bond_ID varchar(50) not null,
		Security_ID varchar(50) not null,
		Coupon_rate Decimal(5,2) not null,
		Maturity_date date not null,
		primary key (Bond_ID) );
	insert into BOND(Bond_ID, Security_ID, Coupon_rate, Maturity_date)
	values('BND001', 'SEC004', 4.25, '2035-05-15');
	insert into BOND
	values('BND002', 'SEC006', 3.75, '2030-09-01');
	insert into BOND
	values('BND003', 'SEC004', 4.50, '2036-02-28');
	insert into BOND
	values('BND004', 'SEC006', 5.10, '2032-12-15');
	insert into BOND
	values('BND005', 'SEC004', 3.80, '2028-06-30');
	insert into BOND
	values('BND006', 'SEC006', 4.00, '2031-04-10');

	select * from BOND;

	/*drop table if exists STOCK;*/
	create table STOCK(
		Stock_ID varchar(50) not null,
		Market_cap decimal(15,2) not null,
		Security_ID varchar(50) not null,
		Dividend_yield decimal(5,2) not null default 00.00,
		primary key(Stock_ID));

	insert into STOCK(Stock_ID, Market_cap, Security_ID, Dividend_yield)
	values('STK001', 32000000.00, 'SEC001', 0.55);
	insert into STOCK
	values('STK002', 34000000.00, 'SEC002', 0.72);
	insert into STOCK
	values('STK003', 15000000.00, 'SEC003', 4.10);
	insert into STOCK
	values('STK004', 70000000.00, 'SEC005', 0.00);
	insert into STOCK
	values('STK005', 12000000.00, 'SEC001', 4.10);
	insert into STOCK
	values('STK006', 14000000.00, 'SEC002', 0.00);
	select * from STOCK;

	drop table if exists ORDERS;
	create table ORDERS (
		Order_no varchar(20) not null,
		Limit_price decimal(15,2),
		Quantity int not null,
		Order_type varchar(20) not null,
		Timestamp DateTime not null,
		primary key(Order_no) );
	INSERT into ORDERS(Order_no, Limit_price, Quantity, Order_type, Timestamp)
	values('ORD001', 185.50, 50, 'BUY_LIMIT', '2026-07-15 09:30:00');
	insert into ORDERS
	values('ORD002', NULL, 10, 'BUY_MARKET', '2026-07-15 10:15:22');
	insert into ORDERS
	values('ORD003', 420.00, 25, 'SELL_LIMIT', '2026-07-15 11:00:05');
	insert into ORDERS
	values('ORD004', 98.25, 100, 'BUY_LIMIT', '2026-07-15 13:45:10');
	insert into ORDERS
	values('ORD005', NULL, 5, 'SELL_MARKET', '2026-07-15 14:20:00');
	insert into ORDERS
	values('ORD006', 210.00, 15, 'BUY_LIMIT', '2026-07-15 15:55:59');
	select * from ORDERS;

/*weak entities: TRANSACTION AND  ORDERS*/

/*drop table if exists TRANSACTION;*/
create table TRANSACTION(
		Transaction_ID varchar(50) not null,
		Exec_price decimal(15,2) not null,
		Exec_timestamp datetime not null,
		Quantity_exec int not null,
		primary key (Transaction_ID) );
	insert into TRANSACTION(Transaction_ID, Exec_price, Exec_timestamp, Quantity_exec)
	values('TXN001', 185.25, '2026-07-15 09:31:12', 50);
	insert into TRANSACTION
	values('TXN002', 422.10, '2026-07-15 10:15:25', 10);
	insert into TRANSACTION
	values('TXN003', 420.00, '2026-07-15 11:05:00', 25);
	insert into TRANSACTION
	values('TXN004', 98.25, '2026-07-15 14:00:02', 100);
	insert into TRANSACTION
	values('TXN005', 186.40, '2026-07-15 14:20:05', 5);
	insert into TRANSACTION
	values('TXN006', 209.95, '2026-07-15 15:56:01', 15);

	select * from TRANSACTION;

	/* Add Candidate Key constraint for SECURITY*/
	ALTER TABLE SECURITY ADD CONSTRAINT unique_security_symbol UNIQUE (Symbol);

	/*Add Candidate Key for USER*/
	/*UPDATE USER SET User_name = CONCAT(First_name, '_', Last_name);*/


	/*Database Modifications*/

	/*SECURITY table*/
	-- Updates
	/*UPDATE SECURITY SET Assets = 360000.00 WHERE Security_ID = 'SEC001';
	UPDATE SECURITY SET Name = 'Microsoft Corporation' WHERE Security_ID = 'SEC002';
	-- Deletion
	DELETE FROM SECURITY WHERE Security_ID = 'SEC006';*/

	select * from security;

	/*USER table*/
	-- Updates
	UPDATE USER SET Last_name = 'Dissanayake' WHERE User_ID = 'USR001';
	UPDATE USER SET City = 'Hapugala Junction' WHERE User_ID = 'USR002';
	-- Deletion
	DELETE FROM USER WHERE User_ID = 'USR006';
	select * from user;

	/*PROFILE table*/
	-- Updates
	UPDATE PROFILE SET Bio = 'Active Tech Day Trader' WHERE Profile_ID = 'PRF001';
	UPDATE PROFILE SET Image_url = 'http://example.com/images/bob_updated.jpg' WHERE Profile_ID = 'PRF002';
	-- Deletion
	DELETE FROM PROFILE WHERE Profile_ID = 'PRF006';
	select * from PROFILE;

	/*PORTFOLIO table*/
	-- Updates
	UPDATE PORTFOLIO SET Total_value = 26000.00 WHERE Portfolio_ID = 'PFT001';
	UPDATE PORTFOLIO SET Name = 'Retirement Core' WHERE Portfolio_ID = 'PFT002';
	-- Deletion
	DELETE FROM PORTFOLIO WHERE Portfolio_ID = 'PFT006';
	select * from portfolio;

	/*STOCK_EXCHANGR*/
	-- Updates
	UPDATE STOCK_EXCHANGE SET Exchange_name = 'Sara SE' WHERE Exchange_code = 'AABD';
	UPDATE STOCK_EXCHANGE SET Location = 'Colombo 07' WHERE Exchange_code = 'ASDG';
	-- Deletion
	DELETE FROM STOCK_EXCHANGE WHERE Exchange_code = 'ARTY';
	select * from STOCK_EXCHANGE;

	/*ORDERS table*/
	-- Updates
	UPDATE ORDERS SET Limit_price = 190.00 WHERE Order_no = 'ORD001';
	UPDATE ORDERS SET Quantity = 15 WHERE Order_no = 'ORD002';
	-- Deletion
	DELETE FROM ORDERS WHERE Order_no = 'ORD006';
	select * from ORDERS;

	/*STOCK table*/
	-- Updates
	UPDATE STOCK SET Dividend_yield = 0.60 WHERE Stock_ID = 'STK001';
	UPDATE STOCK SET Market_cap = 35000000.00 WHERE Stock_ID = 'STK002';
	-- Deletion
	DELETE FROM STOCK WHERE Stock_ID = 'STK006';
	select * from stock;

	/*BOND table*/
	UPDATE BOND SET Coupon_rate = 4.40 WHERE Bond_ID = 'BND001';
	UPDATE BOND SET Maturity_date = '2031-12-31' WHERE Bond_ID = 'BND002';
	-- Deletion	
	DELETE FROM BOND WHERE Bond_ID = 'BND006';
	select * from bond;

	/*transaction table*/
	UPDATE TRANSACTION SET Exec_price = 190.00 WHERE Transaction_ID = 'TXN001';
	UPDATE TRANSACTION SET Quantity_exec = 12 WHERE Transaction_ID = 'TXN002';
	-- Deletion
	DELETE FROM TRANSACTION WHERE Transaction_ID = 'TXN006';
	select * from transaction;


	/*forign key constraints*/

	CREATE TABLE PORTFOLIO_HOLDING (
		Portfolio_ID VARCHAR(50) NOT NULL,      
		Security_ID  VARCHAR(50) NOT NULL,       
		PRIMARY KEY (Portfolio_ID, Security_ID)
	);

	alter table user add column Manager_ID varchar(50);
	ALTER TABLE USER ADD CONSTRAINT fk_user_manager
		FOREIGN KEY (Manager_ID) REFERENCES USER(User_ID) ON DELETE SET NULL;
		
	update user set Manager_ID = 'USR001' where User_ID IN ('USR002', 'USR003');
	update user set Manager_ID = 'USR002' where User_ID IN ('USR004', 'USR005');
	update user set Manager_ID = 'USR003' where User_ID = 'USR006';

	select * FROM USER;

	alter table PROFILE add column User_ID varchar(50) unique;
	ALTER TABLE PROFILE ADD CONSTRAINT fk_profile_user
		FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE;
		
	update profile SET User_ID = 'USR001' WHERE Profile_ID = 'PRF001';
	update profile SET User_ID = 'USR002' WHERE Profile_ID = 'PRF002';
	update profile SET User_ID = 'USR003' WHERE Profile_ID = 'PRF003';
	update profile SET User_ID = 'USR004' WHERE Profile_ID = 'PRF004';
	update profile SET User_ID = 'USR005' WHERE Profile_ID = 'PRF005';
	update profile SET User_ID = 'USR006' WHERE Profile_ID = 'PRF006';

	select * FROM profile;

	alter table PORTFOLIO add column User_ID varchar(50);
	ALTER TABLE PORTFOLIO ADD CONSTRAINT fk_portfolio_user
		FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE;
		
	update PORTFOLIO SET User_ID = 'USR001' where Portfolio_ID IN ('PFT001', 'PFT006');
	update PORTFOLIO SET User_ID = 'USR002' where Portfolio_ID IN ('PFT003', 'PFT004');
	update PORTFOLIO SET User_ID = 'USR003' where Portfolio_ID IN ('PFT002', 'PFT005');

	select * from PORTFOLIO;

	ALTER TABLE SECURITY ADD CONSTRAINT fk_security_exchange
		FOREIGN KEY (Exchange) REFERENCES STOCK_EXCHANGE(Exchange_code) ON DELETE CASCADE;

	ALTER TABLE STOCK ADD CONSTRAINT fk_stock_security
		FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;
		
	ALTER TABLE BOND ADD CONSTRAINT fk_bond_security
		FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;

	alter table orders add column User_ID varchar(50);
	alter table orders add column Security_ID varchar(50);

	ALTER TABLE ORDERS
		ADD CONSTRAINT fk_orders_user FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE,
		ADD CONSTRAINT fk_orders_security FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;
	update orders set User_ID = 'USR001', Security_ID = 'SEC002' WHERE Order_no = 'ORD001';
	update orders set User_ID = 'USR002', Security_ID = 'SEC001' WHERE Order_no = 'ORD002';
	update orders set User_ID = 'USR001', Security_ID = 'SEC002' WHERE Order_no = 'ORD003';
	update orders set User_ID = 'USR005', Security_ID = 'SEC004' WHERE Order_no = 'ORD004';
	update orders set User_ID = 'USR003', Security_ID = 'SEC003' WHERE Order_no = 'ORD005';


	select * from orders;

	alter table transaction add column Order_no varchar(20);
	ALTER TABLE TRANSACTION ADD CONSTRAINT fk_transaction_orders
		FOREIGN KEY (Order_no) REFERENCES ORDERS(Order_no) ON DELETE CASCADE;

	update transaction SET Order_no = 'ORD001' WHERE Transaction_ID = 'TXN001';
	update transaction SET Order_no = 'ORD002' WHERE Transaction_ID = 'TXN002';
	update transaction SET Order_no = 'ORD003' WHERE Transaction_ID = 'TXN003';
	update transaction SET Order_no = 'ORD004' WHERE Transaction_ID = 'TXN004';
	update transaction SET Order_no = 'ORD005' WHERE Transaction_ID = 'TXN005';

	select * FROM transaction;

	ALTER TABLE PORTFOLIO_HOLDING
		ADD CONSTRAINT fk_holding_portfolio FOREIGN KEY (Portfolio_ID) REFERENCES PORTFOLIO(Portfolio_ID) ON DELETE CASCADE,
		ADD CONSTRAINT fk_holding_security FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;

	/*UPDATE  PORTFOLIO_HOLDING TABLE*/

	insert into PORTFOLIO_HOLDING(Portfolio_ID, Security_ID)
	values('PFT001', 'SEC001');
	insert into PORTFOLIO_HOLDING
	values('PFT001', 'SEC002');
	insert into PORTFOLIO_HOLDING
	values('PFT002', 'SEC003');
	insert into PORTFOLIO_HOLDING
	values('PFT003', 'SEC004');
	insert into PORTFOLIO_HOLDING
	values('PFT004', 'SEC005');
	insert into PORTFOLIO_HOLDING
	values('PFT005', 'SEC002');
	select * from PORTFOLIO_HOLDING;

	/*create a new table to seperate multivalued_attribute (contact no)*/
	create table USER_CONTACT(
		User_ID varchar(50) NOT NULL,
		Contact_no VARCHAR(15) NOT NULL,
		primary key(User_ID, Contact_no),
		foreign key(User_ID) references USER(User_ID) ON delete cascade
	);
		
	update orders 
	set User_ID = 'USR002', Security_ID = 'SEC001'
	WHERE Order_no = 'ORD002';

	update orders 
	set User_ID = 'USR001', Security_ID = 'SEC002' 
	WHERE Order_no = 'ORD003';

	update orders 
	set User_ID = 'USR005', Security_ID = 'SEC004' 
	WHERE Order_no = 'ORD004';

	insert into USER_CONTACT(User_ID, Contact_no)
	select User_ID,Contact_no
	FROM user;

	alter table user
	DROP column Contact_no;
	select * from user;
	select * FROM USER_CONTACT;

/*SIMPLE QUERIES*/

/*SELECT OPERATION*/
select * FROM USER;
SELECT * FROM USER WHERE Province = 'Southern';

/*PROJECT OPERATION*/
select * FROM security;
SELECT Symbol, Name FROM SECURITY;

/*CARTESSIAN PRODUCT OPERATION*/
select * FROM user;
SELECT U.User_ID, U.City, E.Exchange_code
FROM USER U, STOCK_EXCHANGE E;

/*CREATING A USER VIEW*/

select * from profile;
drop view IF exists PUBLIC_PROFILE_SUMMARY ;
CREATE VIEW PUBLIC_PROFILE_SUMMARY AS 
SELECT Profile_ID, Bio, Image_url 
FROM PROFILE;
SELECT * FROM PUBLIC_PROFILE_SUMMARY;

/*RENAMING OPERATION*/
select * FROM stock;
SELECT Stock_ID AS 'Stock Identifier', 
       Market_cap AS 'Total Market Capitalization'
FROM STOCK;

/*AGGREGATION FUNCTION*/
select * from portfolio;
SELECT AVG(Total_value) AS 'Average Portfolio Value' 
FROM PORTFOLIO;

/*USE OF LIKE*/
select * FROM orders;
SELECT * 
FROM ORDERS 
WHERE Order_type LIKE '%LIMIT%';
	
/*COMPLEX QUERIES*/

/*BASIC SET OF OPERATIONS WITHOUT USER VIEWS*/

/*1. UNION*/
SELECT ST.Security_ID AS Asset_ID 
FROM STOCK AS ST
UNION
SELECT BD.Security_ID AS Asset_ID 
FROM BOND AS BD;

/*2. UNTERSECTION*/
SELECT P.User_ID AS Active_User_ID 
FROM PROFILE AS P
WHERE P.User_ID IN (
    SELECT PT.User_ID 
    FROM PORTFOLIO AS PT
);

/*3.SET DIFFERENCE*/
SELECT SEC.Security_ID AS Unmapped_Security_ID 
FROM SECURITY AS SEC
WHERE SEC.Security_ID NOT IN (
    SELECT STK.Security_ID 
    FROM STOCK AS STK
);


/*4.DIVISION*/
SELECT O.User_ID AS Omnipresent_Trader_ID
FROM ORDERS AS O
WHERE O.Security_ID IN (SELECT S.Security_ID FROM SECURITY AS S WHERE S.Exchange = 'AABD')
GROUP BY O.User_ID
HAVING COUNT(DISTINCT O.Security_ID) = (
    SELECT COUNT(*) 
    FROM SECURITY AS SEC 
    WHERE SEC.Exchange = 'AABD'
);


DROP VIEW IF EXISTS VW_USER_DETAILS;
CREATE VIEW VW_USER_DETAILS AS 
SELECT User_ID, First_name, City FROM USER;
DROP VIEW IF EXISTS VW_PORTFOLIO_DETAILS;
CREATE VIEW VW_PORTFOLIO_DETAILS AS 
SELECT Portfolio_ID, Name, Total_value, User_ID FROM PORTFOLIO;

DROP VIEW IF EXISTS VW_SECURITY_EXCHANGE;
CREATE VIEW VW_SECURITY_EXCHANGE AS 
SELECT Security_ID, Symbol, Exchange FROM SECURITY;

DROP VIEW IF EXISTS VW_EXCHANGE_LOCATION;
CREATE VIEW VW_EXCHANGE_LOCATION AS 
SELECT Exchange_code, Exchange_name, Location FROM STOCK_EXCHANGE;

/*5. INNER JOIN*/

SELECT U.First_name AS Trader, P.Name AS Portfolio_Name 
FROM VW_USER_DETAILS AS U
INNER JOIN VW_PORTFOLIO_DETAILS AS P ON U.User_ID = P.User_ID;

/*6.NATURAL JOIN*/
SELECT NJ.First_name AS Account_Owner, NJ.Name AS Fund_Name, NJ.Total_value AS Balance
FROM (
    SELECT U.User_ID, U.First_name, P.Name, P.Total_value 
    FROM VW_USER_DETAILS U 
    NATURAL JOIN VW_PORTFOLIO_DETAILS P
) AS NJ;

/*7.LEFT-OUTR JOIN*/
/*CREATE VIEW VW_USER_DETAILS AS 
SELECT User_ID, First_name, City FROM USER;
CREATE VIEW VW_PORTFOLIO_DETAILS AS 
SELECT Portfolio_ID, Name, Total_value, User_ID FROM PORTFOLIO;*/
SELECT U.First_name AS Client_Name, P.Name AS Managed_Asset 
FROM VW_USER_DETAILS AS U
LEFT OUTER JOIN VW_PORTFOLIO_DETAILS AS P ON U.User_ID = P.User_ID;

/*8. RIGHT OUTER JOIN*/
/*DROP VIEW IF EXISTS VW_SECURITY_EXCHANGE;
CREATE VIEW VW_SECURITY_EXCHANGE AS 
SELECT Security_ID, Symbol, Exchange FROM SECURITY;
DROP VIEW IF EXISTS VW_EXCHANGE_LOCATION;
CREATE VIEW VW_EXCHANGE_LOCATION AS 
SELECT Exchange_code, Exchange_name, Location FROM STOCK_EXCHANGE;*/
SELECT S.Symbol AS Ticker, E.Exchange_name AS Trading_Floor 
FROM VW_SECURITY_EXCHANGE AS S
RIGHT OUTER JOIN VW_EXCHANGE_LOCATION AS E ON S.Exchange = E.Exchange_code;

/*9. FULL OUTER JOIN*/
SELECT S.Symbol AS Active_Ticker, E.Exchange_name AS Marketplace
FROM VW_SECURITY_EXCHANGE AS S
LEFT JOIN VW_EXCHANGE_LOCATION AS E ON S.Exchange = E.Exchange_code
UNION
SELECT S2.Symbol AS Active_Ticker, E2.Exchange_name AS Marketplace
FROM VW_SECURITY_EXCHANGE AS S2
RIGHT JOIN VW_EXCHANGE_LOCATION AS E2 ON S2.Exchange = E2.Exchange_code;

/*10. OUTER UNION*/
SELECT U.City AS Location_Point, 'User Residence' AS Entry_Type 
FROM VW_USER_DETAILS AS U
UNION ALL
SELECT E.Location AS Location_Point, 'Exchange Hub' AS Entry_Type 
FROM VW_EXCHANGE_LOCATION AS E;

/*NESTED QUERIES 1*/
SELECT P.Portfolio_ID AS Target_ID, P.Name AS High_Value_Portfolio, P.Total_value AS Valuation
FROM PORTFOLIO AS P
WHERE P.Total_value > (
    SELECT AVG(Sub_P.Total_value) 
    FROM PORTFOLIO AS Sub_P
);

/*NESTED QUERIES 2*/
SELECT PR.Profile_ID AS User_Profile, PR.Bio AS Account_Bio, P_Outer.Name AS Portfolio_Name
FROM PROFILE AS PR
INNER JOIN PORTFOLIO AS P_Outer ON PR.User_ID = P_Outer.User_ID
WHERE P_Outer.Total_value > (
    SELECT AVG(P_Inner.Total_value)
    FROM PORTFOLIO AS P_Inner
);

/*NESTED QUERIES 3*/
SELECT PR.Profile_ID AS User_Profile, PR.Bio AS Description 
FROM PROFILE AS PR
WHERE PR.User_ID IN (
    SELECT ORD.User_ID 
    FROM ORDERS AS ORD
    WHERE ORD.Order_no IN (
        SELECT TXN.Order_no 
        FROM TRANSACTION AS TXN
        WHERE TXN.Quantity_exec > 10
    )
);

/*CHAPTER_5: INITIALIZATION & INDEX BUILDING*/

 /*1.*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT P.User_ID AS Active_User_ID 
FROM PROFILE AS P 
WHERE P.User_ID IN (
    SELECT PT.User_ID 
    FROM PORTFOLIO AS PT
);

-- create index
CREATE INDEX idx_portfolio_user USING BTREE ON PORTFOLIO(User_ID);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT DISTINCT P.User_ID AS Active_User_ID 
FROM PROFILE AS P
INNER JOIN PORTFOLIO AS PT ON P.User_ID = PT.User_ID;

/*2.*/

-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT SEC.Security_ID AS Unmapped_Security_ID 
FROM SECURITY AS SEC 
WHERE SEC.Security_ID NOT IN (
    SELECT STK.Security_ID 
    FROM STOCK AS STK
);

-- create index
CREATE INDEX idx_stock_sec USING BTREE ON STOCK(Security_ID);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT SEC.Security_ID AS Unmapped_Security_ID 
FROM SECURITY AS SEC
LEFT JOIN STOCK AS STK ON SEC.Security_ID = STK.Security_ID
WHERE STK.Security_ID IS NULL;

/*3*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT O.User_ID AS Omnipresent_Trader_ID
FROM ORDERS AS O
WHERE O.Security_ID IN (SELECT S.Security_ID FROM SECURITY AS S WHERE S.Exchange = 'AABD')
GROUP BY O.User_ID
HAVING COUNT(DISTINCT O.Security_ID) = (
    SELECT COUNT(*) FROM SECURITY AS SEC WHERE SEC.Exchange = 'AABD'
);

-- create index
CREATE INDEX idx_orders_sec USING BTREE ON ORDERS(Security_ID);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT O.User_ID AS Omnipresent_Trader_ID 
FROM ORDERS AS O
USE INDEX (idx_orders_sec)
WHERE O.Security_ID IN (SELECT S.Security_ID FROM SECURITY AS S WHERE S.Exchange = 'AABD')
GROUP BY O.User_ID
HAVING COUNT(DISTINCT O.Security_ID) = (
    SELECT COUNT(*) FROM SECURITY AS SEC WHERE SEC.Exchange = 'AABD'
);

/*4*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT U.First_name AS Trader, P.Name AS Portfolio_Name 
FROM VW_USER_DETAILS AS U
INNER JOIN VW_PORTFOLIO_DETAILS AS P ON U.User_ID = P.User_ID;

-- create index
CREATE INDEX idx_port_user_val USING BTREE ON PORTFOLIO(User_ID, Total_value);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT U.First_name AS Trader, P.Name AS Portfolio_Name 
FROM VW_USER_DETAILS AS U 
INNER JOIN PORTFOLIO AS P FORCE INDEX (idx_port_user_val) ON U.User_ID = P.User_ID;

/*5*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT NJ.First_name AS Account_Owner, NJ.Name AS Fund_Name, NJ.Total_value AS Balance
FROM (
    SELECT U.User_ID, U.First_name, P.Name, P.Total_value 
    FROM VW_USER_DETAILS U 
    NATURAL JOIN VW_PORTFOLIO_DETAILS P
) AS NJ;

-- create index
CREATE INDEX idx_port_natural_join USING BTREE ON PORTFOLIO(User_ID, Total_value);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT U.First_name AS Account_Owner, P.Name AS Fund_Name, P.Total_value AS Balance
FROM USER AS U
INNER JOIN PORTFOLIO AS P FORCE INDEX (idx_port_natural_join) ON U.User_ID = P.User_ID;

/*6.*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT U.First_name AS Client_Name, P.Name AS Managed_Asset 
FROM VW_USER_DETAILS AS U
LEFT OUTER JOIN VW_PORTFOLIO_DETAILS AS P ON U.User_ID = P.User_ID;

-- create index
CREATE INDEX idx_port_left_outer USING BTREE ON PORTFOLIO(User_ID, Name);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT U.First_name AS Client_Name, P.Name AS Managed_Asset 
FROM USER AS U
LEFT OUTER JOIN PORTFOLIO AS P USE INDEX (idx_port_left_outer) ON U.User_ID = P.User_ID;

/*7*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT S.Symbol AS Active_Ticker, E.Exchange_name AS Marketplace
FROM VW_SECURITY_EXCHANGE AS S
LEFT JOIN VW_EXCHANGE_LOCATION AS E ON S.Exchange = E.Exchange_code
UNION
SELECT S2.Symbol AS Active_Ticker, E2.Exchange_name AS Marketplace
FROM VW_SECURITY_EXCHANGE AS S2
RIGHT JOIN VW_EXCHANGE_LOCATION AS E2 ON S2.Exchange = E2.Exchange_code;

-- create index
CREATE INDEX idx_sec_ex USING BTREE ON SECURITY(Exchange);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT S.Symbol AS Active_Ticker, E.Exchange_name AS Marketplace 
FROM SECURITY AS S LEFT JOIN STOCK_EXCHANGE AS E ON S.Exchange = E.Exchange_code
UNION ALL
SELECT S2.Symbol AS Active_Ticker, E2.Exchange_name AS Marketplace 
FROM STOCK_EXCHANGE AS E2 LEFT JOIN SECURITY AS S2 ON E2.Exchange_code = S2.Exchange
WHERE S2.Exchange IS NULL;

/*8*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT P.Portfolio_ID AS Target_ID, P.Name AS High_Value_Portfolio, P.Total_value AS Valuation
FROM PORTFOLIO AS P
WHERE P.Total_value > (
    SELECT AVG(Sub_P.Total_value) 
    FROM PORTFOLIO AS Sub_P
);

-- create index
CREATE INDEX idx_port_val USING BTREE ON PORTFOLIO(Total_value);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT P.Portfolio_ID AS Target_ID, P.Name AS High_Value_Portfolio, P.Total_value AS Valuation
FROM PORTFOLIO AS P
CROSS JOIN (SELECT AVG(Total_value) AS avg_val FROM PORTFOLIO) AS Agg
WHERE P.Total_value > Agg.avg_val;

/*9.*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT PR.Profile_ID AS User_Profile, PR.Bio AS Description 
FROM PROFILE AS PR
WHERE PR.User_ID IN (
    SELECT ORD.User_ID 
    FROM ORDERS AS ORD
    WHERE ORD.Order_no IN (
        SELECT TXN.Order_no 
        FROM TRANSACTION AS TXN
        WHERE TXN.Quantity_exec > 10
    )
);

-- create index
CREATE INDEX idx_txn_ord_qty USING BTREE ON TRANSACTION(Order_no, Quantity_exec);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT DISTINCT PR.Profile_ID AS User_Profile, PR.Bio AS Description 
FROM PROFILE AS PR
INNER JOIN ORDERS AS ORD ON PR.User_ID = ORD.User_ID
INNER JOIN TRANSACTION AS TXN ON ORD.Order_no = TXN.Order_no
WHERE TXN.Quantity_exec > 10;

/*10*/
-- BEFORE
EXPLAIN FORMAT=TRADITIONAL
SELECT PR.Profile_ID AS User_Profile, PR.Bio AS Account_Bio, P_Outer.Name AS Portfolio_Name
FROM PROFILE AS PR
INNER JOIN PORTFOLIO AS P_Outer ON PR.User_ID = P_Outer.User_ID
WHERE P_Outer.Total_value > (
    SELECT AVG(P_Inner.Total_value)
    FROM PORTFOLIO AS P_Inner
);

-- create index
CREATE INDEX idx_profile_user USING BTREE ON PROFILE(User_ID);

-- AFTER
EXPLAIN FORMAT=TRADITIONAL
SELECT PR.Profile_ID AS User_Profile, PR.Bio AS Account_Bio, P_Outer.Name AS Portfolio_Name 
FROM PROFILE AS PR
INNER JOIN PORTFOLIO AS P_Outer ON PR.User_ID = P_Outer.User_ID
CROSS JOIN (SELECT AVG(Total_value) AS avg_val FROM PORTFOLIO) AS Agg
WHERE P_Outer.Total_value > Agg.avg_val;
