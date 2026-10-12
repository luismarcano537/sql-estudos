-- Modulo 04 - Base de conhecimentos

-- Consulte sys.indexes e confirme que a PK de cada tabela criou um índice
-- clusterizado automaticamente.

SELECT *
FROM sys.indexes

-- 4.2 Crie um índice UNIQUE não clusterizado em Clientes(Email).

ALTER TABLE TB_CUSTOMERS
ADD CONSTRAINT UQ_TB_CUSTOMERS_EMAILS UNIQUE (CUSTOMER_EMAIL)


--Adicione as constraints: CHECK (Preco > 0), CHECK (Quantidade > 0), DEFAULT
--GETDATE() em DataCadastro e um CHECK que aceite apenas os status válidos. Teste
--violando cada uma e anote os erros.

SELECT *
FROM TB_PRODUCTS;

ALTER TABLE TB_PRODUCTS
ADD CONSTRAINT CHECK_TB_PRODUCT_PRICE CHECK (PRODUCT_PRICE > 0);

ALTER TABLE TB_PRODUCTS
ADD CONSTRAINT CHECK_TB_PRODUCT_STOCK CHECK (PRODUCT_STOCK > 0);

ALTER TABLE TB_PRODUCTS
ADD CONSTRAINT DF_PRODUCT_REGISTRATION_DATE 
DEFAULT GETDATE() FOR PRODUCT_REGISTRATION_DATE;

