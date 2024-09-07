﻿CREATE TABLE [dbo].[TbMaestroDetalle]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdMaestro] INT NOT NULL, 
    [Codigo] CHAR(30) NOT NULL UNIQUE, 
    [Descripcion] VARCHAR(100) NULL, 
    Valor VARCHAR(100) NULL,
    [TipoMaestro] CHAR(3) NULL,
    [Estado] BIT NOT NULL DEFAULT 1, 
    [FechaCreacion] DATETIME NOT NULL DEFAULT GETDATE(), 
    [UsuarioCreacion] VARCHAR(50) NOT NULL DEFAULT 'sql', 
    [FechaModificacion] DATETIME NULL, 
    [UsuarioModificacion] VARCHAR(50) NULL, 
    CONSTRAINT [FK_TbMaestroDetalle_TbMaestro] FOREIGN KEY ([IdMaestro]) REFERENCES TbMaestro(Id)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identificador del registro, autoincremental',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identificador de la cabecera Maestro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'IdMaestro'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Valor unico para acceder al registro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'Codigo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Descripcion del registro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'Descripcion'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Valor principal del catalogo',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'Valor'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Determina CFG si es Configuracion y MAE si es un maestro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'TipoMaestro'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'0 - Inactivo / 1 - Activo',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'Estado'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha de creación del registro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'FechaCreacion'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Nombre de usuario del registro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'UsuarioCreacion'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha de ultima modificacion',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'FechaModificacion'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Usuario de ultima modificacion',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbMaestroDetalle',
    @level2type = N'COLUMN',
    @level2name = N'UsuarioModificacion'