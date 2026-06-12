CREATE TABLE configuracion(
    id SERIAL PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    procesador varchar(100),
    generacion varchar(100),
    ram_gb INTEGER,
    ram_modulos INTEGER,
    tipo_disco varchar(100),
    capacidad_disco_gb INTEGER,
    tipo2_disco varchar(100) NULL,
    capacidad2_disco_gb INTEGER,
    SO varchar(100)
);
CREATE TABLE bodega(
    id SERIAL PRIMARY KEY,
    nombre  varchar(100) not null unique,
    ciudad varchar(100),
    responsable varchar(100),
    activa BOOLEAN NOT NULL DEFAULT TRUE
);

insert into bodega ( nombre, ciudad, responsable) values ('Bodega Principal', 'Bogota', 'Juan Felipe'),('Bodega Cali', 'Cali', 'Jose Julian'),('Bodega Medellin', 'Medellin', 'Mariana Mor');