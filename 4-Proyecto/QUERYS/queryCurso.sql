CREATE TABLE Curso (
  NombreDelCurso VARCHAR(255) NOT NULL,
  Descripción VARCHAR(255) NOT NULL,
  Profesor VARCHAR(255) NOT NULL,
  Créditos INT NOT NULL,
  Modalidad VARCHAR(255) NOT NULL CHECK (Modalidad IN ('Presencial', 'Online')),
  PRIMARY KEY (NombreDelCurso)
);
