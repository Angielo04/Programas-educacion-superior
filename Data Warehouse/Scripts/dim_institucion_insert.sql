
INSERT INTO Data_warehouse.dbo.dim_institucion
(cod_institucion, nombreinstitucion, cod_dpto_institucion, cod_mpio_institucion)
SELECT codigoinstitucion, nombreinstitucion, codigodepartinstitucion, codigomunicipioinstitucion
FROM [Data Lake].dbo.DL_programas