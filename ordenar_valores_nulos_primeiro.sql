--Se você aplicar a cláusula ORDER BY a uma coluna com NULLs, os valores NULL serão colocados primeiro ou por último no conjunto de resultados
--Teste o exemplo abaixo em sua tabela e repare que IS NOT NULL é usado como condição para a COLUMN_NAME_1 e não como ordenação
--A ordenação ocorre de forma descendente na COLUMN_NAME_2, após a separação de resultados da COLUMN_NAME_1
SELECT COLUMN_NAME_1, COLUMN_NAME_2
FROM TABLE_NAME 
ORDER BY COLUMN_NAME_1 IS NOT NULL, COLUMN_NAME_2 DESC