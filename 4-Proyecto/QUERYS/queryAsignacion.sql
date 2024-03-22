CREATE TABLE Asignacion (
  Curso VARCHAR(255) NOT NULL,
  Descripcion VARCHAR(255) NOT NULL,
  FechaDeEntrega DATE NOT NULL,
  Ponderacion INT NOT NULL,
  PRIMARY KEY (Curso, FechaDeEntrega),
  FOREIGN KEY (Curso) REFERENCES Curso (NombreDelCurso)
);
