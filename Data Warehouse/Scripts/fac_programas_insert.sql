
INSERT INTO Data_warehouse.dbo.FAC_programas
(cod_institucion, 
cod_caracter,
cod_origen,
cod_nivel_academico,
nombre_nivel_academico,
cod_acreditacion,
nombre_acreditacion,
anios_acreditados,
numero_resolucion,
nombre_titulo,
fecha_acreditacion,
fecha)
SELECT 
codigoinstitucion,
codigocaracteracademico,
codigoorigeninstitucional,
codigonivelacademico,
nombrenivelacademico,
codigotipoacreditacion,
nombretipoacreditacion,
aniosacreditados,
numeroresolucionacreditacion,
nombretituloobtenido,
fecha_acreditacion,
fecha_creacion
FROM [Data Lake].dbo.DL_programas



