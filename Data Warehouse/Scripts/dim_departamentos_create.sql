-- Explicación:
-- OBJECT_ID('dbo.dim_departamentos', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.dim_departamentos', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.dim_departamentos (
	cod_dpto VARCHAR(10) PRIMARY KEY,
    nom_dpto VARCHAR(100),
    latitud FLOAT,
    longitud FLOAT
);
END;