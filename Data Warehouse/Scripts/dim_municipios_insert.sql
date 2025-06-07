INSERT INTO Data_warehouse.dbo.dim_municipios
(cod_mpio, cod_dpto, nom_mpio, latitud, longitud,tipo)
SELECT COD_MPIO, COD_DPTO, NOM_MPIO, LATITUD, LONGITUD,TIPO 
FROM [Data Lake].dbo.DL_Municipios


