
-- ==========================================
-- 1. TABLAS DE CATÁLOGO (MAESTRAS)
-- ==========================================

-- Clasificación de productos (16 tipos identificados)
CREATE TABLE tipos_producto (
    id SERIAL PRIMARY KEY, -- IDs del 1 al 16 según fuente
    tipo_producto VARCHAR(50) NOT NULL, -- tequila, whisky, ron, etc.
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tipos_producto (tipo_producto) VALUES
    ('tequila'),
    ('whisky'),
    ('vodka'),
    ('ron'),
    ('brandy'),
    ('mezcal'),
    ('vino'),
    ('cerveza'),
    ('ginebra'),
    ('cognac'),
    ('crema'),
    ('destilado'),
    ('refresco'),
    ('licor'),
    ('cigarros'),
    ('jugo');

-- Tiendas y proveedores registrados
CREATE TABLE tiendas (
    id SERIAL PRIMARY KEY,
    tienda VARCHAR(100) NOT NULL, -- MELI, LAEU, AMZN, WALM, etc.
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tiendas (tienda) VALUES
    ('Mercado Libre'),
    ('La Europea'),
    ('Amazon'),
    ('Bodegas Alianza'),
    ('Walmart'),
    ('Garis'),
    ('Don Felipe'),
    ('Cone'),
    ('Tienda David');

-- Estados de la transacciones y stock
CREATE TABLE estatus (
    id SERIAL PRIMARY KEY,
    estatus VARCHAR(50) NOT NULL, -- 1:recibido, 2:pedido, 3:regresado, 4:cancelado
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO estatus (estatus) VALUES
    ('recibido'),
    ('pedido'),
    ('regresado'),
    ('cancelado');

-- Registro de vendedores identificados en el sistema
CREATE TABLE vendedores (
    id SERIAL PRIMARY KEY,
    vendedor VARCHAR(100) UNIQUE NOT NULL, -- DIEGO, MAU, LALO, ASIEL, CARLOS, etc.
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO vendedores (vendedor) VALUES
    ('DIEGO'),
    ('MAU'),
    ('CARLOS'),
    ('JAVIER'),
    ('HARAN'),
    ('ASIEL'),
    ('LALO'),
    ('AQUE');
