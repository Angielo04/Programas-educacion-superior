-- Explicación:
-- OBJECT_ID('dbo.FAC_programas', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.FAC_programas', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.FAC_programas (
    id INT IDENTITY(1,1) PRIMARY KEY,
    cod_institucion VARCHAR(20),
    cod_caracter VARCHAR(10),
    cod_origen VARCHAR(10),
    cod_nivel_academico VARCHAR(10),
    nombre_nivel_academico VARCHAR(100),
    cod_acreditacion VARCHAR(10),
    nombre_acreditacion VARCHAR(100),
    anios_acreditados INT,
    numero_resolucion VARCHAR(100),
    nombre_titulo VARCHAR(255),
    fecha_acreditacion DATE,
    fecha DATE,
    FOREIGN KEY (cod_institucion) REFERENCES dim_institucion(cod_institucion),
    FOREIGN KEY (cod_caracter) REFERENCES dim_caracter(cod_caracter),
    FOREIGN KEY (cod_origen) REFERENCES dim_origen(cod_origen),
    FOREIGN KEY (fecha) REFERENCES dim_fechas(fecha)
    );
END;