CREATE TABLE "modalidad"(
    "id" INTEGER NOT NULL,
    "modalidad" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "modalidad" ADD PRIMARY KEY("id");
CREATE TABLE "resultado"(
    "id" INTEGER NOT NULL,
    "estudianteID" INTEGER NOT NULL,
    "proyectoID" INTEGER NOT NULL
);
ALTER TABLE
    "resultado" ADD PRIMARY KEY("id");
CREATE TABLE "proyecto"(
    "id" INTEGER NOT NULL,
    "Nombre" VARCHAR(50) NOT NULL,
    "Descripcion" VARCHAR(200) NOT NULL,
    "bootcampID" INTEGER NOT NULL,
    "resultadoID" BIGINT NOT NULL
);
ALTER TABLE
    "proyecto" ADD PRIMARY KEY("id");
CREATE TABLE "horarios"(
    "ID" INTEGER NOT NULL,
    "Horario" BOOLEAN NOT NULL
);
ALTER TABLE
    "horarios" ADD PRIMARY KEY("ID");
CREATE TABLE "estudiante"(
    "id" INTEGER NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "correo" VARCHAR(255) NOT NULL,
    "proyectoID" BIGINT NOT NULL
);
ALTER TABLE
    "estudiante" ADD PRIMARY KEY("id");
CREATE TABLE "pais"(
    "id" BIGINT NOT NULL,
    "pais" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "pais" ADD PRIMARY KEY("id");
CREATE TABLE "provincia"(
    "id" INTEGER NOT NULL,
    "provincia" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "provincia" ADD PRIMARY KEY("id");
CREATE TABLE "promociones"(
    "ID" INTEGER NOT NULL,
    "Mes" DATE NOT NULL,
    "Fecha_Inicio" DATE NOT NULL,
    "Fecha_Fin" DATE NOT NULL
);
ALTER TABLE
    "promociones" ADD PRIMARY KEY("ID");
CREATE TABLE "tA"(
    "ID" INTEGER NOT NULL,
    "profesorID" INTEGER NOT NULL,
    "modalidadID" INTEGER NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "correo" VARCHAR(255) NOT NULL,
    "horarioID" BIGINT NOT NULL
);
ALTER TABLE
    "tA" ADD PRIMARY KEY("ID");
CREATE TABLE "campus"(
    "id" INTEGER NOT NULL,
    "paisID" BIGINT NOT NULL,
    "provinciaID" BIGINT NOT NULL,
    "direccion" BIGINT NOT NULL,
    "bootcampID" BIGINT NOT NULL,
    "nombre" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "campus" ADD PRIMARY KEY("id");
CREATE TABLE "bootcamp"(
    "id" INTEGER NOT NULL,
    "NombreBootcamp" VARCHAR(50) NOT NULL,
    "Descripcion" VARCHAR(200) NOT NULL,
    "Modalidad_ID" INTEGER NOT NULL,
    "promocionID" BIGINT NOT NULL,
    "campusID" BIGINT NOT NULL,
    "profesorID" BIGINT NOT NULL,
    "taID" BIGINT NOT NULL,
    "horarioID" BIGINT NOT NULL,
    "estudianteid" INTEGER NOT NULL
);
ALTER TABLE
    "bootcamp" ADD PRIMARY KEY("id");
CREATE TABLE "profesor"(
    "id" INTEGER NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "correo" VARCHAR(255) NOT NULL,
    "modalidadID" INTEGER NOT NULL,
    "horarioID" INTEGER NOT NULL,
    "bootcampID" INTEGER NOT NULL
);
ALTER TABLE
    "profesor" ADD PRIMARY KEY("id");
ALTER TABLE
    "campus" ADD CONSTRAINT "campus_provinciaid_foreign" FOREIGN KEY("provinciaID") REFERENCES "provincia"("id");
ALTER TABLE
    "provincia" ADD CONSTRAINT "provincia_id_foreign" FOREIGN KEY("id") REFERENCES "pais"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_horarioid_foreign" FOREIGN KEY("horarioID") REFERENCES "horarios"("ID");
ALTER TABLE
    "tA" ADD CONSTRAINT "ta_profesorid_foreign" FOREIGN KEY("profesorID") REFERENCES "profesor"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_estudianteid_foreign" FOREIGN KEY("estudianteid") REFERENCES "estudiante"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_promocionid_foreign" FOREIGN KEY("promocionID") REFERENCES "promociones"("ID");
ALTER TABLE
    "proyecto" ADD CONSTRAINT "proyecto_bootcampid_foreign" FOREIGN KEY("bootcampID") REFERENCES "bootcamp"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_profesorid_foreign" FOREIGN KEY("profesorID") REFERENCES "profesor"("id");
ALTER TABLE
    "campus" ADD CONSTRAINT "campus_bootcampid_foreign" FOREIGN KEY("bootcampID") REFERENCES "bootcamp"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_modalidad_id_foreign" FOREIGN KEY("Modalidad_ID") REFERENCES "modalidad"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_campusid_foreign" FOREIGN KEY("campusID") REFERENCES "campus"("id");
ALTER TABLE
    "profesor" ADD CONSTRAINT "profesor_bootcampid_foreign" FOREIGN KEY("bootcampID") REFERENCES "bootcamp"("id");
ALTER TABLE
    "bootcamp" ADD CONSTRAINT "bootcamp_taid_foreign" FOREIGN KEY("taID") REFERENCES "tA"("ID");
ALTER TABLE
    "estudiante" ADD CONSTRAINT "estudiante_proyectoid_foreign" FOREIGN KEY("proyectoID") REFERENCES "proyecto"("id");
ALTER TABLE
    "tA" ADD CONSTRAINT "ta_horarioid_foreign" FOREIGN KEY("horarioID") REFERENCES "horarios"("ID");
ALTER TABLE
    "proyecto" ADD CONSTRAINT "proyecto_resultadoid_foreign" FOREIGN KEY("resultadoID") REFERENCES "resultado"("id");
ALTER TABLE
    "tA" ADD CONSTRAINT "ta_modalidadid_foreign" FOREIGN KEY("modalidadID") REFERENCES "modalidad"("id");