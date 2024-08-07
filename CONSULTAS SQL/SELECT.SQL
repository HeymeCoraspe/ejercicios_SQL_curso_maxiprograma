--1) Obtener las películas estrenadas en la Década de los '80.
--SELECT * FROM peliculas WHERE YEAR (FECHAESTRENO) BETWEEN 1980 AND 1989

--2) Obtener los Actores nacidos en la Década de los '70.
--SELECT * FROM REPARTO WHERE YEAR (FECHANACIMIENTO) BETWEEN 1970 AND 1979

--3) Obtener las Películas que se encuentran en la Plataforma de Disney+.
/*SELECT TITULO AS PELICULA FROM Peliculas
INNER JOIN [Peliculas.Plataformas]
ON PELICULAS.Id= [Peliculas.Plataformas].IdPelicula
WHERE IdPlataforma=3*/

--4) Obtener la Cantidad de Películas con Clasificación R. (Considerar usar el Comando LIKE)
/*
SELECT P.TITULO, C.DESCRIPCION FROM Peliculas AS P
INNER JOIN  [Peliculas.Clasificaciones] AS PC ON P.ID=PC.IdPelicula
INNER JOIN Clasificaciones AS C ON C.ID=PC.IdClasificacion
WHERE Descripcion LIKE 'r%'

SELECT COUNT(IdPelicula) as "cantidad de peliculas" FROM Peliculas AS P --conteo
INNER JOIN  [Peliculas.Clasificaciones] AS PC ON P.ID=PC.IdPelicula
INNER JOIN Clasificaciones AS C ON C.ID=PC.IdClasificacion
WHERE Descripcion LIKE 'r%'
*/

--5) Obtener la Película que mayor duración tiene.
/*
select * from Peliculas order by MinutosDuracion desc
select titulo as pelicula, minutosduracion as duracion 
from peliculas where MinutosDuracion > 170*/

--6) Obtener las Películas de Categoría 'Superhéroes'.
/*select titulo from peliculas 
inner join [Peliculas.Categorias]
on Peliculas.Id= [Peliculas.Categorias].IdPelicula
where IdCategoria= 27*/

--7) Obtener la Cantidad de Actores que trabajaron en la Película 'Los Intocables'.
/*SELECT COUNT (IdPelicula) AS "TOTAL DE ACTORES" FROM Peliculas AS P
INNER JOIN [Peliculas.Reparto] AS PR ON P.ID=PR.IdPelicula
WHERE P.Titulo LIKE '%intocables%'*/

--8) Obtener los Actores que trabajaron en la Películas 'Los Intocables'.
/*select (r.Nombre+ ' '+ r.Apellido) as Nombre, pa.nombre as Nacionalidad, fechanacimiento as "F.Nacimiento" from Reparto r
inner join [Peliculas.Reparto] pr on r.Id=pr.IdReparto
inner join Peliculas p on p.Id=pr.IdPelicula
inner join Paises pa on pa.Id=r.IdNacionalidad
where p.Titulo like '%intocables%'*/

--9) Obtener el Total de Películas del Catálogo.
/*select count (p.id) as "Cant. de películas" from Peliculas p*/

--10) Obtener la Lista de Usuarios Inactivos.
/*select * from Usuarios where Activo=0*/

