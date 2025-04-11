--  Script de creación de la base de datos y tablas.

CREATE DATABASE  techzone;
\c techzone;


CREATE TABLE clientes(
	id SERIAL PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL, 
    correo VARCHAR (100) NOT NULL,
    telefono VARCHAR (15) NOT NULL UNIQUE
);

CREATE TABLE categorias (
	id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE proveedores (
    id SERIAL PRIMARY KEY NOT NULL,
    nombre VARCHAR (50) NOT NULL, 
    correo VARCHAR (100) NOT NULL,
    telefono VARCHAR (15) NOT NULL UNIQUE
);


CREATE TABLE productos (
	id serial PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL ,
    precio DECIMAL (10,2) NOT NULL,
    stock INTEGER NOT NULL ,
    categoria_id INTEGER NOT NULL,
    proveedores_id INTEGER NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (proveedores_id) REFERENCES proveedores(id)
);

CREATE TABLE  ventas (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    clientes_id INTEGER NOT NULL,
    FOREIGN KEY (clientes_id) REFERENCES clientes(id)
);

CREATE TABLE  detalle_venta (
	id SERIAL PRIMARY KEY,
    ventas_id INTEGER NOT NULL,
    productos_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (productos_id) REFERENCES productos(id),
    FOREIGN KEY (ventas_id) REFERENCES ventas (id)
);