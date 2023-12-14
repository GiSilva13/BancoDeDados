CREATE TABLE "tb_plataforma" (
	"cod_plataforma" INTEGER,		
	"nome"	TEXT,
	"fabricante"	TEXT,
	
	PRIMARY KEY("cod_plataforma" AUTOINCREMENT)
);

CREATE TABLE "tb_jogo" (
	"cod_jogo"	INTEGER,
	"titulo"	TEXT,
	"lancamento"	DATE,
	"genero"	TEXT,
	"cod_plataforma"	INTEGER,
	CONSTRAINT "cod_plataforma" FOREIGN KEY("cod_plataforma") REFERENCES "tb_plataforma"("cod_plataforma"),
	PRIMARY KEY("cod_jogo" AUTOINCREMENT)
);

INSERT INTO tb_plataforma (nome, fabricante)
VALUES
    ('PlayStation 5', 'Sony'),
    ('Xbox Series X', 'Microsoft'),
    ('Nintendo Switch', 'Nintendo'),
    ('PlayStation 4', 'Sony'),
    ('Xbox One', 'Microsoft'),
    ('Will U', 'Nintendo'),
    ('PlayStation 3', 'Sony'),
    ('Xbox 360', 'Microsoft'),
	('Nintendo Will', 'Nintendo'),
    ('PlayStation 2', 'Sony');
    
    INSERT INTO tb_jogo (titulo, genero, lancamento, cod_plataforma)
VALUES
    ('Demon´s Souls', 'RPG', '11/12/2020', '1'),
	('Ratchet & Clank: Rift Apart', 'Ação/Aventura', '11/12/2020', '2'),
	('Halo infinite', 'FPS', '11/12/2020', '3'),
	('Forza Horizon', 'Corrida', '11/12/2020', '4'),
	('The Legend of Zelda: Breath of the Wild', 'Ação/Aventura', '11/12/2020', '5'),
	('Animal Crossing: New Horizons', 'Simulação', '11/12/2020', '6'),
	('God of war', 'Ação/Aventura', '11/12/2020', '7'),
	('Horizon Zero Dawn', 'RPG', '11/12/2020', '8'),
	('Gers of war 3', 'Tiro', '11/12/2020', '9'),
	('Will Sports Resort', 'Esporte', '11/12/2020', '10');
    
    
    SELECT * FROM tb_plataforma WHERE nome = "PlayStation 5";
    
    SELECT * FROM tb_jogo WHERE genero = "Ação/Aventura";
    
    
    
    SELECT 
		tb_jogo.titulo, 
		tb_jogo.lancamento, 
		tb_jogo.genero,
		tb_plataforma.nome,
		tb_plataforma.fabricante
	FROM 
		tb_jogo
	INNER JOIN 
		tb_plataforma ON tb_plataforma.cod_plataforma = tb_jogo.cod_jogo;
        
        
        
        
        UPDATE tb_jogo
SET lancamento = '27/04/2007'
WHERE cod_jogo = '1';

UPDATE tb_jogo
SET lancamento = '21/02/2006'
WHERE cod_jogo = '2';

UPDATE tb_jogo
SET lancamento = '13/09/2008'
WHERE cod_jogo = '3';

UPDATE tb_jogo
SET lancamento = '26/06/2007'
WHERE cod_jogo = '4';



DELETE FROM tb_jogo WHERE titulo = "Demon´s Souls";
DELETE FROM tb_jogo WHERE titulo = "God of war";
DELETE FROM tb_jogo WHERE titulo = "Halo infinite";
DELETE FROM tb_jogo WHERE titulo = "Ratchet & Clank: Rift Apart";




	


