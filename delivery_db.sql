create table restaurant(
id int primary key auto_increment,
name varchar(100) not null,
phone varchar(20),
adress varchar(255) not null
);


CREATE TABLE products(
id INT PRIMARY KEY,
restaurant_id INT NULL,
name VARCHAR (100) NOT NULL,
descript TEXT ,
price DECIMAL(10,2) NOT NULL,
foreign key (restaurant_id) references restaurant(id)
);

CREATE TABLE orders (
id INT primarY KEY AUTO_INCREMENT,
USER_ID INT NOT NULL ,
DATE timestamp DEFAULT current_timestamp,
STATUS VARCHAR(50) DEFAULT "Pendiente", -- Ej: Pendiente, En camino, Entregado, Cancelado
FOREIGN KEY (USER_ID) REFERENCES USERS (ID),
FOREIGN KEY (RESTAURANT_ID) REFERENCES Resataurants(id)
);
CREATE TABLE ORDER_DETAILS(
id  INT PRIMARY KEY AUTO_INCREMENT,
orders_id INT NOT NULL,
product_id INT NOT NULL,
amount INT NOT NULL,
prace_unitary DECIMAL(10,2) NOT NULL,
FOREIGN KEY  (order_id) references orders(id),
foreign key (order_id) references orders(id)
); 
