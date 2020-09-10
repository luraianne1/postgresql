@echo off

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
echo datestr is %fullstamp%

set BACKUP_FILE=nome_do_arquivo_%fullstamp%.backup
echo backup file name is %BACKUP_FILE%
SET PGPASSWORD=<senha>

echo on
pg_dump --host <localhost> --port <5432> --username <postgres> --format tar --file %BACKUP_FILE% <nome_do_banco>
pause