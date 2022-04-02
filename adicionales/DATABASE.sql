

--CREATE DATABASE EXCHANGE_RATE_DATABASE
--GO

--USE EXCHANGE_RATE_DATABASE
--GO

--DROP TABLE EXCHANGE_RATE
--DROP TABLE CONVERSION_HISTORY
--DROP TABLE CURRENCY

--CREATE TABLE CURRENCY (
--	CURRENCY_ID BIGINT IDENTITY(1, 1) PRIMARY KEY,
--	CODE VARCHAR(3) NOT NULL,
--	NAME VARCHAR(250) NOT NULL,
--	SYMBOL VARCHAR(5) NOT NULL,
--	CREATION_DATE DATETIME NOT NULL,
--	CREATION_USER VARCHAR(250) NOT NULL,
--	MODIFICATION_DATE DATETIME NULL,
--	MODIFIER_USER VARCHAR(250) NULL,
--)

--CREATE TABLE EXCHANGE_RATE (
--	EXCHANGE_RATE_ID BIGINT IDENTITY(1, 1) PRIMARY KEY,
--	SOURCE_CURRENCY_ID BIGINT NOT NULL,
--	DESTINATION_CURRENCY_ID BIGINT NOT NULL,
--	EXCHANGE_RATE DECIMAL(10,6) NOT NULL,
--	CREATION_DATE DATETIME NOT NULL,
--	CREATION_USER VARCHAR(250) NOT NULL,
--	MODIFICATION_DATE DATETIME NULL,
--	MODIFIER_USER VARCHAR(250) NULL,
--    CONSTRAINT FK_EXCHANGE_RATE_SOURCE_CURRENCY_ID FOREIGN KEY (SOURCE_CURRENCY_ID) REFERENCES CURRENCY (CURRENCY_ID),
--    CONSTRAINT FK_EXCHANGE_RATE_DESTINATION_CURRENCY_ID FOREIGN KEY (DESTINATION_CURRENCY_ID) REFERENCES CURRENCY (CURRENCY_ID),
--)

--CREATE TABLE CONVERSION_HISTORY (
--	CONVERSION_HISTORY_ID BIGINT IDENTITY(1, 1) PRIMARY KEY,
--	SOURCE_CURRENCY_ID BIGINT NOT NULL,
--	SOURCE_AMOUNT DECIMAL(20,6) NOT NULL,
--	DESTINATION_CURRENCY_ID BIGINT NOT NULL,
--	DESTINATION_AMOUNT DECIMAL(20,6) NOT NULL,
--	EXCHANGE_RATE DECIMAL(10,6) NOT NULL,
--	CREATION_DATE DATETIME NOT NULL,
--	CREATION_USER VARCHAR(250) NOT NULL,
--	MODIFICATION_DATE DATETIME NULL,
--	MODIFIER_USER VARCHAR(250) NULL,
--    CONSTRAINT FK_CONVERSION_HISTORY_SOURCE_CURRENCY_ID FOREIGN KEY (SOURCE_CURRENCY_ID) REFERENCES CURRENCY (CURRENCY_ID),
--    CONSTRAINT FK_CONVERSION_HISTORY_DESTINATION_CURRENCY_ID FOREIGN KEY (DESTINATION_CURRENCY_ID) REFERENCES CURRENCY (CURRENCY_ID),
--)

--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Leke', 'ALL', 'Lek', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'USD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Afghanis', 'AFN', '؋', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'ARS', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Guilders', 'AWG', 'ƒ', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'AUD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('New Manats', 'AZN', 'ман', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'BSD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'BBD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rubles', 'BYR', 'p.', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Euro', 'EUR', '€', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'BZD', 'BZ$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'BMD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Bolivianos', 'BOB', '$b', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Convertible Marka', 'BAM', 'KM', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pula', 'BWP', 'P', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Leva', 'BGN', 'лв', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Reais', 'BRL', 'R$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'GBP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'BND', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Riels', 'KHR', '៛', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'CAD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'KYD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'CLP', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Yuan Renminbi', 'CNY', '¥', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'COP', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Colón', 'CRC', '₡', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Kuna', 'HRK', 'kn', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'CUP', '₱', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Koruny', 'CZK', 'Kč', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Kroner', 'DKK', 'kr', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'DOP ', 'RD$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'XCD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'EGP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Colones', 'SVC', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'FKP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'FJD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Cedis', 'GHC', '¢', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'GIP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Quetzales', 'GTQ', 'Q', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'GGP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'GYD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Lempiras', 'HNL', 'L', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'HKD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Forint', 'HUF', 'Ft', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Kronur', 'ISK', 'kr', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'INR', 'Rp', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupiahs', 'IDR', 'Rp', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rials', 'IRR', '﷼', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'IMP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('New Shekels', 'ILS', '₪', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'JMD', 'J$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Yen', 'JPY', '¥', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'JEP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Tenge', 'KZT', 'лв', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Won', 'KPW', '₩', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Won', 'KRW', '₩', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Soms', 'KGS', 'лв', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Kips', 'LAK', '₭', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Lati', 'LVL', 'Ls', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'LBP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'LRD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Switzerland Francs', 'CHF', 'CHF', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Litai', 'LTL', 'Lt', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Denars', 'MKD', 'ден', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Ringgits', 'MYR', 'RM', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'MUR', '₨', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'MXN', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Tugriks', 'MNT', '₮', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Meticais', 'MZN', 'MT', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'NAD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'NPR', '₨', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Guilders', 'ANG', 'ƒ', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'NZD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Cordobas', 'NIO', 'C$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Nairas', 'NGN', '₦', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Krone', 'NOK', 'kr', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rials', 'OMR', '﷼', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'PKR', '₨', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Balboa', 'PAB', 'B/.', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Guarani', 'PYG', 'Gs', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Nuevos Soles', 'PEN', 'S/.', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'PHP', 'Php', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Zlotych', 'PLN', 'zł', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rials', 'QAR', '﷼', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('New Lei', 'RON', 'lei', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rubles', 'RUB', 'руб', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'SHP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Riyals', 'SAR', '﷼', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dinars', 'RSD', 'Дин.', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'SCR', '₨', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'SGD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'SBD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Shillings', 'SOS', 'S', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rand', 'ZAR', 'R', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'LKR', '₨', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Kronor', 'SEK', 'kr', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'SRD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pounds', 'SYP', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('New Dollars', 'TWD', 'NT$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Baht', 'THB', '฿', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'TTD', 'TT$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Lira', 'TRY', '₺', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Liras', 'TRL', '£', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dollars', 'TVD', '$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Hryvnia', 'UAH', '₴', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Pesos', 'UYU', '$U', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Sums', 'UZS', 'лв', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Bolivares Fuertes', 'VEF', 'Bs', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Dong', 'VND', '₫', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rials', 'YER', '﷼', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Zimbabwe Dollars', 'ZWD', 'Z$', 'ADMIN', GETDATE());
--INSERT INTO currency (name, code, symbol, CREATION_USER, CREATION_DATE) VALUES ('Rupees', 'INR', '₹', 'ADMIN', GETDATE());

--INSERT INTO EXCHANGE_RATE VALUES (2, 82, 3.72, GETDATE(), 'ADMIN', NULL, NULL)
--INSERT INTO EXCHANGE_RATE VALUES (2, 3, 3, GETDATE(), 'ADMIN', NULL, NULL)
--INSERT INTO EXCHANGE_RATE VALUES (2, 20, 0.7, GETDATE(), 'ADMIN', NULL, NULL)


SELECT * FROM CURRENCY
SELECT * FROM EXCHANGE_RATE
SELECT * FROM CONVERSION_HISTORY


SELECT * FROM CURRENCY WHERE CODE = 'PEN'
SELECT * FROM CURRENCY WHERE CODE = 'USD'


SELECT * FROM EXCHANGE_RATE WHERE SOURCE_CURRENCY_ID = 1 AND DESTINATION_CURRENCY_ID = 2

Por cada tipo de cambio realizado, registrar quien hizo la solicitud (auditoría)
Realizar tipo de cambio a un monto donde se deben utilizar
	Monto							1000
	Moneda de origen				USD
	Moneda de destino				SOL
	Tipo de cambio					3.71432
	Monto con el tipo de cambio		1000 * 3.71 = 3714.32
	
	Registrar esto en una tabla de auditoría



Registrar, actualizar y buscar tipo de cambio

	Moneda origen	USD
	Moneda destino	SOL
	Tipo de cambio	3.71432


Autenticación


SELECT
ER.EXCHANGE_RATE_ID AS [Id],
SOURCE_CURRENCY_ID AS [SourceId],
SC.NAME AS [SourceName],
SC.SYMBOL AS [SourceSymbol],
DESTINATION_CURRENCY_ID AS [DestinationId],
DC.NAME AS [DestinationName],
DC.SYMBOL AS [DestinationSymbol],
EXCHANGE_RATE AS [ExchangeRate]
FROM EXCHANGE_RATE ER
INNER JOIN CURRENCY SC ON SC.CURRENCY_ID = ER.SOURCE_CURRENCY_ID
INNER JOIN CURRENCY DC ON DC.CURRENCY_ID = ER.DESTINATION_CURRENCY_ID
WHERE
(-1 = 2 OR SOURCE_CURRENCY_ID = 2) AND
(-1 = -82 OR DESTINATION_CURRENCY_ID = 82)


--	SOURCE_CURRENCY_ID BIGINT NOT NULL,
--	DESTINATION_CURRENCY_ID BIGINT NOT NULL,
