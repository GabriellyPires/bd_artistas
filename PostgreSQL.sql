CREATE TABLE artistas (
  id SERIAL PRIMARY KEY,
  Nome VARCHAR(100) UNIQUE not NULL
  );
  
  CREATE TABLE Musicas (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR(100) not NULL,
    artista INT,
    FOREIGN key(artista) REFERENCES artistas(id)
    );
    
   ALTER TABLE Musicas
   ADD COLUMN duracao_seg INT NOT NULL,
   ADD CONSTRAINT nome UNIQUE (nome)
   
   Insert into artistas (nome) VALUES
   ('System Of Down'),
   ('Girls in Red'),
   ('Lizzo'),
   ('Lana Del Rey'),
   ('Jenny');
   
   Insert into musicas (nome, duracao_seg, artista) VALUES
   ('Lonely Day', 250, 1),
   ('we fall in love in october', 250, 2),
   ('Pink', 180, 3),
   ('Baby', 180, 4),
   ('MONEY', 180, 5);
   
SELECT artistas.nome AS nome_artista, musicas.nome AS nome_musica, musicas.duracao_seg AS duracao
FROM artistas
JOIN musicas ON artistas.id = musicas.artista;