-- 1-c, 2-c, 3-b, 4-b, 5-c, 6-d, 7-b, 8-b, 9-c, 10-b

-- pratica

-- 11
UPDATE funcionarios 
SET salario = salario * 1.15 
WHERE departamento = 'Vendas';

-- 12
DELETE FROM logs 
WHERE data_criacao < '2024-01-01';

/* 13
   Esse comando serve para arrancar uma coluna da tabela de vez. 
   A gente usa quando aquele campo não faz mais sentido para o sistema 
   e precisa limpar a estrutura. O detalhe importante é que, rodando isso, 
   todos os dados que estavam nessa coluna somem junto.
*/

/* 14
   A ideia principal do LEFT JOIN é garantir que a tabela da esquerda
   seja listada por completo, não importa se tem ligação com a da direita.
   
   Exemplo: Vai listar todos os autores cadastrados. Se o cara escreveu um livro, 
   mostra os dados do livro. Se não escreveu nada, o autor aparece igual na lista, 
   mas os campos do livro vêm como NULL. É pra ninguém ficar de fora.
*/

-- 15


/* 16.
   O backup é a garantia de vida do banco. É fundamental pra gente conseguir 
   recuperar os dados se der algum problema grave.
   
   Cenário: Imagina se queima o HD do servidor físico ou se a empresa pega 
   um vírus tipo Ransomware que bloqueia tudo. Com o backup, a gente restaura 
   o banco para como ele estava antes do desastre.
*/

/* 17.
   A Modelagem Lógica é a etapa onde a gente pega o Conceitual 
   e traduz pra linguagem técnica do banco.
   Basicamente, ela transforma o que era "Entidade" em Tabela, define os tipos 
   das colunas (se é número, texto, data) e cria as Chaves Estrangeiras pra ligar tudo.
*/

/* 18.
   - Primary Key (PK): É o ID do registro. Identifica ele de forma única, não repete e não pode ser vazio.
   - Foreign Key (FK): É o campo que faz o link apontando pra PK de outra tabela.
   
   Elas trabalham juntas pra manter a integridade: a FK impede que você cadastre 
   uma informação "órfã", tipo vender pra um cliente que não existe na tabela de clientes.
*/

-- 19
INSERT INTO filmes (id_filme, titulo, ano_lancamento) 
VALUES (50, 'O Grande Mestre', 2023);

/* 20.
   Normalização é quando a gente organiza as tabelas seguindo umas regras
   pra deixar o banco redondo.
   O maior benefício é acabar com a redundância (ficar repetindo dado sem necessidade), 
   o que economiza espaço e evita aquelas dores de cabeça na hora de atualizar os dados.
*/