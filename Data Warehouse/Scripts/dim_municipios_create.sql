-- Explicación:
-- OBJECT_ID('dbo.dim_municipios', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.dim_municipios', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.dim_municipios (
	cod_mpio VARCHAR(10) PRIMARY KEY,
    nom_mpio VARCHAR(100),
    tipo VARCHAR(50),
    latitud FLOAT,
    longitud FLOAT,
    cod_dpto VARCHAR(10),
    FOREIGN KEY (cod_dpto) REFERENCES dim_departamentos(cod_dpto)
);
END;