USE Chinook;

--TOP 10 TOTAL DE GÊNERO MUSICAIS POR ARTISTA
--UTILIZANDO SUBCONSULTA
WITH DiversidadeGeneroMusical AS (
    SELECT 
        AR.ArtistId,
        AR.Name AS Artista,
        COUNT(DISTINCT G.GenreId) AS GeneroMusical
    FROM 
        Artist AR
    INNER JOIN 
        Album AL ON AR.ArtistId = AL.ArtistId
    INNER JOIN 
        Track T ON AL.AlbumId = T.AlbumId
    INNER JOIN 
        Genre G ON T.GenreId = G.GenreId
    GROUP BY 
        AR.ArtistId, AR.Name
)
SELECT TOP 10
    Artista,
    GeneroMusical
FROM 
    DiversidadeGeneroMusical
ORDER BY 
    GeneroMusical DESC;