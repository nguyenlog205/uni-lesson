
CREATE DATABASE KFC_MANAGEMENT

CREATE TABLE Branches (
    branchID VARCHAR(3) PRIMARY KEY,
    branchName VARCHAR(100) NOT NULL,
    branchCity VARCHAR(100) NOT NULL,
    brandManager NVARCHAR(100),
    branchOpenDate DATE
);

CREATE TABLE Staffs (
	staffID VARCHAR(6) PRIMARY KEY,
	staffName VARCHAR(100) NOT NULL,
	staffPosition CHAR(10) CHECK (staffPosition IN ('Manager', 'Cashier', 'Staff')),
	staffPhoneNumber varchar(15),
	staffSalaryIndex float NOT NULL
)

-- Items(itemID, itemName, itemDescription, itemPrice, itemCategory, itemIsAvailable)

CREATE TABLE Items (
	itemID varchar(10) primary key,
	itemName varchar(50) not null,
	itemDescription text,
	itemPrice float,
	itemCategory varchar(20) check (itemCategory in ('drink', 'fried chicken', 'spaghetti')),
	itemIsAvailable varchar(1) check(itemIsAvailable in ('Y', 'N')) default 'Y'
)

-- Customers(customerID, customerName, customerAddress, customerPhoneNumber, customerRank, customerRegisteredDate)

CREATE TABLE Customers (
	customerID int primary key IDENTITY(1,1),
	customerName varchar(100) not null,
	customerAddress varchar(100),
	customerPhoneNumber varchar(15),
	customerRank varchar(20) check (customerRank in ('V', 'IV', 'III', 'II', 'I')),
	customerRegisteredDate date
)
-- Orders(orderID, branchID(Branches), customerID(Customers), orderDate, orderTotal, orderStatus, orderPaymentMethod)
CREATE TABLE Orders (
    orderID INT PRIMARY KEY IDENTITY(1,1),
    branchID VARCHAR(3),
    customerID INT,
    orderDate DATE,
    orderStatus VARCHAR(20) CHECK (orderStatus IN ('not completed', 'completed')),
    orderTotal FLOAT,
    orderPaymentMethod VARCHAR(20) CHECK (orderPaymentMethod IN ('cash', 'e-wallet', 'card')),
    
    -- Khai báo FOREIGN KEY
    FOREIGN KEY (branchID) REFERENCES Branches(branchID),
    FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

-- OrderDetails(orderID, itemID(Items), itemQuantity, itemTotalPrice)
CREATE TABLE OrderDetails (
	orderID int,
	itemID varchar(10),
	itemQuantity int not null check (itemQuantity > 0),
	itemTotalPrice int,

	foreign key (orderID) references Orders(orderID),
	foreign key (itemID) references Items(itemID)
)
