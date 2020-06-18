CREATE TABLE `admin` (
  `ID_admin`Varchar (4) Not Null ,
  `name` Varchar(30),
  `password` Varchar(15),
  PRIMARY KEY  (`ID_admin`)
);
CREATE TABLE `customer` (
  `ID_custpmer` Varchar(4) Not Null,
  `name` Varchar(30),
  `Email` Varchar(30),
  `address` Varchar(55),
  `phone` Varchar(11),
  PRIMARY KEY (`ID_custpmer`)
);
CREATE TABLE `products` (
  `ID_product`Varchar(4) Not Null,
  `ID_customer` Varchar(4) ,
  `name` Varchar(30),
  PRIMARY KEY (`ID_product`),
  foreign key (ID_customer) references customer(ID_custpmer)
		on delete set null
  
);
CREATE TABLE `cart` (
  `ID_cart` Varchar(4) Not Null,
  `ID_product` Varchar(4) ,
  `price` Varchar(5),
  `deliverydate` date,
  PRIMARY KEY (`ID_cart`),
  foreign key (ID_product) references products(ID_product)
		on delete set null
 
);
CREATE TABLE `payment` (
  `ID_payment` Varchar(4) Not Null,
  `ID_cart` Varchar(4) ,
  `ID_customer` Varchar(4) ,
  PRIMARY KEY (`ID_payment`),
    foreign key (ID_customer) references customer(ID_custpmer)
		on delete set null,
         foreign key (ID_cart) references cart(ID_cart)
		on delete set null
  );
