--Agrupar quantidade de registros por mês e somar total do ano
--Os registros estão agrupados por mês na subquery e somados na query externa
SELECT (SUM(QUANTITY)) AS "TOTAL_RECORDS" 
	FROM (	
			SELECT date_part('MON', COLUMN_TIMESTAMP) AS month, COUNT(id) AS QUANTITY FROM TABLE_NAME
				WHERE COLUMN_TIMESTAMP >= '2022-01-01 00:00:00.000000+00:00'
				ORDER BY date_part('MON', COLUMN_TIMESTAMP) ASC;
				GROUP BY date_part('MON', COLUMN_TIMESTAMP)
		 ) s;