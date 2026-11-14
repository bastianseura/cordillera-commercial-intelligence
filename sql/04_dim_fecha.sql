CREATE VIEW IF NOT EXISTS dim_fecha AS
SELECT
     fecha,
     anio,
     mes,
     dia,
     dia_semana,
     mes_inicio,
     STRFTIME('%Y-%m', fecha) AS anio_mes,
     CASE 
        WHEN mes IN (1,2,3) THEN 1
        WHEN mes IN (4,5,6) THEN 2
        WHEN mes IN (7,8,9) THEN 3
        WHEN mes IN (10,11,12) THEN 4
        ELSE NULL END AS trimestre,
    CASE 
        WHEN mes = 1 THEN 'Enero'
        WHEN mes = 2 THEN 'Febrero'
        WHEN mes = 3 THEN 'Marzo'
        WHEN mes = 4 THEN 'Abril'
        WHEN mes = 5 THEN 'Mayo'
        WHEN mes = 6 THEN 'Junio'
        WHEN mes = 7 THEN 'Julio'
        WHEN mes = 8 THEN 'Agosto'
        WHEN mes = 9 THEN 'Septiembre'
        WHEN mes = 10 THEN 'Octubre'
        WHEN mes = 11 THEN 'Noviembre'
        WHEN mes = 12 THEN 'Diciembre'
        ELSE NULL END AS nombre_mes,
    CASE
        WHEN dia_semana = 1 THEN 'Lunes'
        WHEN dia_semana = 2 THEN 'Martes'
        WHEN dia_semana = 3 THEN 'Miércoles'
        WHEN dia_semana = 4 THEN 'Jueves'
        WHEN dia_semana = 5 THEN 'Viernes'
        WHEN dia_semana = 6 THEN 'Sábado'
        WHEN dia_semana = 7 THEN 'Domingo' 
        ELSE NULL END AS nombre_dia_semana
FROM calendario;
