CREATE DATABASE LAP06
GO
USE LAP06
GO
CREATE TABLE ODER
(
Customer_ID INT primary key,
Oder_ID varchar(7) NOT NULL,
DateOder dateTIME,
Status_ID int,
CONSTRAINT FK_CustomerID FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) 
)

--XÓA BẢNG ĐỂ SỬA LỖI 
GO
CREATE TABLE OderDetail
(
Oder_ID varchar(7) NOT NULL,
Product_ID varchar(10) NOT NULL,
Qty varchar(100) CHECK (Qty >0 ),
Price money CHECK (Price >0)
CONSTRAINT PK_Oder FOREIGN KEY(Oder_ID) REFERENCES ODER(Oder_ID),
CONSTRAINT PK_Product_ID FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
)

GO
CREATE TABLE Customer
(
Customer_ID int PRIMARY KEY IDENTITY, 
Customer_Name nvarchar(50) NOT NULL,
Adress nvarchar(50) NOT NULL,
Tel varchar(10) NOT NULL,
)
GO

CREATE TABLE PRODUCT
(
Product_ID INT PRIMARY KEY,
Product_Name varchar(50) NOT NULL,
Product_Unit NVARCHAR(50),
Product_Price money CHECK(Product_Price >0),
Product_Qty int CHECK (Product_Qty>0),
Product_Status int,
Cate_ID INT NOT NULL,
Product_Des varchar(10)
Constraint Fk_CateID foreign key (Cate_ID)  REFERENCES Category(Cate_ID)
)
GO
DROP TABLE PRODUCT
SELECT *FROM PRODUCT
GO
CREATE TABLE Category(
Cate_ID int PRIMARY KEY IDENTITY,
Category_Name Nvarchar(10) NULL
)
SELECT *FROM Category
GO
INSERT INTO Category(Category_Name) VALUES('Máy Tính'),('Điện Thoại'),('Máy In');
GO



