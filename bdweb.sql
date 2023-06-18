CREATE TABLE Usuario (
  ID_Usuario INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  CorreoElectronico VARCHAR(50) unique,
  Contraseña VARCHAR(50),
  telefono int(12) unique,
  rol_id INT
);

CREATE TABLE Producto (
  ID_Producto INT PRIMARY KEY,
  Tipo ENUM('Papeleria', 'Merceria'),
  Nombre VARCHAR(50),
  Precio DECIMAL(10, 2),
  Categoria VARCHAR(50),
  Descripcion VARCHAR(100)
  
);

CREATE TABLE Pedido (
  ID_Pedido INT PRIMARY KEY,
  Fecha DATE,
  Total DECIMAL(10, 2),
  Estado ENUM('pendiente', 'en proceso', 'enviado', 'entregado', 'cancelado'),
  ID_Usuario INT,
  FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
  FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);



CREATE TABLE Usuario_Producto_Deseado (
  ID_Usuario INT,
  ID_Producto INT,
  FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
  FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

CREATE TABLE Usuario_Producto_Comprado (
  ID_Usuario INT,
  ID_Producto INT,
  FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
  FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);




