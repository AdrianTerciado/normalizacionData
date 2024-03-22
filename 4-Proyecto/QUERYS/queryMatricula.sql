CREATE TABLE matricula (
  Estudiante VARCHAR(255) NOT NULL,
  Curso VARCHAR(255) NOT NULL,
  FechaDeMatricula DATE NOT NULL,
  CalificaciónFinal FLOAT NOT NULL,
  PRIMARY KEY (Estudiante, Curso),
  FOREIGN KEY (Estudiante) REFERENCES Estudiante (Campus),
  FOREIGN KEY (Curso) REFERENCES Curso (NombreDelCurso)
);
