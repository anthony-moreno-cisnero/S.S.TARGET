-- Trae el parametro y el detalle segun el ID
SELECT p.parametro, dp.iddetpar, dp.detparametro
FROM parametros p, detparametros dp
WHERE p.idpar = 4 -- ID del parametro
AND p.idpar = dp.idpar