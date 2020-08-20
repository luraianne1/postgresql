--exemplo 1: checando se o km final do veículo é maior que o km inicial no começo da rota
ALTER TABLE table_traffic
ADD CONSTRAINT vehicle_check 
CHECK (finalkm >= initialkm);	

--exemplo 2: checando se a data de nascimento é meior que o ano de 1900
ALTER TABLE table_person
ADD CONSTRAINT datebirth_check 
CHECK (datebirth >= '1900-01-01');	

--exemplo 3: checando se o nível de prioridade no atendimento está entre 1 e 5
ALTER TABLE table_event 
ADD CONSTRAINT priority_check 
CHECK (priority >= 1 and priority <= 5);	