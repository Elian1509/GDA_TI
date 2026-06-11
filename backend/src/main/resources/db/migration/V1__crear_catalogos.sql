CREATE TABLE tipo_activo(
    id SERIAL PRIMARY KEY,
    nombre varchar(100) not null unique
);
CREATE TABLE estado_activo(
    id SERIAL PRIMARY KEY,
    nombre  varchar(100) not null unique
);

insert into tipo_activo (nombre) values ('Portatil'),('Monitor'),('Mini torre'),('Desktop');
insert into estado_activo (nombre) values ('Disponible'),('Asignado'),('Reservado'),('Mantenimiento'),('Baja'),('Transito');
