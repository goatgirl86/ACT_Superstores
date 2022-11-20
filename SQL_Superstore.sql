CREATE TABLE product_info (
Row_ID INT NOT NULL,
    Order_ID VARCHAR NOT NULL,
    Product_ID VARCHAR NOT NULL,
    Category VARCHAR NOT NULL,
    SubCategory VARCHAR NOT NULL,
    Product_Name VARCHAR NOT NULL,
    Sales FLOAT NOT NULL,
    Quantity INT NOT NULL,
    Discount FLOAT NOT NULL,
    Profit FLOAT NOT NULL,
FOREIGN KEY (Row_ID) REFERENCES order_info (Row_ID),
FOREIGN KEY (Row_ID) REFERENCES customer_info (Row_ID),
    PRIMARY KEY (Row_ID)
);

Drop Table product_info

Select * From product_info