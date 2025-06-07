
INSERT INTO Data_warehouse.dbo.dim_caracter 
(cod_caracter, nombre_caracter)
SELECT codigocaracteracademico, nombrecaracteracademico
FROM [Data Lake].dbo.DL_programas