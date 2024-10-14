CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    CNH VARCHAR(20) NOT NULL,
    Endereço VARCHAR(200),
    Contato VARCHAR(50)
);

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Empresa VARCHAR(100),
    Endereço VARCHAR(200),
    Contato VARCHAR(50)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT NOT NULL,
    DriverID INT NOT NULL,
    DetalhesPedido TEXT,
    DataEntrega DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);


INSERT INTO Drivers (Nome, CNH, Endereço, Contato)
VALUES ('João Silva', '1234567890', 'Rua A, 123', '99999-9999'),
       ('Maria Souza', '0987654321', 'Rua B, 456', '88888-8888');


INSERT INTO Clients (Nome, Empresa, Endereço, Contato)
VALUES ('Empresa XYZ', 'XYZ Corp', 'Av. Central, 1000', '77777-7777'),
       ('Empresa ABC', 'ABC Ltda', 'Rua Nova, 500', '66666-6666');


INSERT INTO Orders (ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES (1, 1, 'Entrega de produtos eletrônicos', '2024-10-15', 'Pendente'),
       (2, 2, 'Entrega de móveis', '2024-10-16', 'Entregue');


SELECT * FROM Drivers;

SELECT * FROM Clients;

SELECT * FROM Orders;

UPDATE Orders
SET Status = 'Entregue'
WHERE OrderID = 1;

DELETE FROM Clients
WHERE ClientID = 2;

