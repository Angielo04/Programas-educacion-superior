INSERT INTO Data_warehouse.dbo.dim_departamentos
(cod_dpto, nom_dpto, latitud, longitud)
SELECT COD_DPTO, NOM_DPTO, LATITUD, LONGITUD
FROM [Data Lake].dbo.DL_Departamentos

