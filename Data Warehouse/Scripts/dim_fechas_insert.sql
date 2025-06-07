SET DATEFIRST 1;

INSERT INTO Data_warehouse.dbo.DIM_Fechas 
(Fecha, Annio, Mes, Dia, DiaSemana, Semana, Trimestre)
SELECT DISTINCT fecha_creacion AS Fecha
	, YEAR(fecha_creacion) AS Annio
	, MONTH(fecha_creacion) AS Mes
	, DAY(fecha_creacion) AS Dia
	, DATEPART(WEEKDAY, fecha_creacion) AS DiaSemana
	, DATEPART(WEEK, fecha_creacion) AS Semana
	, DATEPART(QUARTER, fecha_creacion) AS Trimestre
FROM dbo.DL_programas
WHERE fecha_creacion IS NOT NULL
