
INSERT INTO Data_warehouse.dbo.dim_origen 
(cod_origen, nombre_origen)
SELECT codigoorigeninstitucional, nombreorigeninstitucional
FROM [Data Lake].dbo.DL_programas