CREATE VIEW IF NOT EXISTS dim_producto AS
SELECT
        p.producto_id,
        p.sku,
        p.nombre AS nombre_producto,
        p.categoria_id,
        c.nombre AS nombre_categoria,
        p.proveedor_id,
        p.unidad_venta,
        p.precio_lista_clp,
        p.costo_referencia_clp,
        p.stock_minimo,
        p.fecha_alta
FROM productos AS p
LEFT JOIN categorias AS c
    ON p.categoria_id = c.categoria_id;