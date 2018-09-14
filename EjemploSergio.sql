use Belleza
DROP TABLE Compra
DROP TABLE Foto
DROP TABLE Video
DROP TABLE Uso
DROP TABLE Producto
DROP TABLE Usuario






 CREATE TABLE Usuario(
    IDUsuario nvarchar(50)  PRIMARY KEY, 
    Password nvarchar(200) NOT NULL,
    Nombre nvarchar (50),
    Email nvarchar (500),
    Tipo nvarchar (100),
    Administrador BIT NOT NULL DEFAULT 0
)

CREATE TABLE Producto(
      IDProd bigint NOT NULL IDENTITY (1,1) PRIMARY KEY,
      Marca nvarchar(100),
      Numero int,
      Precio money,
      Oferta decimal, 
      IdCategoria bigint 
)
 CREATE TABLE Uso(
      IDUsos bigint NOT NULL IDENTITY (1,1) PRIMARY KEY,
      IDProducto bigint REFERENCES Producto,
      Descripcion text NOT NULL,
       
)
CREATE TABLE Video (
     IDVideos bigint NOT NULL IDENTITY (1,1) PRIMARY KEY,
     IDUsos bigint REFERENCES Uso,
     URL text,
)    
     
     
 CREATE TABLE Foto( 
     IDFotos bigint NOT NULL IDENTITY (1,1) PRIMARY KEY,
     IDProducto bigint REFERENCES Producto,
     Foto text,
)

     CREATE TABLE Compra(
     IDCompra bigint NOT NULL IDENTITY (1,1) PRIMARY KEY,
     IDProducto bigint REFERENCES Producto,
     Precio money NOT NULL,
     Cantidad int  
)