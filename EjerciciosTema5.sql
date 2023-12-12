
-- CONSULTA 1 --
-- Lista el nombre de todos los productos que hay en la tabla producto.--
SELECT nombre FROM producto;

-- CONSULTA 2 --
-- Lista los nombres y los precios de todos los productos de la tabla producto. --
SELECT nombre, precio FROM producto;

-- CONSULTA 3 --
-- Lista todas las columnas de la tabla producto.--
SHOW COLUMNS FROM producto;

-- CONSULTA 4 --
-- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). --
SELECT nombre AS "Nombre de producto", precio AS "Euros", (precio * 1.13) AS "Dólares" FROM producto;

-- CONSULTA 5 --
-- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares. --
SELECT nombre AS "Nombre de producto", precio AS "Euros", (precio * 1.13) AS "Dólares" FROM producto;

-- CONSULTA 6 --
-- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula. --
SELECT UPPER(nombre) AS "Nombres en mayúscula", precio FROM producto;


-- CONSULTA 7 --
-- 7. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula. --
SELECT LOWER(nombre) AS "Nombres en minúscula", precio FROM producto;

-- CONSULTA 8 --
-- Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante. --

SELECT nombre,
       UPPER(SUBSTRING(nombre, 1, 2)) AS "Primeros dos caracteres en mayúscula"
FROM fabricante;

-- CONSULTA 9 --
-- Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.  --
SELECT nombre, ROUND(precio) AS "Precio redondeado" FROM producto;


-- CONSULTA 10 --
-- Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal. --
SELECT nombre, TRUNCATE(precio, 0) AS "Precio truncado" FROM producto;


-- CONSULTA 11 --
-- Lista el código de los fabricantes que tienen productos en la tabla producto. --
SELECT DISTINCT codigo_fabricante FROM producto;


-- CONSULTA 12 --
-- Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos. --
SELECT DISTINCT codigo_fabricante FROM producto;


-- CONSULTA 13 --
-- Lista los nombres de los fabricantes ordenados de forma ascendente. --
SELECT nombre FROM fabricante ORDER BY nombre ASC;


-- CONSULTA 14 --
-- Lista los nombres de los fabricantes ordenados de forma descendente. --
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;


-- CONSULTA 15 --
-- Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente --
SELECT nombre, precio
FROM producto
ORDER BY nombre ASC, precio DESC;

-- CONSULTA 16 --
-- Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante LIMIT 5;

-- CONSULTA 17 --
-- Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta. --
SELECT * FROM fabricante LIMIT 3, 2;

-- CONSULTA 18 --
-- Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT) --

SELECT nombre, precio FROM producto ORDER BY precio LIMIT 1;

-- CONSULTA 19 --
-- Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT) --

SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

-- CONSULTA 20 --
-- Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2. --

SELECT nombre FROM producto WHERE codigo_fabricante = 2;

-- CONSULTA 21 --
-- Lista el nombre de los productos que tienen un precio menor o igual a 120€. --

SELECT nombre FROM producto WHERE precio <= 120;

-- CONSULTA 22 --
-- Lista el nombre de los productos que tienen un precio mayor o igual a 400€. --

SELECT nombre FROM producto WHERE precio >= 400;

-- CONSULTA 23 --
-- Lista el nombre de los productos que no tienen un precio mayor o igual a 400€. --

SELECT nombre FROM producto WHERE NOT precio >= 400;

-- CONSULTA 24 --
-- Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN. --

SELECT nombre FROM producto WHERE precio >= 80 AND precio <= 300;

-- CONSULTA 25 --
-- Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN. --
SELECT nombre FROM producto WHERE precio BETWEEN 60 AND 200;

-- CONSULTA 26 --
-- Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6. --
SELECT * FROM productos
WHERE precio > 200 AND codigo_fabricante = 6;

-- CONSULTA 27 --
-- Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN. --
SELECT nombre FROM producto WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;

-- CONSULTA 28 --
-- Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN. --

SELECT nombre FROM producto WHERE codigo_fabricante IN (1, 3, 5);


-- CONSULTA 29 --
-- Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos. --

SELECT nombre, precio * 100 AS centimos FROM producto;

-- CONSULTA 30 --
-- Lista los nombres de los fabricantes cuyo nombre empiece por la letra S. --

SELECT nombre FROM fabricante WHERE nombre LIKE 'S%';

-- CONSULTA 31 --
-- Lista los nombres de los fabricantes cuyo nombre termine por la vocal e. --

SELECT nombre FROM fabricante WHERE nombre LIKE '%e';

-- CONSULTA 32 --
-- Lista los nombres de los fabricantes cuyo nombre contenga el carácter w. --

SELECT nombre FROM fabricante WHERE nombre LIKE '%w%';

-- CONSULTA 33 --
-- Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres. --

SELECT nombre FROM fabricante WHERE LENGTH(nombre) = 4;

-- CONSULTA 34 --
-- Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre. --

SELECT nombre FROM producto WHERE nombre LIKE '%Portátil%';

-- CONSULTA 35 --
-- Devuelve una lista con el nombre de todos los productos que contienen la cadena monitor en el nombre y tienen un precio inferior a 215 €. --
SELECT nombre FROM producto WHERE nombre LIKE '%Monitor%' AND precio < 215;