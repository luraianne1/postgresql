SELECT count(pg_tables) 
FROM pg_tables 
WHERE tableowner = 'postgres' AND tablename NOT LIKE 'pg%' and tablename NOT LIKE 'sql%';

--Descobrir quantidade de tabelas no banco
