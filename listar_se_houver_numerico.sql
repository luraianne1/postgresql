--Lista as tuplas onde o conteúdo da coluna possua algum numérico
SELECT * FROM TABLE_NAME WHERE COLUMN_NAME SIMILAR TO '%(\d+)%'	;