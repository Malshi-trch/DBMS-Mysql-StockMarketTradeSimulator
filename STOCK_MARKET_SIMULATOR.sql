drop database if exists STOCK_MARKET_SIMULATOR;
CREATE DATABASE IF NOT EXISTS STOCK_MARKET_SIMULATOR;
USE STOCK_MARKET_SIMULATOR;

/*drop table if exists USER;*/
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

/*drop table if exists PROFILE;*/
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
/*drop table if exists PORTFOLIO;*/
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
/*drop table if exists STOCK_EXCHANGE;*/
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

/*drop table if exists SECURITY;*/
create table SECURITY(
	Security_ID varchar(50) not null,
    Name varchar(30) not null,
	Symbol varchar(30) not null,
	Assets decimal(15,2) not null default 00.00,
	Exchange varchar(30) not null,
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
values('SEC005', 'Tesla Inc.', 'TSLA', 290000.00, 'AABD');
insert into SECURITY
values('SEC006','US Treasury Bond 10Y', 'US10Y', 1000000.00, 'ASDG');
select * from SECURITY;

/*drop table if exists BOND;*/
create table BOND(
	Bond_ID varchar(50) not null,
	Security_ID varchar(50) not null,
    Coupon_rate Decimal(5,2) not null,
    Maturity_date date not null,
    primary key (Bond_ID));
insert into BOND(Bond_ID, Security_ID, Coupon_rate, Maturity_date)
values('BND001', 'SEC003', 4.25, '2035-05-15');
insert into BOND
values('BND002', 'SEC005', 3.75, '2030-09-01');
insert into BOND
values('BND003', 'SEC003', 4.50, '2036-02-28');
insert into BOND
values('BND004', 'SEC005', 5.10, '2032-12-15');
insert into BOND
values('BND005', 'SEC003', 3.80, '2028-06-30');
insert into BOND
values('BND006', 'SEC005', 4.00, '2031-04-10');

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
values('STK003', 15000000.00, 'SEC004', 4.10);
insert into STOCK
values('STK004', 70000000.00, 'SEC006', 0.00);
insert into STOCK
values('STK005', 12000000.00, 'SEC001', 0.55);
insert into STOCK
values('STK006', 14000000.00, 'SEC002', 0.72);
select * from STOCK;

/*drop table if exists ORDERS;*/
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

ALTER TABLE PROFILE ADD COLUMN User_ID varchar(50) UNIQUE;
ALTER TABLE PROFILE ADD CONSTRAINT fk_profile_user 
FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE;

/*PORTFOLIO to USER (Many-to-One OWNS Relationship)*/
ALTER TABLE PORTFOLIO ADD COLUMN User_ID varchar(50);
ALTER TABLE PORTFOLIO ADD CONSTRAINT fk_portfolio_user 
FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE;

/*SECURITY to STOCK_EXCHANGE (Many-to-One LISTS Relationship)*/
ALTER TABLE SECURITY ADD CONSTRAINT fk_security_exchange 
FOREIGN KEY (Exchange) REFERENCES STOCK_EXCHANGE(Exchange_code) ON DELETE CASCADE;

/* BOND to SECURITY (Inheritance Classification Boundary)
ALTER TABLE BOND ADD CONSTRAINT fk_bond_security 
FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;

/*STOCK to SECURITY (Inheritance Specialization Boundary)*/
ALTER TABLE STOCK ADD CONSTRAINT fk_stock_security 
FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;

/*ORDERS to USER & SECURITY (Bridge for PLACES/TARGET Entity Actions)*/
ALTER TABLE ORDERS ADD COLUMN User_ID varchar(50), ADD COLUMN Security_ID varchar(50);
ALTER TABLE ORDERS 
ADD CONSTRAINT fk_orders_user FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE,
ADD CONSTRAINT fk_orders_security FOREIGN KEY (Security_ID) REFERENCES SECURITY(Security_ID) ON DELETE CASCADE;

/*ORDERS (1-to-Many EXECUTES Trace Logging)*/
ALTER TABLE TRANSACTION ADD COLUMN Order_no varchar(20);
ALTER TABLE TRANSACTION ADD CONSTRAINT fk_transaction_orders 
FOREIGN KEY (Order_no) REFERENCES ORDERS(Order_no) ON DELETE CASCADE;


-- ==========================================
-- 4. BINDING MOCK DATA MAPS TO RELATIONSHIPS
-- ==========================================

UPDATE PROFILE SET User_ID = 'USR001' WHERE Profile_ID = 'PRF001';
UPDATE PROFILE SET User_ID = 'USR002' WHERE Profile_ID = 'PRF002';
UPDATE PROFILE SET User_ID = 'USR003' WHERE Profile_ID = 'PRF003';
UPDATE PROFILE SET User_ID = 'USR004' WHERE Profile_ID = 'PRF004';
UPDATE PROFILE SET User_ID = 'USR005' WHERE Profile_ID = 'PRF005';
UPDATE PROFILE SET User_ID = 'USR006' WHERE Profile_ID = 'PRF006';

UPDATE PORTFOLIO SET User_ID = 'USR001' WHERE Portfolio_ID IN ('PFT001', 'PFT002');
UPDATE PORTFOLIO SET User_ID = 'USR002' WHERE Portfolio_ID IN ('PFT003', 'PFT004');
UPDATE PORTFOLIO SET User_ID = 'USR003' WHERE Portfolio_ID IN ('PFT005', 'PFT006');

UPDATE ORDERS SET User_ID = 'USR001', Security_ID = 'SEC001' WHERE Order_no = 'ORD001';
UPDATE ORDERS SET User_ID = 'USR002', Security_ID = 'SEC002' WHERE Order_no = 'ORD002';
UPDATE ORDERS SET User_ID = 'USR003', Security_ID = 'SEC003' WHERE Order_no = 'ORD003';
UPDATE ORDERS SET User_ID = 'USR004', Security_ID = 'SEC004' WHERE Order_no = 'ORD004';
UPDATE ORDERS SET User_ID = 'USR005', Security_ID = 'SEC005' WHERE Order_no = 'ORD005';
UPDATE ORDERS SET User_ID = 'USR006', Security_ID = 'SEC006' WHERE Order_no = 'ORD006';

UPDATE TRANSACTION SET Order_no = 'ORD001' WHERE Transaction_ID = 'TXN001';
UPDATE TRANSACTION SET Order_no = 'ORD002' WHERE Transaction_ID = 'TXN002';
UPDATE TRANSACTION SET Order_no = 'ORD003' WHERE Transaction_ID = 'TXN003';
UPDATE TRANSACTION SET Order_no = 'ORD004' WHERE Transaction_ID = 'TXN004';
UPDATE TRANSACTION SET Order_no = 'ORD005' WHERE Transaction_ID = 'TXN005';
UPDATE TRANSACTION SET Order_no = 'ORD006' WHERE Transaction_ID = 'TXN006';



