--Agrupar coluna num array
SELECT COLUMN_NAME_1, array_agg(COLUMN_NAME_2)
FROM TABLE_NAME 
GROUP BY COLUMN_NAME_1
ORDER BY COLUMN_NAME_1 ASC