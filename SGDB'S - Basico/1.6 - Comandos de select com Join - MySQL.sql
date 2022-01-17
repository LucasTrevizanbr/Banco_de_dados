 #Usando um select de produto cartesiano onde seleciono atributos de 2 tabelas aplicando um filtro
 SELECT tb_funcionario.Primeiro_Nome
 , tb_funcionario.Ultimo_Nome
 , tb_funcionario.CPF
 , tb_dependente.*
 FROM tb_funcionario, tb_dependente 
 WHERE tb_funcionario.sexo = 'F';
 
SELECT tb_funcionario.Primeiro_Nome
 , tb_funcionario.Ultimo_Nome
 , tb_dependente.Nome_Dependente
 FROM tb_funcionario, tb_dependente 
 WHERE tb_funcionario.sexo = 'F'
 AND tb_funcionario.Cpf = tb_dependente.Cpf_Funcionario;
 
#O SELECT com JOIN 
SELECT
tb_projeto.nome_projeto, tb_funcionario.Primeiro_Nome
FROM tb_funcionario
INNER JOIN tb_departamento ON tb_funcionario.CPF = tb_departamento.Cpf_Gerente
INNER JOIN tb_projeto ON tb_funcionario.Numero_Departamento = 
tb_projeto.Numero_Departamento;

SELECT tb_funcionario.primeiro_nome, tb_funcionario.nome_meio, tb_funcionario.ultimo_nome
FROM tb_funcionario
INNER JOIN tb_trabalha_em ON tb_funcionario.cpf = tb_trabalha_em.cpf_funcionario
INNER JOIN tb_departamento ON tb_funcionario.numero_departamento = tb_departamento.numero_departamento
WHERE tb_trabalha_em.horas > 10
AND tb_funcionario.numero_departamento = 5;