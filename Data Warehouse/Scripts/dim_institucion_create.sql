-- Explicación:
-- OBJECT_ID('dbo.dim_institucion', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.dim_institucion', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.dim_institucion (
	cod_institucion VARCHAR(20) PRIMARY KEY,
    nombreinstitucion VARCHAR(255),
    cod_dpto_institucion VARCHAR(10),
    cod_mpio_institucion VARCHAR(10),
    FOREIGN KEY (cod_dpto_institucion) REFERENCES dim_departamentos(cod_dpto),
    FOREIGN KEY (cod_mpio_institucion) REFERENCES dim_municipios(cod_mpio)
);
END;