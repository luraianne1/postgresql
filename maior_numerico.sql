--Seleciona o maior valor numérico 
SELECT MAX(COLUMN_NAME::NUMERIC) FROM TABLE_NAME WHERE COLUMN_NAME ~ '^[0-9]+$';