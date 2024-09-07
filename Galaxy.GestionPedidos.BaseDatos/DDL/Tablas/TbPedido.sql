CREATE TABLE [dbo].[TbPedido]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdCliente] INT NULL, 
    [IdColaborador] INT NULL, 
    [TotalBruto] DECIMAL(10, 2) NULL, 
    [TotalNeto] DECIMAL(10, 2) NULL, 
    [AdelantoPedido] DECIMAL(10, 2) NULL,
    [Estado] BIT NOT NULL DEFAULT 1, 
    [FechaCreacion] DATETIME NOT NULL DEFAULT GETDATE(), 
    [UsuarioCreacion] VARCHAR(50) NOT NULL DEFAULT 'sql', 
    [FechaModificacion] DATETIME NULL, 
    [UsuarioModificacion] VARCHAR(50) NULL, 
    CONSTRAINT [FK_TbPedido_TbCliente] FOREIGN KEY ([IdCliente]) REFERENCES TbCliente(Id), 
    CONSTRAINT [FK_TbPedido_TbColaborador] FOREIGN KEY ([IdColaborador]) REFERENCES TbColaborador(IdColaborador)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identificador del registro',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbPedido',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identificador del cliente',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbPedido',
    @level2type = N'COLUMN',
    @level2name = N'IdCliente'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identificador del Colaborador',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbPedido',
    @level2type = N'COLUMN',
    @level2name = N'IdColaborador'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Total bruto del pedido',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbPedido',
    @level2type = N'COLUMN',
    @level2name = N'TotalBruto'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Total netro del pedido',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbPedido',
    @level2type = N'COLUMN',
    @level2name = N'TotalNeto'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Adelanto del pedido en caso sea',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TbPedido',
    @level2type = N'COLUMN',
    @level2name = N'AdelantoPedido'