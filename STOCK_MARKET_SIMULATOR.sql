CREATE DATABASE IF NOT EXISTS STOCK_MARKET_SIMULATOR;
USE STOCK_MARKET_SIMULATOR;

create table USER (
	User_id int,
	Email varchar(50),
	First_name varchar(50),
	Last_name varchar(50),
	Province varchar(45),
	City varchar(45),
	Street varchar(45),
	Date_of_birth date,
	Cash_balance decimal(15,2) default 00.00,
	Contact_no varchar(15),
	Image_url varchar(255),
	primary key (User_id)
);

create table BANK_ACCOUNTS(
	Account_number int,
    Bank_name varchar(50),
    Branch_name varchar(50),
    Routing_number int,
    primary key(Account_number)
);

create table PORTFOLIO(
	Portfolio_id int,
    User_id  int, /***FORIEGN KEY*****/
    Total_assets decimal(15,2) default 00.00,
    Created_date date,
    Total_value_derived int,
    primary key(Portfolio_id)
);

create table STOCK_PRICE_HISTORY(
	Volume long,
    Low_price decimal(15,2) default 00.00,
    High_price decimal(15,2) default 00.00,
    Close_price decimal(15,2) default 00.00,
    Open_price decimal(15,2) default 00.00,
   /* Security_id,    ------foriegn key*/
    Date date
);

create table COMPANY(
	Company_id int,
    Founded_date date,
    Industry varchar(50),
    Headquarters varchar(50),
    Sector varchar(50),
    Company_name varchar(50),
    primary key(Company_id)
);

create table ORDERS(
	Order_id int,
    Quantity_owned int,
    Order_status varchar(5), /******* boolean?*/
    Order_date date,
    Avg_purchase_price decimal(15,2) default 00.00,
    /*Security_idv  --- forign key*/
    /*User_id --- forign key*/
    primary key(Order_id)
);

create table SECURITY(
	Security_id int,
    Exchange varchar(50),
    Type varchar(50),
    Symbol varchar(45),
    Market_value decimal(15,2) default 00.00,
    Name varchar(50),
    primary key(Security_id)
);

create table TRANSACTION(
	Transaction_id int,
	Quantity_exec int,
    Exec_timestamp datetime,
    Exec_price decimal(15,2)  default 00.00,
    primary key (Transaction_id)
);




