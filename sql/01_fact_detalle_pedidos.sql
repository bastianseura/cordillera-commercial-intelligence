CREATE VIEW IF NOT EXISTS fact_detalle_pedidos AS
SELECT
    dp.detalle_id,
    p.pedido_id,
    dp.producto_id,
    p.cliente_id,
    p.fecha_pedido,
    p.estado,
    p.canal,
    dp.cantidad,
    dp.neto_unitario_clp,
    dp.costo_unitario_clp,
    dp.neto_unitario_clp * dp.cantidad AS importe_neto_linea_clp,
    dp.costo_unitario_clp * dp.cantidad AS costo_linea_clp,
    dp.neto_unitario_clp * dp.cantidad - dp.costo_unitario_clp * dp.cantidad AS margen_bruto_estimado_linea_clp
FROM detalle_pedidos AS dp
INNER JOIN pedidos AS p ON dp.pedido_id = p.pedido_id;