CREATE TABLE TbColaborador (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    CorreoElectronico VARCHAR(100),
    IdPuesto INT NOT NULL,
    Estado BIT NOT NULL DEFAULT 1,
    FechaCreacion DATETIME NOT NULL,
    UsuarioCreacion VARCHAR(50) NOT NULL,
    FechaModificacion DATETIME NOT NULL,
    UsuarioModificacion VARCHAR(50) NOT NULL,
    CONSTRAINT FK_Colaborador_Puesto FOREIGN KEY (IdPuesto) REFERENCES TbPuesto(Id)
);