-- Explicación:
-- OBJECT_ID('dbo.dim_origen', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.dim_origen', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.dim_origen (
    cod_origen VARCHAR(10) PRIMARY KEY,
    nombre_origen VARCHAR(100)
);
END;