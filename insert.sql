--  Script para insertar datos de prueba en la base de datos.

INSERT INTO categorias (nombre) VALUES
('tablets'),('camaras'),('xboxs'),('softwares'),('mouses'),('teclados'),('rams'),
('headphones'),('telefonos'),('cargadores'),('monitores'),('televisores'),('playstations'),('nitendos'),('usbs');


INSERT INTO proveedores (nombre, correo, telefono) VALUES 
('Techelectric S.A', 'tech@gmail.com', '3214567890'),
('electric', 'electric@gmail.com', '3214567987'),
('provide S.A', 'provide123@gmail.com', '3214567432'),
('panaArabe S.A', 'panaArabe@gmail.com', '3211231232'),
('Techele S.A', 'techele@gmail.com', '3214561111'),
('Olympus S.A', 'olympus@gmail.com', '3214561254'),
('Tutecno S.A', 'tutec@gmail.com', '3214567894'),
('ikigai ', 'ikigai@gmail.com', '3214560000'),
('marioBros S.A', 'luigi@gmail.com', '3214568890'),
('halo S.A', 'halo@gmail.com', '3214562587'),
('minecraft S.A', 'mine@gmail.com', '3214569632'),
('tencologic S.A', 'tecnolo@gmail.com', '3214561234'),
('isabetech S.A', 'isabetech@gmail.com', '3214566541'),
('amazon S.A', 'amazon@gmail.com', '3214560358'),
('sony S.A', 'sony@gmail.com', '3214567814');

INSERT INTO clientes (nombre, correo, telefono) VALUES
('alexis silva', 'silvabueno@gmail.com', '3203123245'),
('juanpi nilla', 'juanpi@gmail.com', '3112322322'),
('jose florez', 'joseflorez@gmail.com', '3112311252'),
('juan caballero', 'juanca@gmail.com', '3117778452'),
('juan hernandez', 'juanher@gmail.com', '3112320881'),
('juan ortega', 'juanort@gmail.com', '3112111002'),
('juan barragan', 'juanbar@gmail.com', '3147856980'),
('juan bueno', 'juanbue@gmail.com', '3175879642'),
('juan garcia', 'juanga@gmail.com', '3117846348'),
('andres galvis ', 'juangal@gmail.com', '3201044587'),
('hodet suarez', 'hodet@gmail.com', '3117899879'),
('benito camel', 'benito@gmail.com', '3117899994'),
('rosa mello', 'rosa@gmail.com', '3115896321'),
('alvajar correa', 'alvajar@gmail.com', '3110002484'),
('noel narnia', 'noel@gmail.com', '3117897897');

INSERT INTO productos (nombre, precio ,stock, categoria_id, proveedores_id) VAlUES 
('table hp 15 pulgadas', 150000, 10, 1, 1),
('camara full hd 2025', 200000, 6, 2, 2),
('xbox one', 700000, 12, 3, 3),
('ubutu 2.9', 500000, 20, 4, 4),
('mouse sencibilidad al tacto', 600000, 15, 5, 5),
('teclado compumax', 100000, 50, 6, 6),
('memoria ram 8gb', 200000, 16, 7, 7),
('headphones antirruido', 300000, 21, 8, 8),
('vivo y33s', 780000, 12, 9, 9),
('cargador iphone 15w', 150000, 30, 10, 10),
('compumax 24 pulgadas', 320000, 40, 11, 11),
('panasonic 52 pulgadas', 1200000, 24, 12, 12),
('play station 5', 1500000, 19, 13, 13),
('nitendo switch', 900000, 27, 14, 14),
('usb 64gb ', 80000, 50, 15, 15);

INSERT INTO ventas (fecha, clientes_id) VALUES 
('2024-01-15 10:24:00', 3),
('2024-02-20 14:05:00', 7),
('2024-03-10 09:15:00', 2),
('2024-04-18 13:45:00', 5),
('2024-05-22 11:30:00', 9),
('2024-06-07 16:50:00', 1),
('2024-07-03 12:00:00', 8),
('2024-08-12 17:20:00', 4),
('2024-09-25 15:40:00', 10),
('2024-10-30 08:55:00', 6),
('2024-11-14 10:10:00', 3),
('2024-12-21 18:35:00', 7),
('2025-01-09 13:00:00', 2),
('2025-02-26 16:15:00', 5),
('2025-03-28 09:45:00', 1);


INSERT INTO detalle_venta (ventas_id, productos_id, cantidad) VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(3, 1, 4),
(3, 4, 2),
(4, 5, 1),
(5, 3, 3),
(5, 2, 1),
(6, 4, 1),
(7, 2, 2),
(8, 5, 5),
(9, 1, 2),
(10, 3, 2),
(10, 5, 1),
(11, 2, 1),
(12, 4, 3),
(13, 1, 1),
(13, 2, 1),
(14, 3, 2),
(15, 5, 4);
