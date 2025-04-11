-- Conjunto de consultas avanzadas para análisis de datos

-- 1. Listar los productos con stock menor a 5 unidades
SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

-- 2. Calcular ventas totales de un mes específico 
SELECT SUM(p.precio * dv.cantidad) AS total_ventas
FROM ventas v
JOIN detalle_venta dv ON v.id = dv.ventas_id
JOIN productos p ON dv.productos_id = p.id
WHERE DATE_TRUNC('month', v.fecha) = '2025-03-01';

-- 3. Obtener el cliente con más compras realizadas
SELECT c.id, c.nombre, COUNT(v.id) AS total_compras
FROM clientes c
JOIN ventas v ON c.id = v.clientes_id
GROUP BY c.id, c.nombre
ORDER BY total_compras DESC
LIMIT 1;

-- 4. Listar los 5 productos más vendidos
SELECT p.id, p.nombre, SUM(dv.cantidad) AS total_vendido
FROM productos p
JOIN detalle_venta dv ON p.id = dv.productos_id
GROUP BY p.id, p.nombre
ORDER BY total_vendido DESC
LIMIT 5;

-- 5. Consultar ventas realizadas en un rango de fechas (Ejemplo: del 1 al 3 de abril de 2025)
SELECT v.*
FROM ventas v
WHERE v.fecha BETWEEN '2025-04-01' AND '2025-04-03 23:59:59';

-- 6. Identificar clientes que no han comprado en los últimos 6 meses
SELECT c.id, c.nombre
FROM clientes c
WHERE c.id NOT IN (
    SELECT DISTINCT v.clientes_id
    FROM ventas v
    WHERE v.fecha >= CURRENT_DATE - INTERVAL '6 months'
);