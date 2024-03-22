CREATE TABLE Horario (
  Curso VARCHAR(255) NOT NULL,
  Día VARCHAR(255) NOT NULL,
  Hora TIME NOT NULL,
  Ubicación VARCHAR(255) NOT NULL,
  PRIMARY KEY (Curso, Día, Hora),
  FOREIGN KEY (Curso) REFERENCES Curso (NombreDelCurso)
);
