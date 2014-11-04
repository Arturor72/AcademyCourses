
----> SISTEMA DE MATRÍCULA CURSOS ONLINE <----


CREATE DATABASE dbAcademy
------------------------------------------------------


USE dbAcademy
------------------------------------------------------


CREATE TABLE Usuario(
	C_Usuario		INT							NOT NULL IDENTITY(1,1),
	ApellidoP		VARCHAR(50)			NOT NULL,
	ApellidoM		VARCHAR(50)			NOT NULL,
	Nombre			VARCHAR(50)			NOT NULL,
	Email				VARCHAR(40)			NOT NULL,
	Sexo				CHAR(1)					NOT NULL,	
	Nick					VARCHAR(25)			NOT NULL,
	Contrasena		VARBINARY(500)	NOT NULL,
	Estado				BIT							NOT NULL	--> 0=FALSE  ||  1=TRUE 
)
ALTER TABLE Usuario
	ADD CONSTRAINT PK_Usuario
	PRIMARY KEY (C_Usuario)
ALTER TABLE Usuario
	ADD CONSTRAINT U_EmailUsuario
	UNIQUE (Email)
ALTER TABLE Usuario
	ADD CONSTRAINT U_Nick
	UNIQUE (Nick)
ALTER TABLE Usuario
	ADD CONSTRAINT CHK_Sexo
	CHECK (Sexo LIKE 'M' OR Sexo LIKE 'F')
------------------------------------------------------


CREATE TABLE Alumno(
	C_Alumno		INT					NOT NULL,
	Ocupacion		VARCHAR(50)	NULL
)
ALTER TABLE Alumno
	ADD CONSTRAINT PK_Alumno
	PRIMARY KEY (C_Alumno)
ALTER TABLE Alumno
	ADD CONSTRAINT FK_UsuarioAlumno
	FOREIGN KEY (C_Alumno)
	REFERENCES Usuario(C_Usuario)
------------------------------------------------------


CREATE TABLE Administrador(
	C_Administrador		INT	NOT NULL,
	C_Trabajador			INT	NOT NULL
)
ALTER TABLE Administrador
	ADD CONSTRAINT PK_Administrador
	PRIMARY KEY (C_Administrador)
ALTER TABLE Administrador
	ADD CONSTRAINT FK_UsuarioAdministrador
	FOREIGN KEY (C_Administrador)
	REFERENCES Usuario(C_Usuario)
ALTER TABLE Administrador
	ADD CONSTRAINT U_TrabajadorAdministrador
	UNIQUE (C_Trabajador)
------------------------------------------------------


CREATE TABLE Profesor(
	C_Profesor		TINYINT				NOT NULL	IDENTITY(1,1),
	C_Trabajador	INT						NOT NULL,
	ApellidoP		VARCHAR(50)		NOT NULL,
	ApellidoM		VARCHAR(50)		NOT NULL,
	Nombre			VARCHAR(50)		NOT NULL,
	Telefono			VARCHAR(15)		NULL,
	Email				VARCHAR(40)		NOT NULL,
	Estado				BIT						NOT NULL	--> 0=FALSE  ||  1=TRUE 
)
ALTER TABLE Profesor
	ADD CONSTRAINT PK_Profesor
	PRIMARY KEY (C_Profesor)
ALTER TABLE Profesor
	ADD CONSTRAINT U_TrabajadorProfesor
	UNIQUE (C_Trabajador)
ALTER TABLE Profesor
	ADD CONSTRAINT U_EmailProfesor
	UNIQUE (Email)
------------------------------------------------------


CREATE TABLE Categoria(
	C_Categoria	TINYINT				NOT NULL	IDENTITY(1,1),
	Descripcion		VARCHAR(70)		NOT NULL
)
ALTER TABLE Categoria
	ADD CONSTRAINT PK_Categoria
	PRIMARY KEY (C_Categoria)
ALTER TABLE Categoria
	ADD CONSTRAINT U_DescripcionCategoria
	UNIQUE (Descripcion)
------------------------------------------------------


CREATE TABLE Horario(
	C_Horario	TINYINT			NOT NULL	IDENTITY(1,1),
	Dias				VARCHAR(40)	NOT NULL,
	HoraInicio	TIME(0)			NOT NULL,
	HoraFin		TIME(0)			NOT NULL
)
ALTER TABLE Horario
	ADD CONSTRAINT PK_Horario
	PRIMARY KEY (C_Horario)
------------------------------------------------------


CREATE TABLE Modulo(
	C_Modulo		TINYINT				NOT NULL	IDENTITY(1,1),
	C_Categoria	TINYINT				NOT NULL,
	Precio				DECIMAL(8,2)		NOT NULL,
	Descripcion		VARCHAR(70)		NOT NULL,
	Estado				BIT						NOT NULL	--> 0=FALSE  ||  1=TRUE 
)
ALTER TABLE Modulo
	ADD CONSTRAINT PK_Modulo
	PRIMARY KEY (C_Modulo, C_Categoria)
ALTER TABLE Modulo
	ADD CONSTRAINT FK_CategoriaModulo
	FOREIGN KEY (C_Categoria)
	REFERENCES Categoria(C_Categoria)
ALTER TABLE Modulo
	ADD CONSTRAINT U_DescripcionModulo
	UNIQUE (Descripcion)
------------------------------------------------------


CREATE TABLE Curso(
	C_Curso				INT						NOT NULL	IDENTITY(1,1),
	C_Modulo			TINYINT				NOT NULL,
	C_Categoria		TINYINT				NOT NULL,
	C_Profesor			TINYINT				NOT NULL,
	C_Horario			TINYINT				NOT NULL,
	C_CursoR				INT						NOT NULL,
	Descripcion			VARCHAR(70)		NOT NULL,
	Requisitos			VARCHAR(250)	NULL,
	Objetivo				VARCHAR(250)	NULL,
	Temario				TEXT					NOT NULL,
	Precio					DECIMAL(8,2)		NOT NULL,
	NumeroHoras		TINYINT				NOT NULL,
	FechaInicio			DATE					NOT NULL,
	FechaFin				DATE					NOT NULL,
	Estado					BIT						NOT NULL	--> 0=FALSE  ||  1=TRUE 
)
ALTER TABLE Curso
	ADD CONSTRAINT PK_Curso
	PRIMARY KEY (C_Curso)
ALTER TABLE Curso
	ADD CONSTRAINT FK_ModuloCurso
	FOREIGN KEY (C_Modulo, C_Categoria)
	REFERENCES Modulo(C_Modulo, C_Categoria)
ALTER TABLE Curso
	ADD CONSTRAINT FK_ProfesorCurso
	FOREIGN KEY (C_Profesor)
	REFERENCES Profesor(C_Profesor)
ALTER TABLE Curso
	ADD CONSTRAINT FK_HorarioCurso
	FOREIGN KEY (C_Horario)
	REFERENCES Horario(C_Horario)
ALTER TABLE Curso
	ADD CONSTRAINT FK_CursoRequisito
	FOREIGN KEY (C_CursoR)
	REFERENCES Curso(C_Curso)
ALTER TABLE Curso
	ADD CONSTRAINT U_DescripcionCurso
	UNIQUE (Descripcion)
------------------------------------------------------


CREATE TABLE MatriculaModulo(
	C_MatriculaModulo	INT					NOT NULL	IDENTITY(1,1),
	C_Alumno					INT					NOT NULL,
	C_Modulo					TINYINT			NOT NULL,
	C_Categoria				TINYINT			NOT NULL,
	C_Recibo						VARCHAR(25)	NOT NULL,
	FechaMatricula			DATETIME		NOT NULL
)
ALTER TABLE MatriculaModulo
	ADD CONSTRAINT PK_MatriculaModulo
	PRIMARY KEY (C_MatriculaModulo, C_Alumno, C_Modulo, C_Categoria)
ALTER TABLE MatriculaModulo
	ADD CONSTRAINT FK_MatriculaModuloAlumno
	FOREIGN KEY (C_Alumno)
	REFERENCES Alumno(C_Alumno)
ALTER TABLE MatriculaModulo
	ADD CONSTRAINT FK_MatriculaModuloModulo
	FOREIGN KEY (C_Modulo, C_Categoria)
	REFERENCES Modulo(C_Modulo, C_Categoria)
ALTER TABLE MatriculaModulo
	ADD CONSTRAINT U_ReciboModulo
	UNIQUE (C_Recibo)
------------------------------------------------------


CREATE TABLE MatriculaCurso(
	C_MatriculaCurso	INT					NOT NULL	IDENTITY(1,1),
	C_Alumno				INT					NOT NULL,
	C_Curso					INT					NOT NULL,
	C_Recibo					VARCHAR(25)	NOT NULL,
	FechaMatricula		DATETIME		NOT NULL
)
ALTER TABLE MatriculaCurso
	ADD CONSTRAINT PK_MatriculaCurso
	PRIMARY KEY (C_MatriculaCurso, C_Alumno, C_Curso)
ALTER TABLE MatriculaCurso
	ADD CONSTRAINT FK_MatriculaCursoAlumno
	FOREIGN KEY (C_Alumno)
	REFERENCES Alumno(C_Alumno)
ALTER TABLE MatriculaCurso
	ADD CONSTRAINT FK_MatriculaCursoCurso
	FOREIGN KEY (C_Curso)
	REFERENCES Curso(C_Curso)
ALTER TABLE MatriculaCurso
	ADD CONSTRAINT U_ReciboCurso
	UNIQUE (C_Recibo)
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------



-- Función para encriptar la contraseña de usuario
CREATE FUNCTION Encriptar(@D_Contrasena VARCHAR(40))
RETURNS VARBINARY(500)
AS
	BEGIN
		DECLARE @Password VARBINARY(500)
		SET @Password = ENCRYPTBYPASSPHRASE('Contrasena', @D_Contrasena)
		RETURN @Password
	END
GO
------------------------------------------------------


-- Función para desencriptar la contraseña de usuario
CREATE FUNCTION Desencriptar(@D_Contrasena VARBINARY(500))
RETURNS VARCHAR(40)
AS
	BEGIN
		DECLARE @Password VARCHAR(40)
		SET @Password = DECRYPTBYPASSPHRASE('Contrasena', @D_Contrasena)
		RETURN @Password
	END
GO
------------------------------------------------------


	
-- Código de prueba
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('De La Cruz', 'Maguiña', 'Ricardo', 'erre.1405@hotmail.com', 'M', 'RicardoDLC', dbo.Encriptar('1234'), 1)

-- Aquí se muestra la contraseña encriptada
SELECT Nick, Contrasena 
FROM Usuario	

-- Aquí se muestra la contraseña desencriptada
SELECT Nick, 
			 dbo.Desencriptar(Contrasena) AS 'D_Contrasena'
FROM Usuario
