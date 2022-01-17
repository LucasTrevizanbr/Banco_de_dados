#Um select simples buscando todos os campos
SELECT * FROM tb_projeto;

#Select apenas de campos desejados
SELECT nome_projeto, numero_projeto FROM tb_projeto;

#Select com alias(apelido)
SELECT nome_projeto AS 'NOME DO PROJETO'
, numero_projeto AS 'NUMERO DO PROJETO' FROM tb_projeto;

#Selects com filtro
SELECT * FROM tb_projeto 
WHERE Local_Projeto = 'Mauá';

SELECT * FROM tb_projeto
WHERE Numero_Projeto = 10 AND Numero_Departamento  = 4;

SELECT * FROM tb_funcionario WHERE data_nascimento >= '1965-01-01';

#Também é possivel manipular atributos do tipo data de maneira mais amigavel, como por exemplo usar somente o ano
SELECT * FROM tb_funcionario WHERE YEAR(data_nascimento ) >= 1965;

#Union aplicado a 2 selects que contém o mesmo tipo de domínio(varchar)
SELECT cpf FROM tb_funcionario WHERE Numero_Departamento = 5
UNION
SELECT DISTINCT cpf_supervisor FROM tb_funcionario WHERE Numero_Departamento = 5;
