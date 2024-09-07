CREATE TABLE TbPuesto (
    Id INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(150),
    Estado bit NOT NULL DEFAULT 1,
    FechaCreacion DATETIME NOT NULL,
    UsuarioCreacion VARCHAR(50) NOT NULL,
    FechaModificacion DATETIME,
    UsuarioModificacion VARCHAR(50) NOT NULL
);