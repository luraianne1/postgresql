--Lista as tuplas onde o conteúdo da coluna não seja numérico
SELECT * FROM TABLE_NAME WHERE COLUMN_NAME !~ '^[0-9]+$';