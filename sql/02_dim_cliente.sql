CREATE VIEW IF NOT EXISTS dim_cliente AS
SELECT 
    cliente_id,
    razon_social,
    segmento,
    region,
    comuna,
    fecha_alta,
    vendedor_id,
    plazo_dias
FROM clientes;
