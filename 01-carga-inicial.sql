--Insert:
--5 categories
--30 produtos
--20 clientes
--4 vendedores
--50 pedidos
--150 itens

-- CATEGORIES

INSERT INTO TB_CATEGORIES VALUES ('Electronics'), ('Food'), ('Beverages'), ('Personal Care'), ('Cleaning Supplies');

SELECT * FROM TB_CATEGORIES;


-- PRODUCTS
INSERT INTO TB_PRODUCTS(
	PRODUCT_NAME, 
	PRODUCT_CATEGORY_ID, 
	PRODUCT_PRICE, 
	PRODUCT_STOCK,
	PRODUCT_ACTIVE, 
	PRODUCT_REGISTRATION_DATE
) 
VALUES 
('Samsung Galaxy S25', 11, 899.90, 15, 1, GETDATE()),
('Xiaomi Redmi Note 14', 11, 1299.90, 20, 1, GETDATE()),
('Notebook Lenovo IdeaPad 3', 11, 3499.90, 8, 1, GETDATE()),
('Monitor LG UltraGear 24', 11, 1199.90, 12, 1, GETDATE()),
('Keyboard Logitech K380', 11, 249.90, 25, 1, GETDATE()),
('Mouse Logitech G203', 11, 179.90, 30, 1, GETDATE()),

('Rice 5kg', 12, 28.90, 50, 1, GETDATE()),
('Beans 1kg', 12, 8.90, 80, 1, GETDATE()),
('Pasta 500g', 12, 5.90, 100, 1, GETDATE()),
('Tomato Sauce 340g', 12, 4.50, 60, 1, GETDATE()),
('Wheat Flour 1kg', 12, 6.90, 70, 1, GETDATE()),
('Sugar 1kg', 12, 5.50, 90, 1, GETDATE()),

('Coca-Cola 2L', 13, 10.90, 60, 1, GETDATE()),
('Pepsi 2L', 13, 9.90, 55, 1, GETDATE()),
('Guarana Antarctica 2L', 13, 8.90, 45, 1, GETDATE()),
('Orange Juice 1L', 13, 7.90, 40, 1, GETDATE()),
('Mineral Water 1.5L', 13, 3.50, 100, 1, GETDATE()),
('Energy Drink 473ml', 13, 8.50, 35, 1, GETDATE()),

('Shampoo 400ml', 14, 18.90, 40, 1, GETDATE()),
('Conditioner 400ml', 14, 19.90, 35, 1, GETDATE()),
('Toothpaste 90g', 14, 7.90, 60, 1, GETDATE()),
('Toothbrush', 14, 9.90, 50, 1, GETDATE()),
('Body Soap 90g', 14, 3.90, 100, 1, GETDATE()),
('Deodorant 150ml', 14, 14.90, 45, 1, GETDATE()),

('Laundry Detergent 2L', 15, 16.90, 40, 1, GETDATE()),
('Dishwashing Liquid 500ml', 15, 5.90, 70, 1, GETDATE()),
('Disinfectant 1L', 15, 9.90, 55, 1, GETDATE()),
('Glass Cleaner 500ml', 15, 11.90, 30, 1, GETDATE()),
('Bleach 1L', 15, 6.90, 65, 1, GETDATE()
);

SELECT * FROM TB_PRODUCTS;

-- CUSTOMERS

INSERT INTO TB_CUSTOMERS(
	CUSTOMER_NAME,
	CUSTOMER_EMAIL,
	CUSTOMER_CITY,
	CUSTOMER_STATE,
	CUSTOMER_REGISTRATION_DATE,
	CUSTOMER_UPDATE_DATE
)
VALUES
('Luis Manuel', 'luis.example@gmail.com', 'Londrina', 'PR', GETDATE(), GETDATE()),
('Sergio David', 'sergio.example@gmail.com', 'Londrina', 'PR', GETDATE(), GETDATE()),
('Laura Jimena', 'laura.example@gmail.com', 'Bucaramanga', 'ST', GETDATE(), GETDATE()),
('Marcela Marcano', 'marcela.example@gmail.com', 'São Paulo', 'SP', GETDATE(), GETDATE()),
('Edipson Silva', 'edipson.example@gmail.com', 'Curitiba', 'PR', GETDATE(), GETDATE()),
('Carlos Henrique', 'carlos.example@gmail.com', 'Maringá', 'PR', GETDATE(), GETDATE()),
('Ana Beatriz', 'ana.example@gmail.com', 'Campinas', 'SP', GETDATE(), GETDATE()),
('Gabriel Santos', 'gabriel.example@gmail.com', 'Rio de Janeiro', 'RJ', GETDATE(), GETDATE()),
('Fernanda Oliveira', 'fernanda.example@gmail.com', 'Belo Horizonte', 'MG', GETDATE(), GETDATE()),
('Ricardo Almeida', 'ricardo.example@gmail.com', 'Porto Alegre', 'RS', GETDATE(), GETDATE()),
('Juliana Costa', 'juliana.example@gmail.com', 'Florianópolis', 'SC', GETDATE(), GETDATE()),
('Mateus Rodrigues', 'mateus.example@gmail.com', 'Recife', 'PE', GETDATE(), GETDATE()),
('Camila Ferreira', 'camila.example@gmail.com', 'Salvador', 'BA', GETDATE(), GETDATE()),
('André Martins', 'andre.example@gmail.com', 'Brasília', 'DF', GETDATE(), GETDATE()),
('Patricia Souza', 'patricia.example@gmail.com', 'Goiânia', 'GO', GETDATE(), GETDATE()),
('Rafael Gomes', 'rafael.example@gmail.com', 'Santos', 'SP', GETDATE(), GETDATE()),
('Beatriz Lima', 'beatriz.example@gmail.com', 'Londrina', 'PR', GETDATE(), GETDATE()),
('Diego Pereira', 'diego.example@gmail.com', 'Joinville', 'SC', GETDATE(), GETDATE()),
('Mariana Rocha', 'mariana.example@gmail.com', 'Fortaleza', 'CE', GETDATE(), GETDATE()),
('Thiago Carvalho', 'thiago.example@gmail.com', 'Manaus', 'AM', GETDATE(), GETDATE()
);

SELECT *
FROM TB_CUSTOMERS;

-- SELLERS

INSERT INTO TB_SELLERS(
	SELLER_NAME, 
	SELLER_PERCENT_COMISSION
)
VALUES
('Rodrigo Machado', 15.00),
('Maria Souza', 8.00),
('Ricardo Jose', 5.00),
('Mariana Pereira', 7.00);

SELECT *
FROM TB_SELLERS;

-- STATUS
INSERT INTO TB_STATUS VALUES('Pagamento aprovado'), ('Em preparação'), ('Enviado'), ('entregue');

SELECT *
FROM TB_STATUS;


-- ORDERS

INSERT INTO TB_ORDERS(
	ORDER_CUSTOMER_ID,
	ORDER_SELLER_ID,
	ORDER_STATUS_ID,
	ORDER_CREATION_DATE,
	ORDER_UPDATE_DATE
)
VALUES
(2, 1, 4, DATEADD(DAY, -50, GETDATE()), GETDATE()),
(3, 2, 4, DATEADD(DAY, -49, GETDATE()), GETDATE()),
(4, 3, 4, DATEADD(DAY, -48, GETDATE()), GETDATE()),
(5, 4, 3, DATEADD(DAY, -47, GETDATE()), GETDATE()),
(6, 1, 3, DATEADD(DAY, -46, GETDATE()), GETDATE()),
(7, 2, 4, DATEADD(DAY, -45, GETDATE()), GETDATE()),
(8, 3, 2, DATEADD(DAY, -44, GETDATE()), GETDATE()),
(9, 4, 4, DATEADD(DAY, -43, GETDATE()), GETDATE()),
(10, 1, 3, DATEADD(DAY, -42, GETDATE()), GETDATE()),
(11, 2, 4, DATEADD(DAY, -41, GETDATE()), GETDATE()),

(12, 3, 1, DATEADD(DAY, -40, GETDATE()), GETDATE()),
(13, 4, 2, DATEADD(DAY, -39, GETDATE()), GETDATE()),
(14, 1, 3, DATEADD(DAY, -38, GETDATE()), GETDATE()),
(15, 2, 4, DATEADD(DAY, -37, GETDATE()), GETDATE()),
(16, 3, 4, DATEADD(DAY, -36, GETDATE()), GETDATE()),
(17, 4, 3, DATEADD(DAY, -35, GETDATE()), GETDATE()),
(18, 1, 2, DATEADD(DAY, -34, GETDATE()), GETDATE()),
(19, 2, 4, DATEADD(DAY, -33, GETDATE()), GETDATE()),
(20, 3, 3, DATEADD(DAY, -32, GETDATE()), GETDATE()),
(21, 4, 4, DATEADD(DAY, -31, GETDATE()), GETDATE()),

(2, 1, 4, DATEADD(DAY, -30, GETDATE()), GETDATE()),
(3, 2, 3, DATEADD(DAY, -29, GETDATE()), GETDATE()),
(4, 3, 2, DATEADD(DAY, -28, GETDATE()), GETDATE()),
(5, 4, 4, DATEADD(DAY, -27, GETDATE()), GETDATE()),
(6, 1, 3, DATEADD(DAY, -26, GETDATE()), GETDATE()),
(7, 2, 4, DATEADD(DAY, -25, GETDATE()), GETDATE()),
(8, 3, 1, DATEADD(DAY, -24, GETDATE()), GETDATE()),
(9, 4, 3, DATEADD(DAY, -23, GETDATE()), GETDATE()),
(10, 1, 4, DATEADD(DAY, -22, GETDATE()), GETDATE()),
(11, 2, 2, DATEADD(DAY, -21, GETDATE()), GETDATE()),

(12, 3, 4, DATEADD(DAY, -20, GETDATE()), GETDATE()),
(13, 4, 3, DATEADD(DAY, -19, GETDATE()), GETDATE()),
(14, 1, 4, DATEADD(DAY, -18, GETDATE()), GETDATE()),
(15, 2, 2, DATEADD(DAY, -17, GETDATE()), GETDATE()),
(16, 3, 3, DATEADD(DAY, -16, GETDATE()), GETDATE()),
(17, 4, 4, DATEADD(DAY, -15, GETDATE()), GETDATE()),
(18, 1, 3, DATEADD(DAY, -14, GETDATE()), GETDATE()),
(19, 2, 4, DATEADD(DAY, -13, GETDATE()), GETDATE()),
(20, 3, 2, DATEADD(DAY, -12, GETDATE()), GETDATE()),
(21, 4, 4, DATEADD(DAY, -11, GETDATE()), GETDATE()),

(2, 1, 3, DATEADD(DAY, -10, GETDATE()), GETDATE()),
(3, 2, 4, DATEADD(DAY, -9, GETDATE()), GETDATE()),
(4, 3, 2, DATEADD(DAY, -8, GETDATE()), GETDATE()),
(5, 4, 3, DATEADD(DAY, -7, GETDATE()), GETDATE()),
(6, 1, 4, DATEADD(DAY, -6, GETDATE()), GETDATE()),
(7, 2, 3, DATEADD(DAY, -5, GETDATE()), GETDATE()),
(8, 3, 4, DATEADD(DAY, -4, GETDATE()), GETDATE()),
(9, 4, 2, DATEADD(DAY, -3, GETDATE()), GETDATE()),
(10, 1, 4, DATEADD(DAY, -2, GETDATE()), GETDATE()),
(11, 2, 3, DATEADD(DAY, -1, GETDATE()), GETDATE());

SELECT *
FROM TB_ORDERS;


-- ORDER ITENS

INSERT INTO TB_ORDER_ITENS
VALUES
-- ORDER 1
(1, 1, 2, 150.00),
(1, 2, 1, 1500.00),
(1, 3, 3, 899.90),

-- ORDER 2
(2, 4, 2, 1299.90),
(2, 5, 1, 3499.90),
(2, 6, 2, 1199.90),

-- ORDER 3
(3, 7, 1, 249.90),
(3, 8, 3, 179.90),
(3, 9, 2, 28.90),

-- ORDER 4
(4, 10, 4, 8.90),
(4, 11, 2, 5.90),
(4, 12, 3, 4.50),

-- ORDER 5
(5, 13, 2, 6.90),
(5, 14, 5, 5.50),
(5, 15, 3, 10.90),

-- ORDER 6
(6, 16, 2, 9.90),
(6, 17, 1, 8.90),
(6, 18, 4, 7.90),

-- ORDER 7
(7, 19, 3, 3.50),
(7, 20, 2, 8.50),
(7, 21, 1, 18.90),

-- ORDER 8
(8, 22, 2, 19.90),
(8, 23, 3, 7.90),
(8, 24, 2, 9.90),

-- ORDER 9
(9, 25, 4, 3.90),
(9, 26, 2, 14.90),
(9, 27, 3, 16.90),

-- ORDER 10
(10, 28, 2, 5.90),
(10, 29, 1, 9.90),
(10, 30, 3, 11.90),

-- ORDER 11
(11, 31, 2, 6.90),
(11, 1, 1, 150.00),
(11, 2, 3, 1500.00),

-- ORDER 12
(12, 3, 2, 899.90),
(12, 4, 1, 1299.90),
(12, 5, 2, 3499.90),

-- ORDER 13
(13, 6, 3, 1199.90),
(13, 7, 2, 249.90),
(13, 8, 4, 179.90),

-- ORDER 14
(14, 9, 2, 28.90),
(14, 10, 3, 8.90),
(14, 11, 1, 5.90),

-- ORDER 15
(15, 12, 4, 4.50),
(15, 13, 2, 6.90),
(15, 14, 3, 5.50),

-- ORDER 16
(16, 15, 2, 10.90),
(16, 16, 1, 9.90),
(16, 17, 5, 8.90),

-- ORDER 17
(17, 18, 2, 7.90),
(17, 19, 3, 3.50),
(17, 20, 2, 8.50),

-- ORDER 18
(18, 21, 1, 18.90),
(18, 22, 2, 19.90),
(18, 23, 3, 7.90),

-- ORDER 19
(19, 24, 2, 9.90),
(19, 25, 4, 3.90),
(19, 26, 2, 14.90),

-- ORDER 20
(20, 27, 3, 16.90),
(20, 28, 2, 5.90),
(20, 29, 1, 9.90),

-- ORDER 21
(21, 30, 3, 11.90),
(21, 31, 2, 6.90),
(21, 1, 1, 150.00),

-- ORDER 22
(22, 2, 2, 1500.00),
(22, 3, 3, 899.90),
(22, 4, 1, 1299.90),

-- ORDER 23
(23, 5, 2, 3499.90),
(23, 6, 1, 1199.90),
(23, 7, 3, 249.90),

-- ORDER 24
(24, 8, 2, 179.90),
(24, 9, 4, 28.90),
(24, 10, 2, 8.90),

-- ORDER 25
(25, 11, 3, 5.90),
(25, 12, 2, 4.50),
(25, 13, 1, 6.90),

-- ORDER 26
(26, 14, 5, 5.50),
(26, 15, 2, 10.90),
(26, 16, 3, 9.90),

-- ORDER 27
(27, 17, 2, 8.90),
(27, 18, 1, 7.90),
(27, 19, 4, 3.50),

-- ORDER 28
(28, 20, 2, 8.50),
(28, 21, 3, 18.90),
(28, 22, 2, 19.90),

-- ORDER 29
(29, 23, 1, 7.90),
(29, 24, 3, 9.90),
(29, 25, 4, 3.90),

-- ORDER 30
(30, 26, 2, 14.90),
(30, 27, 3, 16.90),
(30, 28, 1, 5.90),

-- ORDER 31
(31, 29, 2, 9.90),
(31, 30, 4, 11.90),
(31, 31, 2, 6.90),

-- ORDER 32
(32, 1, 1, 150.00),
(32, 2, 2, 1500.00),
(32, 3, 3, 899.90),

-- ORDER 33
(33, 4, 2, 1299.90),
(33, 5, 1, 3499.90),
(33, 6, 2, 1199.90),

-- ORDER 34
(34, 7, 3, 249.90),
(34, 8, 2, 179.90),
(34, 9, 4, 28.90),

-- ORDER 35
(35, 10, 2, 8.90),
(35, 11, 3, 5.90),
(35, 12, 1, 4.50),

-- ORDER 36
(36, 13, 2, 6.90),
(36, 14, 5, 5.50),
(36, 15, 3, 10.90),

-- ORDER 37
(37, 16, 2, 9.90),
(37, 17, 1, 8.90),
(37, 18, 4, 7.90),

-- ORDER 38
(38, 19, 3, 3.50),
(38, 20, 2, 8.50),
(38, 21, 1, 18.90),

-- ORDER 39
(39, 22, 2, 19.90),
(39, 23, 3, 7.90),
(39, 24, 2, 9.90),

-- ORDER 40
(40, 25, 4, 3.90),
(40, 26, 2, 14.90),
(40, 27, 3, 16.90),

-- ORDER 41
(41, 28, 2, 5.90),
(41, 29, 1, 9.90),
(41, 30, 3, 11.90),

-- ORDER 42
(42, 31, 2, 6.90),
(42, 1, 1, 150.00),
(42, 2, 3, 1500.00),

-- ORDER 43
(43, 3, 2, 899.90),
(43, 4, 1, 1299.90),
(43, 5, 2, 3499.90),

-- ORDER 44
(44, 6, 3, 1199.90),
(44, 7, 2, 249.90),
(44, 8, 4, 179.90),

-- ORDER 45
(45, 9, 2, 28.90),
(45, 10, 3, 8.90),
(45, 11, 1, 5.90),

-- ORDER 46
(46, 12, 4, 4.50),
(46, 13, 2, 6.90),
(46, 14, 3, 5.50),

-- ORDER 47
(47, 15, 2, 10.90),
(47, 16, 1, 9.90),
(47, 17, 5, 8.90),

-- ORDER 48
(48, 18, 2, 7.90),
(48, 19, 3, 3.50),
(48, 20, 2, 8.50),

-- ORDER 49
(49, 21, 1, 18.90),
(49, 22, 2, 19.90),
(49, 23, 3, 7.90),

-- ORDER 50
(50, 24, 2, 9.90),
(50, 25, 4, 3.90),
(50, 26, 2, 14.90);

SELECT *
FROM TB_ORDER_ITENS;