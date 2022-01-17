
#Comandos de Update devem ser utilizados com a claúsula WHERE que é um filtro nos registros da tabela.
UPDATE tb_funcionario SET NUMERO_DEPARTAMENTO = 2
WHERE CPF = '8859483743';

#Usando uma expressão aritmética no comando de UPDATE(nesse caso a continha básica para fazer a porcentagem)
UPDATE tb_funcionario SET SALARIO = 1.1 * SALARIO
WHERE NUMERO_DEPARTAMENTO = 1;

#Também é possível alterar mais de um atributo por vez de um registro
UPDATE tb_funcionario SET ENDERECO = 'Av Sousa Numero 100',
SALARIO = 13000 WHERE CPF = '35785747845';