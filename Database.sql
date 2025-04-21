DROP DATABASE TheWatchShop
GO

CREATE DATABASE TheWatchShop
GO

USE TheWatchShop
GO

--drop database ShopCake_DB

--drop table Categories
CREATE TABLE Categories (
    category_id INT IDENTITY(1,1) NOT NULL,
    name NVARCHAR(255) NOT NULL
);
ALTER TABLE Categories
	ADD CONSTRAINT PK_Categories PRIMARY KEY (category_id);


--drop table Roles
CREATE TABLE Roles (
    role_id INT IDENTITY(1,1) NOT NULL,
    role_name VARCHAR(255) NOT NULL
);
ALTER TABLE Roles
	ADD CONSTRAINT PK_Roles PRIMARY KEY (role_id);


--drop table Users
CREATE TABLE Users (
    user_id INT IDENTITY(1,1) NOT NULL,
    fullName NVARCHAR(255),
    address NVARCHAR(255),
    created_at DATETIME DEFAULT GETDATE(),
    status NVARCHAR(255),
    username NVARCHAR(255) NOT NULL,
    password NVARCHAR(255) NOT NULL,
    phone NVARCHAR(255) NOT NULL,
    email NVARCHAR(255),
    gender NVARCHAR(255),
    role_id INT
);
ALTER TABLE Users
	ADD CONSTRAINT PK_Users PRIMARY KEY (user_id);
ALTER TABLE Users
	ADD CONSTRAINT FK_Users_Roles FOREIGN KEY (role_id) REFERENCES Roles(role_id);

ALTER TABLE Users 
	ADD CONSTRAINT check_users_status CHECK (status IN ('Online', 'Offline'));
ALTER TABLE Users
	ADD CONSTRAINT default_users_status DEFAULT 'Offline' FOR status;



--drop table Products
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) NOT NULL,
    name NVARCHAR(255) NOT NULL,
    stock INT,
    sold INT,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    description NVARCHAR(MAX),
    img_link NVARCHAR(255),
);
ALTER TABLE Products
	ADD CONSTRAINT PK_Products PRIMARY KEY (product_id);

ALTER TABLE Products
	ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (category_id) REFERENCES Categories(category_id);

ALTER TABLE Products 
	ADD CONSTRAINT check_products_price CHECK (price > 0);
ALTER TABLE Products 
	ADD CONSTRAINT check_products_stock CHECK (stock >= 0);


--drop table Orders
CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) NOT NULL,
    user_id INT,
    totalPrice DECIMAL(10) NOT NULL,
    status NVARCHAR(255),
    created_at DATETIME DEFAULT GETDATE(),
);
ALTER TABLE Orders
	ADD CONSTRAINT PK_Orders PRIMARY KEY (order_id);

ALTER TABLE Orders
	ADD CONSTRAINT FK_Orders_Users FOREIGN KEY (user_id) REFERENCES Users(user_id);

ALTER TABLE Orders 
	ADD CONSTRAINT check_orders_totalPrice CHECK (totalPrice > 0);

ALTER TABLE orders
	ADD CONSTRAINT check_orders_status CHECK (status IN ('pending', 'completed', 'canceled'));
ALTER TABLE orders
	ADD CONSTRAINT default_orders_status DEFAULT 'pending' FOR status;



--drop table Order_details
CREATE TABLE Order_details (
    product_id INT ,
    order_id INT,
    quantity INT,
    price DECIMAL(10, 2),
);
ALTER TABLE Order_details
	ADD CONSTRAINT FK_Order_details_Products FOREIGN KEY (product_id) REFERENCES Products(product_id);
ALTER TABLE Order_details
	ADD CONSTRAINT FK_Order_details_Orders FOREIGN KEY (order_id) REFERENCES Orders(order_id);

ALTER TABLE Order_details 
	ADD CONSTRAINT check_order_details_quantity CHECK (quantity >= 1);
ALTER TABLE Order_details 
	ADD CONSTRAINT check_order_details_price CHECK (price > 0);

--------------------------------Categories-------------------------
--DELETE FROM Categories;
INSERT INTO Categories (name) VALUES 
(N'Rolex'), 
(N'Omega'), 
(N'Patek Philippe'),
(N'Casio'), 
(N'Audemars Piguet'), 
(N'Tag Heuer');

--------------------------------Roles------------------------------
INSERT INTO Roles (role_name) VALUES 
('Admin'), 
('Customer');

--------------------------------Users------------------------------
INSERT INTO Users (fullName, address, status, username, password, phone, email, gender, role_id) VALUES 
(N'Nguyễn Quốc Khánh', N'123 Đường ABC, Quận 1', 'Offline', N'nguyenquockhanh', N'password123', N'0909123456', N'nguyenquockhanh@email.com', N'Nam', 1), --admin
(N'Nguyễn Duy Thanh', N'456 Đường DEF, Quận 2', 'Offline', N'nguyenduythanh', N'password456', N'0909876543', N'nguyenduythanh@email.com', N'Nam', 2),
(N'Võ Văn Phúc Ân', N'789 Đường GHI, Quận 3', 'Offline', N'vovanphucan', N'password789', N'0912345678', N'vovanphucan@email.com', N'Nam', 2),
(N'Phạm Hoàng Minh Châu', N'101 Đường JKL, Quận 4', 'Offline', N'phamhoangminhchau', N'password012', N'0918765432', N'phamhoangminhchau@email.com', N'Nữ', 2),
(N'Ngô Quang Huy', N'304 Đường OPQ, Quận 7', 'Offline', N'ngoquanghuy', N'password901', N'0912765432', N'ngoquanghuy@email.com', N'Nam', 2), 
(N'Phạm Thị Mai', N'203 Đường LMN, Quận 6', 'Offline', N'phamthimai', N'password678', N'0912987654', N'phamthimai@email.com', N'Nữ', 2);

--------------------------------Products----------------------------
--DELETE  FROM Products;
INSERT INTO Products (name, stock, sold, price, category_id, description, img_link) VALUES 
(N'Rolex Submariner', 10, 2, 7500.00, 1, N'Đồng hồ xịn', N'rolex.jpg'), -- Rolex
(N'Omega Speedmaster', 15, 5, 3500.00, 2, N'Đồng hồ xịn', N'omega.jpg'), -- Omega
(N'Patek Philippe Nautilus', 8, 1, 30000.00, 3, N'Đồng hồ xịn', N'patek.jpg'), -- Patek Philippe
(N'Casio F91W', 500, 200, 20.00, 4, N'Đồng hồ xịn', N'casiof91w.jpg'), -- Casio
(N'Audemars Piguet Royal Oak', 5, 1, 25000.00, 5, N'Đồng hồ xịn', N'ap.jpg'), -- Audemars Piguet
(N'Tag Heuer Carrera', 25, 10, 4000.00, 6, N'Đồng hồ xịn', N'tag.jpg'); -- Tag Heuer


--------------------------------Orders------------------------------
INSERT INTO Orders (user_id, totalPrice, status, created_at) VALUES 
(1, 150.00, 'pending', GETDATE()),
(2, 200.00, 'completed', GETDATE()),
(3, 399.99, 'pending', GETDATE()),
(4, 250.00, 'completed', GETDATE()),
(5, 499.99, 'pending', GETDATE()),
(6, 7500.00, 'completed', GETDATE()),
(1, 300.00, 'pending', GETDATE()),
(2, 20.00, 'completed', GETDATE());

-------------------------------Order_details------------------------
INSERT INTO Order_details (product_id, order_id, quantity, price) VALUES 
(1, 1, 1, 150.00),
(2, 2, 1, 200.00),
(3, 3, 1, 399.99),
(4, 4, 1, 250.00),
(5, 5, 1, 499.99),
(6, 6, 1, 7500.00),
(5, 1, 1, 300.00),
(6, 2, 1, 20.00);


SELECT * FROM Categories

SELECT * FROM Roles

SELECT * FROM Users

SELECT * FROM Products

SELECT * FROM Orders

SELECT * FROM Order_details


INSERT INTO Products (name, stock, sold, price, category_id, description, img_link) 
VALUES
-- Sản phẩm thuộc danh mục "Rolex" (category_id = 1)
(N'Rolex Submariner', 10, 5, 12500.00, 1, N'Classic diving watch', 'https://example.com/rolex-submariner.jpg'),
(N'Rolex Daytona', 8, 3, 15000.00, 1, N'Luxury chronograph', 'https://example.com/rolex-daytona.jpg'),
(N'Rolex Datejust', 20, 10, 8500.00, 1, N'Elegant everyday watch', 'https://example.com/rolex-datejust.jpg'),
(N'Rolex Yacht-Master', 7, 2, 11000.00, 1, N'Nautical-inspired design', 'https://example.com/rolex-yacht-master.jpg'),
(N'Rolex GMT-Master II', 12, 6, 14500.00, 1, N'Dual time-zone watch', 'https://example.com/rolex-gmt-master-ii.jpg'),

-- Sản phẩm thuộc danh mục "Omega" (category_id = 2)
(N'Omega Seamaster', 15, 7, 6000.00, 2, N'Iconic diving watch', 'https://example.com/omega-seamaster.jpg'),
(N'Omega Speedmaster', 12, 4, 7000.00, 2, N'The first watch on the moon', 'https://example.com/omega-speedmaster.jpg'),
(N'Omega Constellation', 18, 9, 5000.00, 2, N'Elegant and precise', 'https://example.com/omega-constellation.jpg'),
(N'Omega De Ville', 10, 3, 4500.00, 2, N'Classic and timeless', 'https://example.com/omega-de-ville.jpg'),
(N'Omega Aqua Terra', 8, 5, 5500.00, 2, N'Perfect for land and sea', 'https://example.com/omega-aqua-terra.jpg'),

-- Sản phẩm thuộc danh mục "Patek Philippe" (category_id = 3)
(N'Patek Philippe Nautilus', 5, 1, 35000.00, 3, N'Sporty luxury watch', 'https://example.com/patek-nautilus.jpg'),
(N'Patek Philippe Aquanaut', 6, 2, 30000.00, 3, N'Contemporary design', 'https://example.com/patek-aquanaut.jpg'),
(N'Patek Philippe Grand Complications', 3, 1, 80000.00, 3, N'Masterful craftsmanship', 'https://example.com/patek-grand-complications.jpg'),
(N'Patek Philippe Calatrava', 7, 3, 25000.00, 3, N'Understated elegance', 'https://example.com/patek-calatrava.jpg'),
(N'Patek Philippe Golden Ellipse', 4, 2, 45000.00, 3, N'Unique oval design', 'https://example.com/patek-golden-ellipse.jpg'),

-- Sản phẩm thuộc danh mục "Casio" (category_id = 4)
(N'Casio G-Shock', 50, 25, 150.00, 4, N'Rugged and durable', 'https://example.com/casio-g-shock.jpg'),
(N'Casio Edifice', 40, 20, 250.00, 4, N'Sporty and functional', 'https://example.com/casio-edifice.jpg'),
(N'Casio Pro Trek', 30, 15, 300.00, 4, N'Perfect for adventurers', 'https://example.com/casio-pro-trek.jpg'),
(N'Casio Vintage', 25, 10, 100.00, 4, N'Retro style', 'https://example.com/casio-vintage.jpg'),
(N'Casio Calculator Watch', 35, 18, 80.00, 4, N'Iconic digital watch', 'https://example.com/casio-calculator.jpg'),

-- Sản phẩm thuộc danh mục "Audemars Piguet" (category_id = 5)
(N'Audemars Piguet Royal Oak', 6, 3, 40000.00, 5, N'Iconic octagonal design', 'https://example.com/audemars-royal-oak.jpg'),
(N'Audemars Piguet Royal Oak Offshore', 5, 2, 45000.00, 5, N'Bolder and larger design', 'https://example.com/audemars-royal-oak-offshore.jpg'),
(N'Audemars Piguet Millenary', 3, 1, 60000.00, 5, N'Unique oval design', 'https://example.com/audemars-millenary.jpg'),
(N'Audemars Piguet Code 11.59', 4, 1, 55000.00, 5, N'Contemporary and complex', 'https://example.com/audemars-code-1159.jpg'),
(N'Audemars Piguet Jules Audemars', 2, 1, 50000.00, 5, N'Classic round case', 'https://example.com/audemars-jules-audemars.jpg'),

-- Sản phẩm thuộc danh mục "Tag Heuer" (category_id = 6)
(N'Tag Heuer Carrera', 15, 5, 4000.00, 6, N'Racing-inspired design', 'https://example.com/tag-carrera.jpg'),
(N'Tag Heuer Monaco', 10, 3, 4500.00, 6, N'Retro square case', 'https://example.com/tag-monaco.jpg'),
(N'Tag Heuer Aquaracer', 20, 10, 3500.00, 6, N'Diving watch', 'https://example.com/tag-aquaracer.jpg'),
(N'Tag Heuer Formula 1', 25, 12, 2000.00, 6, N'Sporty and affordable', 'https://example.com/tag-formula1.jpg'),
(N'Tag Heuer Link', 18, 7, 3000.00, 6, N'Comfortable and elegant', 'https://example.com/tag-link.jpg'),

-- Thêm sản phẩm khác thuộc các danh mục ngẫu nhiên
(N'Seiko Prospex', 40, 20, 500.00, 4, N'Durable diving watch', 'https://example.com/seiko-prospex.jpg'),
(N'Seiko Presage', 30, 15, 700.00, 4, N'Affordable elegance', 'https://example.com/seiko-presage.jpg'),
(N'Citizen Eco-Drive', 35, 18, 400.00, 4, N'Solar-powered watch', 'https://example.com/citizen-eco-drive.jpg'),
(N'Hublot Big Bang', 5, 2, 15000.00, 5, N'Bold and luxurious', 'https://example.com/hublot-big-bang.jpg'),
(N'IWC Portugieser', 7, 3, 12000.00, 5, N'Classic and refined', 'https://example.com/iwc-portugieser.jpg'),
(N'Longines Master Collection', 20, 10, 2500.00, 6, N'Classic Swiss design', 'https://example.com/longines-master.jpg'),
(N'Tissot Le Locle', 25, 12, 800.00, 4, N'Affordable Swiss watch', 'https://example.com/tissot-le-locle.jpg'),
(N'Hamilton Khaki Field', 18, 9, 600.00, 4, N'Military-inspired watch', 'https://example.com/hamilton-khaki-field.jpg'),
(N'Breitling Navitimer', 6, 2, 8000.00, 5, N'Aviation watch', 'https://example.com/breitling-navitimer.jpg'),
(N'Chopard Mille Miglia', 4, 1, 9000.00, 5, N'Racing-inspired elegance', 'https://example.com/chopard-mille-miglia.jpg');
