CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nit varchar(100) UNIQUE NOT NULL,
    razon_social varchar(100),
    correo varchar(100),
    telefono varchar(100),
    estado BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE sla (
    id SERIAL PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    tiempo_respuesta_hrs INTEGER,
    tiempo_solucion_horas INTEGER
);
CREATE TABLE cliente_sla (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES cliente(id),
    tipo_ticket_id INTEGER,
    sla_id INTEGER REFERENCES sla(id)
);
