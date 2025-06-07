-- Explicación:
-- OBJECT_ID('dbo.dim_caracter', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.dim_caracter', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.dim_caracter (
    cod_caracter VARCHAR(10) PRIMARY KEY,
    nombre_caracter VARCHAR(100)
);
END;