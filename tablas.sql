 CREATE TABLE temporadas (
     id integer PRIMARY KEY AUTOINCREMENT,
     nombre text),
     inicio real,
     estado integer
);

create table equipos(
    id integer primary key autoincrement,
    nombre text,
    escudo blob
);

create table jugadores(
    id integer primary key autoincrement,
    nombre text,
    municipio text,
    fecha_nac real,
    fotografia blob
);

create table partidos (
    id integer primary key autoincrement,
    temporada_id integer,
    fase integer,
    jornada integer,
    fecha real,
    eq_loc_id integer,
    eq_vis_id integer,
    gloc integer,
    gvis integer
);

create table inscripcion_eq (
    id integer primary key autoincrement,
    temporada_id integer,
    equipo_id integer
);

create table inscripcion_jug (
    id integer primary key autoincrement,
    temporada_id integer,
    jugador_id integer,
    equipo_id integer
);

create table detalle_partido (
    id integer primary key autoincrement,
    partido_id integer,
    equipo_id integer,
    jugador_id integer,
    goles integer,
    asistencias integer,
    amarillas integer,
    rojas integer
);
create index plxtemp on inscripcion_jug(temporada_id, jugador_id);