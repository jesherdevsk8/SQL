Current database:	cadastro
Current user:		jesher@localhost
Server:			MariaDB
Server version:		10.7.1-MariaDB-1:10.7.1+maria~bullseye mariadb.org binary distribution

Debian Bullseye

-- MODELO RELACIONAL

-- Adicionar uma coluna

ALTER TABLE gafanhotos
ADD COLUMN cursopreferido INT 

-- Adicionar chave estrangeira

ALTER TABLE gafanhotos
ADD CONSTRAINT fk_cursopreferido_cursos
FOREIGN KEY (cursopreferido)
REFERENCES cursos (idcurso);

-- Adicionando pessoa ao curso preferidop

UPDATE gafanhotos
SET cursopreferido = '6'
WHERE id = '1';

-- Juntando tabelas

SELECT g.nome, c.nome, c.ano
FROM gafanhotos as g
INNER JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome.;

-- Juntando tabelas com campos nulos

SELECT g.nome, c.nome, c.ano
FROM gafanhotos as g
RIGHT OUTER JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY c.nome;
-- RIGHT OUTER JOIN está dando preferencia à tabela da direita(cursos)o;


