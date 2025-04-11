
-- PROCEDIMIENTO: Registrar una venta con validaciones

CREATE OR REPLACE FUNCTION validar_cliente(cliente_id INTEGER)
RETURNS VOID AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM clientes WHERE id = cliente_id) THEN
        RAISE EXCEPTION 'Cliente con ID % no existe.', cliente_id;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Validar que el cliente exista.

CREATE OR REPLACE FUNCTION obtener_stock(producto_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
    stock_actual INTEGER;
BEGIN
    SELECT stock INTO stock_actual FROM productos WHERE id = producto_id;

    IF stock_actual IS NULL THEN
        RAISE EXCEPTION 'Producto con ID % no existe.', producto_id;
    END IF;

    RETURN stock_actual;
END;
$$ LANGUAGE plpgsql;

-- Verificar que el stock sea suficiente antes de procesar la venta.


CREATE OR REPLACE FUNCTION registrar_encabezado_venta(cliente_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
    nueva_venta_id INTEGER;
BEGIN
    INSERT INTO ventas (clientes_id)
    VALUES (cliente_id)
    RETURNING id INTO nueva_venta_id;

    RETURN nueva_venta_id;
END;
$$ LANGUAGE plpgsql;

-- Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE

CREATE OR REPLACE FUNCTION registrar_detalle_venta(venta_id INTEGER, producto_id INTEGER, cantidad INTEGER)
RETURNS VOID AS $$
BEGIN
    INSERT INTO detalle_venta (ventas_id, productos_id, cantidad)
    VALUES (venta_id, producto_id, cantidad);
END;
$$ LANGUAGE plpgsql;

--Si hay stock, se realiza el registro de la venta.

CREATE OR REPLACE FUNCTION actualizar_stock(producto_id INTEGER, cantidad INTEGER)
RETURNS VOID AS $$
BEGIN
    UPDATE productos
    SET stock = stock - cantidad
    WHERE id = producto_id;
END;
$$ LANGUAGE plpgsql;