
----> SISTEMA DE MATR�CULA CURSOS ONLINE <----

-- BASE DE DATOS, TABLAS Y RESTRICCIONES

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
	Estado				VARCHAR(10)			NOT NULL	
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
ALTER TABLE Usuario
	ADD CONSTRAINT CHK_EstadoUsuario
	CHECK (Estado LIKE 'Activo' OR Estado LIKE 'Inactivo')
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
ALTER TABLE Alumno
	ADD CONSTRAINT CHK_Ocupacion
	CHECK (Ocupacion LIKE 'Estudiante' OR
				  Ocupacion LIKE 'Ingeniero' OR
				  Ocupacion LIKE 'Profesor' OR
				  Ocupacion LIKE 'Dise�ador' OR
				  Ocupacion LIKE 'Otros')
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
	C_Profesor		INT						NOT NULL	IDENTITY(1,1),
	C_Trabajador	INT						NOT NULL,
	ApellidoP		VARCHAR(50)		NOT NULL,
	ApellidoM		VARCHAR(50)		NOT NULL,
	Nombre			VARCHAR(50)		NOT NULL,
	Telefono			VARCHAR(15)		NULL,
	Email				VARCHAR(40)		NOT NULL,
	Estado				VARCHAR(10)		NOT NULL
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
ALTER TABLE Profesor
	ADD CONSTRAINT CHK_EstadoProfesor
	CHECK (Estado LIKE 'Activo' OR Estado LIKE 'Inactivo')
------------------------------------------------------


CREATE TABLE Categoria(
	C_Categoria	INT						NOT NULL	IDENTITY(1,1),
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
	C_Horario	INT					NOT NULL	IDENTITY(1,1),
	Dias				VARCHAR(40)	NOT NULL,
	HoraInicio	TIME(0)			NOT NULL,
	HoraFin		TIME(0)			NOT NULL
)
ALTER TABLE Horario
	ADD CONSTRAINT PK_Horario
	PRIMARY KEY (C_Horario)
------------------------------------------------------


CREATE TABLE Modulo(
	C_Modulo		INT						NOT NULL	IDENTITY(1,1),
	C_Categoria	INT						NOT NULL,
	Precio				DECIMAL(8,2)		NOT NULL,
	Descripcion		VARCHAR(70)		NOT NULL,
	Estado				VARCHAR(10)		NOT NULL	 
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
ALTER TABLE Modulo
	ADD CONSTRAINT CHK_EstadoModulo
	CHECK (Estado LIKE 'Activo' OR Estado LIKE 'Inactivo')
------------------------------------------------------


CREATE TABLE Curso(
	C_Curso				INT						NOT NULL	IDENTITY(1,1),
	C_Modulo			INT						NOT NULL,
	C_Categoria		INT					  	NOT NULL,
	C_Profesor			INT						NOT NULL,
	C_Horario			INT						NOT NULL,
	C_CursoR				INT						NULL, 
	Descripcion			VARCHAR(70)		NOT NULL,
	Requisitos			VARCHAR(250)	NULL,
	Objetivo				VARCHAR(250)	NULL,
	Temario				TEXT					NOT NULL,
	Precio					DECIMAL(8,2)		NOT NULL,
	NumeroHoras		INT						NOT NULL,
	FechaInicio			DATE					NOT NULL,
	FechaFin				DATE					NOT NULL,
	Estado					VARCHAR(10)		NOT NULL	
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
ALTER TABLE Curso
	ADD CONSTRAINT CHK_EstadoCurso
	CHECK (Estado LIKE 'Activo' OR Estado LIKE 'Inactivo')
------------------------------------------------------


CREATE TABLE MatriculaModulo(
	C_MatriculaModulo	INT					NOT NULL	IDENTITY(1,1),
	C_Alumno					INT					NOT NULL,
	C_Modulo					INT					NOT NULL,
	C_Categoria				INT					NOT NULL,
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



-- Funci�n para encriptar la contrase�a de usuario
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


-- Funci�n para desencriptar la contrase�a de usuario
CREATE FUNCTION Desencriptar(@D_Contrasena VARBINARY(500))
RETURNS VARCHAR(40)
AS
	BEGIN
		DECLARE @Password VARCHAR(40)
		SET @Password = DECRYPTBYPASSPHRASE('Contrasena', @D_Contrasena)
		RETURN @Password
	END
GO
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------


-- INSERTAMOS DATOS INICIALES
-- USUARIO
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Flores', 'Quispe', 'Carlos', 'Car.12@hotmail.com', 'M', 'Carlos33', dbo.Encriptar('asdf'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Sanchez', 'Rodriguez', 'Fernando', 'Fernando_123@hotmail.com', 'M', 'Fer', dbo.Encriptar('1234'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Garc�a', 'Rojas', 'Patricia', 'Patricia.09@hotmail.com', 'F', 'Pati', dbo.Encriptar('abcd'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Gonzales', 'Chavez', 'Milagros', 'Mili22@hotmail.com', 'F', 'MilagrosGC', dbo.Encriptar('4444'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Lopez', 'Diaz', 'Marcos', 'Marcos.33@hotmail.com', 'M', 'Marcos3', dbo.Encriptar('lkjh'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Ramos', 'Mendoza', 'Mart�n', 'Martin.77@hotmail.com', 'M', 'Mart�n34', dbo.Encriptar('9876'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Ramirez', 'Torres', 'William', 'William22@hotmail.com', 'M', 'Will', dbo.Encriptar('vbnm'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Castillo', 'Espinoza', 'Daniel', 'Daniel.55@hotmail.com', 'M', 'Dan23', dbo.Encriptar('ghjk'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Vasquez', 'Gutierrez', 'David', 'David345@hotmail.com', 'M', 'David123', dbo.Encriptar('1234'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Huaman', 'Perez', 'Javier', 'Javier33@hotmail.com', 'M', 'Javier33', dbo.Encriptar('vfrt'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Vargas', 'Fernandez', 'Victor', 'Victor67@hotmail.com', 'M', 'Victor45', dbo.Encriptar('tgbn'), 'Activo')
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Mamani', 'Castro', 'Carmen', 'Carmen.345@hotmail.com', 'F', 'CarmenT', dbo.Encriptar('6789'), 'Activo')




-- ADMINISTRADOR
INSERT INTO Administrador(C_Administrador,C_Trabajador)
VALUES(1,1)
INSERT INTO Administrador(C_Administrador,C_Trabajador)
VALUES(2,2)



-- ALUMNO
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(3,'Estudiante')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(4,'Ingeniero')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(5,'Profesor')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(6,'Dise�ador')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(7,'Otros')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(8,'Estudiante')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(9,'Ingeniero')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(10,'Profesor')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(11,'Dise�ador')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(12,'Otros')



-- CATEGOR�A
INSERT INTO dbo.Categoria(Descripcion)VALUES('Computaci�n')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Base de Datos')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Programaci�n')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Dise�o')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Hardware y Redes')


-- M�DULO
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,2400,'Computaci�n','Activo') -- 1
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(2,800,'Data Base Administrador','Activo') -- 2
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(2,600,'Administraci�n de BD en Oracle','Activo') --3
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'Programaci�n Estructurada','Activo') --4
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,1000,'Visual Basic Developer','Activo') --5
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,800,'NET Developer','Activo') --6
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,800,'NET C#','Activo') --7
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'PHP Developer','Activo') --8
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'Java Developer','Activo')  --9
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,800,'Android Developer','Activo')  --10
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,600,'AutoCAD 2014','Activo') --11
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,1200,'Dise�o Gr�fico Digital','Activo')  --12
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,800,'Web Designer Professional','Activo') --13
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(5,600,'Especialista en Linux','Activo') --14




-- PROFESOR
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(3,'Ruiz', 'Romero', 'Elizabeth','4565478','Eli5@hotmail.com','Activo')
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(4,'Martinez', 'Perez', 'Eduardo','7565478','Eduardo@hotmail.com','Activo')
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(5,'Salazar', 'Lopez', 'Jes�s','4385756','Jes�s@hotmail.com','Activo')
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(6,'Leon', 'Huaman', 'Enrique','4253698','Enrique@hotmail.com','Activo')
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(7,'Reyes', 'Ramirez', 'Natalia','4758963','Natalia@hotmail.com','Activo')
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(8,'Huaman', 'Chavez', 'Laura','7583698','Laura@hotmail.com','Activo')
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(9,'Ramos', 'Rojas', 'Tamara','4753698','Tamara6@hotmail.com','Activo')




-- HORARIO
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Martes,Miercoles,Jueves,Viernes','09:00:00','10:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Martes,Miercoles,Jueves,Viernes','10:00:00','11:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Miercoles,Viernes','11:00:00','14:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Martes,Jueves','11:00:00','14:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Miercoles,Viernes','15:00:00','17:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Martes,Miercoles,Jueves,Viernes','17:00:00','18:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Martes,Miercoles,Jueves,Viernes','18:00:00','19:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Lunes,Miercoles,Viernes','19:00:00','21:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Martes,Jueves','19:00:00','21:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Sabado','10:00:00','14:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Sabado','14:00:00','17:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Sabado','17:00:00','20:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Sabado','20:00:00','23:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Domingo','10:00:00','14:00:00')
INSERT INTO dbo.Horario (Dias,HoraInicio,HoraFin)
VALUES('Domingo','14:00:00','17:00:00')

--CURSO
--1
INSERT INTO dbo.Curso VALUES(1,1,3,3,null,'Microsoft  Word 2013','Conocimientos b�sicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
','Conocer la nueva interfaz de Word 2013, las nuevas caracter�sticas y sobre todo el uso de las nuevas tecnolog�as autom�ticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.','Interfaz de Word 2013
Un nuevo formato de archivos
Definici�n de p�rrafos
Formato
Insertar Objetos
Tablas e Im�genes
Combinar Correspondencia',200,24,'2014-12-19','2015-01-05','Activo')
--2
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,null,'Microsoft Excel 2013','Conocimientos de Windows','Conocer los conceptos b�sicos.
Resolver problemas espec�ficos a trav�s de la realizaci�n de c�lculos sencillos utilizando Microsoft Excel 2013.
Organizar informaci�n mediante cuadros, tablas din�micas y gr�ficos.','Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones b�sicas en Excel
Tareas b�sicas en el Libro
Trabajar con hojas de c�lculo
Visualizaci�n de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
C�mo mejorar la apariencia aplicando formatos
Inserci�n y edici�n de f�rmulas
Funciones predefinidas de Excel
Tablas
C�mo presentar visualmente la informaci�n
Insertar Ilustraciones',200,24,'2015-01-07','2015-01-23','Activo')
--3
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,null,'Microsoft Power Point 2013','Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos b�sicos del MS Windows, del manejo del teclado y del rat�n.','Difundir ideas, proyectos o informaci�n, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gr�ficos, animaciones y contenido multimedia.','Introducci�n
Creaci�n de una presentaci�n B�sica
Creaci�n de una presentaci�n desde una plantilla, tema o presentaci�n existente
Formato y edici�n de textos.
Formato y distribuci�n de diapositivas
Colocar im�genes en una diapositiva.
A�adir sonido y video.
Transici�n de Diapositivas y Efectos de presentaci�n.
Hiperv�nculos
Edici�n del Video usando el Windows Movie Maker
Formatos de una presentaci�n',200,24,'2014-02-13','2014-03-02','Activo')

--4
INSERT INTO dbo.Curso VALUES(1,1,3,3,null,'Gesti�n de Redes Sociales - Web 2.0','Nociones b�sicas de marketing o haber trabajo en �reas similares. Es recomendable poder leer en ingl�s ya que las �ltimas publicaciones sobre este tema no est�n traducidas.
','Interpretar planificaciones y gestionar programas de marketing 2.0 en los medios sociales en Internet. Crear estrategias, cronogramas, medir resultados y restablecer acciones necesarias para el logro de objetivos.','Marketing en la web. manejo de la reputaci�n online.
Actitudes y aptitudes de un Community Manager. Reglas de la conversaci�n 2.0. Compendio de herramientas disponibles: Contenidos multimedia. Publicaci�n de informaci�n en sitios web y en blogs. Socializaci�n. Redes sociales. Casos de estudio.
C�mo armar un plan de presencia en medios sociales. Resumen ejecutivo. An�lisis inicial del mercado y la din�mica organizacional. Evaluaci�n de las oportunidades.
Objetivos espec�ficos. Estrategias y herramientas. An�lisis de la inversi�n y resultados esperados. Recursos.
Taller: Gesti�n de aplicaciones
Taller de herramientas de medici�n: Google Analytics, Google Insights, Google Alerts. Estad�sticas de Facbook. Herramientas de medici�n de Twitter.',200,24,'2015-03-04','2015-03-20','Activo')
--5
INSERT INTO dbo.Curso VALUES(1,1,3,3,null,'Adobe Dreamweaver CS6 - Designer','Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Instituci�n','Gracias a este curso sabr� organizar un sitio web y conocer� la utilidad de crear las p�ginas dentro de �ste desde el principio; configurar las propiedades de las p�ginas; insertar plug-ins y controles ActiveX, applets de Java, elementos de interfaz','Aspectos b�sicos del programa
Creaci�n de un estilo de Clase
V�nculos o hiperv�nculos de documentos
Insertar Im�genes
Dise�o de paginas
Pagina de marcos
Creaci�n de Plantillas',200,24,'2015-03-23','2015-04-08','Activo')
--6
INSERT INTO dbo.Curso VALUES(1,1,3,3,null,'CorelDRAW X6 - Designer','La actual o una versi�n anterior de CorelDraw X5
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista','El alumno comprenda los fundamentos y criterios b�sicos de la Preprensea
digital, elaborando dise�os publicitarios de manera eficiente y efectiva, para que queden','En entorno de dise�o
Configurar el documento de CorelDraw X6
Herramientas de formas b�sicas
Herramientas y comandos para organizar los objetos
Usar colores 
Herramienta texto 
Herramienta Bezier 
Dise�o de un Recibo por honorarios
Herramienta Bezier (curvas)
Rellano Uniforme
Herramienta Mezcla Interactiva
Herramienta Silueta Interactiva',200,24,'2015-03-10','2015-04-27','Activo')
--7
INSERT INTO dbo.Curso VALUES(1,1,3,3,null,'Ensamblaje de PC','Ninguno','Comprender el funcionamiento de una computadora y sus perif�ricos.
Reconocer y describir las especificaciones t�cnicas de las partes de una computadora.
Seleccionar el hardware apropiado para una PC.','Partes de una PC.
El Gabinete
 La Placa Base
Procesador y Memoria
 Medios de Almacenamiento
Tarjetas de Expansi�n',200,24,'2015-04-29','2015-05-15','Activo')

--8
INSERT INTO dbo.Curso VALUES(2,2,6,10,null,'Modelamiento de Datos','Conocimiento b�sico de alg�n lenguaje de programaci�n Vidual y/o t�cnicas de
programaci�n como estructura de datos.','Aprender los beneficios de la utilizaci�n de UML en el desarrollo de software.
Identificar los beneficios del an�lisis, dise�o y programaci�n orientada a objetos..
Aprender a modelar sistemas con UML.','Introducci�n al lenguaje de modelado: UML
Definir el comportamiento del sistema
Desarrollo de casos de uso
Construyendo escenarios
Clases y Objetos
Diagrama de clases
Clase entidad y modelo E/R
Tercera forma normal
Cuarta forma normal',200,12,'2014-12-06','2014-12-27','Activo')
--9
INSERT INTO dbo.Curso VALUES(2,2,6,10,8,'Ms SQL Server I - Implementaci�n','Conocimientos de Modelamiento de Datos','Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integraci�n de herramientas de SQL Server 2012','Concepto de base de datos relacional. Sistemas administradores de bases de datos.
Los tipos de datos del sistema que ofrece SQL Server 2012
Creaci�n y optimizaci�n de �ndices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones
Programaci�n en SQL Server 2012
Implementaci�n de desencadenadores',200,12,'2015-01-03','2015-01-24','Activo')

--10
INSERT INTO dbo.Curso VALUES(2,2,6,10,9,'Ms SQL Server III - Administraci�n','Modelamiento de Datos
SQL Server 2012 � Implementaci�n','Conocer y aplicar las herramientas esenciales para administrar las base de datos y los servidores que trabajan bajo SQL Server 2012','Instalaci�n y configuraci�n del SQL Server 2012
Administraci�n de la Base de Datos y Archivos
Planificaci�n de una Estrategia de Backups
Administraci�n de la Seguridad
Transferencia de Datos
Automatizaci�n de Tareas Administrativas
Monitoreando al SQL Server 2012
Implementando un DataBase Mirroring',200,12,'2015-01-31','2015-02-21','Activo')
--11
INSERT INTO dbo.Curso VALUES(2,2,6,10,10,'Inteligencia de Negocios Nivel I (Dise�o y Carga del Data Warehouse)','Conocimiento de Conceptos Generales de Base de Datos.
Conocimiento B�sico de Modelamiento de Datos.','Este curso proporciona a los estudiantes con los conocimientos y pr�cticas necesarias para dise�ar, 
implementar, y distribuir soluciones con bases de datos multidimensionales OLAP','Inteligencia de Negocios 
Gesti�n de la Informaci�n con Inteligencia de Negocios 
Instalaci�n de la Plataforma de Inteligencia de Negocios con Microsoft 
Introducci�n a una Soluci�n de Inteligencia de Negocios.
Planeando Soluci�n de Inteligencia de Negocios 
Dise�ando Data Mart 
Planificaci�n del ETL
Componentes de Reporting Services 
Creaci�n de informes b�sicos 
Conexi�n a datos externos desde MS Excel',200,12,'2015-02-28','2015-03-21','Activo')
--12 -------------
INSERT INTO dbo.Curso VALUES(3,2,6,10,null,'Introducci�n a SQL','Conocimientos de Modelamiento de Datos','Utilizar las sentencias SELECT en todas sus modalidades.
Utilizar la sintaxis DDL del SQL para crear, modificar o destruir objetos de la base de datos de Oracle.
Reconocer y aplicar las reglas de las restricciones.','Sentencias b�sicas del lenguaje SQL
Consultas avanzadas con SQL
Subconsultas
Manipulaci�n de datos en las tablas
Gesti�n de objetos
Otros objetos de la base de datos
PL/SQL: Bloques, cursores y excepciones
Bloques nominados',200,12,'2014-12-06','2014-12-27','Activo')
--13
INSERT INTO dbo.Curso VALUES(3,2,6,10,12,'Administraci�n de Base de Datos','Base de Datos Oracle 11g: Introducci�n a SQL','Instalar y configurar la Base de Datos Oracle 11g
Controlar, solucionar problemas y mantener la Base de Datos Oracle 11g
Configurar los servicios de Red de Oracle para la Base de Datos Oracle 11g','Instalaci�n del Software de la Base de Datos Oracle 11g
Creaci�n de una Base de Datos Oracle
Control de la Base de Datos
Estructuras de Almacenamiento
Administracion de Usuarios
Seguridad de Base de Datos Oracle
Servicios de Red de Oracle
Gesti�n de Deshacer
Conceptos de Copia de Seguridad y Recuperaci�n',200,12,'2015-01-03','2015-01-24','Activo')
--14
INSERT INTO dbo.Curso VALUES(3,2,6,10,13,'Administraci�n de Backup y Afinamiento','Base de Datos Oracle 11g: Administraci�n
Base de Datos Oracle 11g: Introducci�n a SQL','Recuperar la base de datos hasta un punto anterior en el tiempo
Utilizar la tecnolog�a Flashback de Oracle para recuperar la base de datos.
Controlar el uso de recursos de la base de datos con el Administrador de Recursos','Seguridad de Oracle Listener
Configuraci�n de RMAN
Uso de Recovery Manager
Recuperaci�n de Base de Datos
Flashback de Base de Datos
Recuperaci�n de Errores de Usuario
Gesti�n y Control de Memoria
Gesti�n de Recursos
Automatizaci�n de Tareas con el Planificador',200,12,'2015-01-31','2015-02-21','Activo')

--15
INSERT INTO dbo.Curso VALUES(4,3,1,5,null,'Algoritmos Estructurado B�sico','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Conocer los elementos de la programaci�n
Conocer y comprender el desarrollo y funcionamiento de las fases del desarrollo del algoritmo
Acceso a datos en la colecci�n de datos','Conceptos de fundamentos de programaci�n.
Fases del desarrollo del algoritmo
Estructuras de control de programa 
Programaci�n Modular SubAlgoritmos
Arreglos de datos
Matrices de datos
',200,24,'2014-12-01','2014-12-17','Activo')
--16 -------------------------
INSERT INTO dbo.Curso VALUES(4,3,1,5,15,'Algoritmos Estructurado Avanzado','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Utilizar colecciones de datos en memoria con diferentes tipo de datos
Aplicar el uso de pilas de datos
Reutilizar una funci�n dentro de la misma funci�n','Registros de datos
Archivo de datos(Ficheros)
M�todos de ordenamiento y b�squeda de datos
Operaciones con cadena de datos
Estructuras din�micas lineales de datos (pilas, colas y listas enlazadas)
Recursividad',200,24,'2014-12-19','2015-01-05','Activo')
--17
INSERT INTO dbo.Curso VALUES(4,3,1,5,16,'Fundamentos De Programaci�n Orientada A Objetos','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Conocer los conceptos generales de POO
Conocer el uso de un atributo clase y de un objeto
Aplicar los conceptos del encapsulamiento, Interfaces, Herencia, Polimorfismo','Conceptos fundamentales de POO
Clases y Objetos
Atributos y M�todos
Interfaces
Encapsulamiento
Herencia
Polimorfismo',200,24,'2015-01-07','2014-01-23','Activo')
--18
INSERT INTO dbo.Curso VALUES(5,3,2,10,null,'MS SQL Server 2012 - Implementaci�n','Conocimientos de Modelamiento de Datos','Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integraci�n de herramientas de SQL Server 2012
Proporcionar al alumno las t�cnicas de manejo de objetos de SQL y programaci�n en SQL Transact y .NET','Concepto de base de datos relacional. Sistemas 
Los tipos de datos del sistema que ofrece SQL Server 2012.
Creaci�n y optimizaci�n de �ndices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL.
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones.
Programaci�n en SQL Server 2012.
Implementaci�n de desencadenadores.',200,12,'2015-01-03','2015-01-24','Activo')
--19
INSERT INTO dbo.Curso VALUES(5,3,2,10,18,'MS Visual Basic 6.0 - B�sico','Conocimiento Basico de Visual Basic 6.0
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista
','Conocer y Manejar el modelo de programaci�n orientada a objetos aplicando las diferentes
t�cnicas de programaci�n.','Conceptos Fundamentales de Programaci�n
M�todo, Propiedades, Clases, Eventos
Entorno y Elementos principales de Visual Basic
Administraci�n de Proyectos
Controles B�sicos
TextBox, Command, Label
Mec�nica de la escritura de c�digo
M�dulos de c�digo',200,12,'2015-01-31','2015-02-21','Activo')
--20
INSERT INTO dbo.Curso VALUES(5,3,2,10,19,'MS Visual Basic - Base de Datos','Conocimientos de SQL Server 2000
Experiencia en desarrollo de aplicaciones con alguna herramienta visual, de
preferencia Visual Basic.','Aplicar t�cnicas de programaci�n orientadas a objetos con acceso a base de datos en SQL � SERVER 2000
Administraci�n de proyectos y el acceso a base de datos usando controles enlazados.
Administraci�n de reportes.','Introducci�n
ActiveX Data Object
Objeto Recordset
Control ADO Data
OBJETOS Command y Parameters
M�dulos de Clase y Dlls',200,12,'2015-02-28','2015-03-21','Activo')
--21
INSERT INTO dbo.Curso VALUES(5,3,2,10,20,'Desarrollo de Aplicaciones .NET con VS.-2012','Conocimiento o experiencia
en programaci�n o desarrollo de aplicaciones y que deseen desarrollar aplicaciones en la
plataforma .Net con Visual Basic .Net','Conocer la estrategia Microsoft .NET y los componentes del Marco .NET
o Describir las caracter�sticas de Visual Studio .NET
o Describir el modelo de programaci�n basado en objetos.','ntroducci�n a Microsoft NET
Uso de variables de tipo valor
nstrucciones y excepciones
Tablas
Programaci�n orientada a objetos
Uso de variables de tipo referencia
Herencia en VB',200,12,'2015-03-28','2015-04-18','Activo')
--22
INSERT INTO dbo.Curso VALUES(6,3,4,12,null,'Desarrollo de Aplicaciones .NET Con Visual Studio 2012','Conocimientos de programaci�n, POO, bases de datos, ADO.NET, SQL SERVER 2008','Proporcionar al alumno los conocimientos para el desarrollo de aplicaciones en entornos distribuidos con tecnolog�as de �ltima generaci�n Microsoft','Programaci�n Orientada A Objetos
Desarrollo de interfaz de usuario Windows
Trabajando con colecciones de datos
Acceso al sistema de archivos
Programando con Hilos
Usando Expresiones Regulares para validaci�n de datos
Pruebas y depuraci�n de errores
Distribuci�n de aplicaciones Windows',200,12,'2014-12-06','2014-12-27','Activo')
--23
INSERT INTO dbo.Curso VALUES(6,3,4,12,22,'Acceso a Datos con ADO . NET 4.0 y Visual Studio 2012','Ninguno','Manejar las herramientas de acceso a datos mediante ADO .NET 4.0
Transacciones en 2 capas con LINQ
Aprender a trabajar con informes empresariales de Crystal Reports.','Arquitectura de ADO.NET 4.0
Consulta y mantenimiento de datos en forma conectada.
Manejo de Transacciones.
Trabajo desconectado.
Consumir reportes locales y de Servidor Reporting Services
Acceso a Datos con Entity Data Model y Linq para entidades
Acceso a datos en los servicios en la nube con Windows Azure',200,12,'2015-01-03','2015-01-24','Activo')
--24
INSERT INTO dbo.Curso VALUES(6,3,4,12,23,'Desarrollo de Aplicaciones Web con ASP .NET Ajax','Ninguno','Al t�rmino del curso el alumno estar� en la capacidad de desarrollar una aplicaci�n Web con ASP.Net con acceso a una base de datos e implementarla.','Crear Aplicaciones Web con Visual Studio 2012
Agregar C�digo a un Formulario Web ASP.NET 4.0
Traceo de Aplicaciones Web ASP.NET 4.0
Validaci�n de Entradas de Usuarios
Creaci�n e Implementaci�n de Controles de Usuario
Configuraci�n, Optimizaci�n y Despliegue de Aplicaciones Web ASP.NET 4.0
 Configuraci�n de la Seguridad en Aplicaciones Web ASP.NET 4.0
ASP.NET 4.0 AJAX en el servidor
Desarrolle aplicaciones con ASP.NET 4.0 con MVC 3',200,12,'2015-01-31','2015-02-21','Activo')
--25
INSERT INTO dbo.Curso VALUES(6,3,4,12,24,'Taller de desarrollo de Aplicaciones Distribuidas en N capas','Ninguno','Desarrollar de aplicaciones en entornos distribuidos con tecnolog�as de �ltima generaci�n Microsoft, integraci�n de herramientas de SQL Server 2008, utilizando como herramienta Microsoft Visual Studio 2012 y NET Framework 4.0','Fundamentos de Desarrollo de aplicaciones distribuidas
Introducci�n a SOA - REST
Introducci�n  a .NET Remoting
Publicar servicios con .NET Remoting
Introducci�n a Servicios Web
Publicar servicios WEB
Introducci�n a WCF
Creando un servicio de WCF.
Sirviendo un servicio de WCF.
Consumiendo un servicio en WCF
Creaci�n de entidades
Construir una soluci�n en capas
Generar la capa de Datos con Microsoft Entity Framework
Generar la capa de negocios
Exponer los servicios WCF de la capa de negocios por IIS 7.0
Generar la capa de presentaci�n Web
Consumiendo reportes de Reporting Services y SQL SERVER 2008
Instalaci�n de un aplicaci�n Web en IIS 7.0',200,12,'2015-02-28','2015-03-21','Activo')
--26
INSERT INTO dbo.Curso VALUES(7,3,7,15,null,'Desarrollo Aplicaciones.NET con C#','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','En este curso los alumnos aprender�n  los fundamentos del Lenguaje de programaci�n  C#  Orientada a Objeto con  NET  Framework 4.0.
','Introducci�n a MICROSOFT .NET y C#
Programaci�n Orientada a Objetos
Herencia
Trabajar con Men�s
Arreglo y Colecciones
Flujos de Datos
Windows Presentation Foundation
Distribuci�n de Aplicaciones Windows',200,12,'2014-12-07','2014-12-28','Activo')
--27
INSERT INTO dbo.Curso VALUES(7,3,7,15,26,'Desarrollo Aplicaciones con ADO.NET 4.0 y C#','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','El objetivo de este curso es presentar las t�cnicas de programaci�n para bases de datos en la plataforma .NET, utilizando C# como lenguaje base.','SQL Server 2008 para Desarrolladores.
 Arquitectura de ADO.NET 4.0.
Acceso Desconectado.
Consulta y Mantenimiento de Datos en Forma Conectada.
Manejo de Transacciones.
Generar Reportes con CRYSTAL REPORTS
Acceso a Datos con LINQ',200,12,'2015-01-04','2015-01-25','Activo')
--28
INSERT INTO dbo.Curso VALUES(7,3,7,15,27,'Desarrollo Aplicaciones Web con C# ASP.NET AJAX','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','Este curso otorga los fundamentos necesarios para la implementaci�n de aplicaciones Web ASP.NET usando  Visual C#, enfocado en el ambiente de desarrollo de Visual Studio.NET.','Introducci�n a ASP.NET  AJAX
Uso de los Controles Est�ndar
Dise�o de Sitios Web con P�ginas Maestras
Visi�n General de Acceso a Datos
Acceso a Datos con LINQ to SQL
Administraci�n del Estado
Uso de Autenticaci�n Basada en Formularios
Reportes en ASP.NET',200,12,'2015-02-01','2015-02-25','Activo')
--29
INSERT INTO dbo.Curso VALUES(7,3,7,15,28,'Desarrollo Aplicaciones Web Distribuidas en N capas con C#','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','Proporcionar a los estudiantes los conocimientos y habilidades necesarias para desarrollar soluciones basadas  en Capas y Servicios Web para solucionar problemas comunes en un dominio de aplicaci�n distribuida.',' Implementaci�n de Componentes
Arquitectura en Capas
Servicios Web XML
Windows Communication Foundation (WCF)
Configuraci�n de Servicios WCF
Consumiendo Servicios WCF
Microsoft Entity Framework',200,12,'2015-03-01','2015-03-22','Activo')
--30
INSERT INTO dbo.Curso VALUES(8,3,6,14,null,'PHP Nivel I - Programaci�n Web','Conocimiento b�sico del lenguaje HTML.
Conocimiento de programaci�n estructurada','Comprender el desarrollo evolutivo de la Web a nivel mundial
Extender su conocimiento en desarrollo de sitios web, basado en la experiencia del usuario.','Introducci�n al m�dulo - Web 2.0.
HTML.
Lenguaje B�sico: Sintaxis, Comentarios, Tipo de datos
Tablas o Arrays
Funciones de Usuario
Librerias. Creaci�n y Utilizaci�n de Librer�as
Sentencias Repetitivas � While y for
Manejo de cadenas. Funciones de cadena
JavaScript I
PHP Utilizando Java Script
 Instalando una Herramienta de Administraci�n � MysqlGui Tools
Sentencias de SQL
Conexi�n al Mysql desde PHP. Configuraci�n del archivo INI
Procesos B�sicos de Mantenimiento',200,12,'2014-12-07','2014-12-28','Activo')
--31
INSERT INTO dbo.Curso VALUES(8,3,6,14,30,'PHP Nivel II - DAO-POO','Conocimiento del lenguaje HTML (indispensable)
Conocimiento de programaci�n estructurada','Comprender la sintaxis completa del lenguaje
Comprender la relaci�n de PHP con los servidores Web (Apache)','PHP 5.X Caracter�sticas avanzadas
MySql B�sico � PostGress Basico
Integraci�n PHP - MySql
PHP 5.X Orientaci�n a Objetos
Manejo de Sesiones y Gr�ficos
Carrito de Compra, Upload , PDF y C�digos de Validaci�n
Email y Carrito de Compra
Manejo de Capas � MVC y Ajax',200,12,'2015-01-04','2015-01-25','Activo')
--32
INSERT INTO dbo.Curso VALUES(8,3,6,14,31,'PHP Nivel III - PHP Avanzado','Conocimiento de PHP Nivel II - DAO-POO
Nociones de Servidor web. ','Comprender la relaci�n de PHP con los servidores Web (Apache)
Realizar conexiones con MYSQL para la creaci�n hojas din�micas','Patrones de Dise�o
Motor de Plantillas PHP - Smarty
WebServices � XML � NuSoap
Framework con PHP
Definiciones previas. Frameworks � Librer�as externas � APIs.
Kumbia
ZendFramework
Synfony',200,12,'2015-02-01','2015-02-25','Activo')

--33
INSERT INTO dbo.Curso VALUES(9,3,2,8,null,'Java Fundamentos','Lenguaje de programaci�n estructurado, as� como los conceptos de orientaci�n a objetos.
Recomendables pero no requeridos conocimientos de C � C++','Conocer las caracter�sticas del lenguaje java y su uso en el desarrollo de aplicaciones inform�ticas de todo nivel usando los conceptos de la programaci�n orientada a objetos as�
como las caracter�sticas del modelo cliente/servidor.','Estructura de un sistema inform�tico
Atributos: Tipos y �mbitos
Control de flujo y operadores
Inner classes (clases internas)
Interfaz grafica de usuario (GUI).
JDialog y JOptionPane
Eventos:definici�n
Asociaci�n de clases Bean con eventos',200,24,'2014-12-01','2015-12-17','Activo')
--34
INSERT INTO dbo.Curso VALUES(9,3,2,8,33,'Java Cliente / Servidor','Los alumnos necesitar�n tener experiencia con el lenguaje de programaci�n Java para poder comprender lamateria del curso con �xito.','Conocer las caracter�sticas del lenguaje java y su uso en el desarrollo de aplicaciones inform�ticas de todo nivel usando los conceptos de la programaci�n orientada a objetos as�
como las caracter�sticas del modelo cliente/servidor','Conversi�n de datos
Utilidades
Colecciones
Concurrencia
JDBC
Uso de Statement
Uso de PreparedStatement
Reportes',200,24,'2014-12-19','2015-01-05','Activo')
--35
INSERT INTO dbo.Curso VALUES(9,3,2,8,34,'Java Aplicaciones Web','Los alumnos necesitar�n tener experiencia con el lenguaje de programaci�n Java para poder comprender la materia del curso con �xito ','Conocer las caracter�sticas del lenguaje java y su uso en el desarrollo de aplicaciones inform�ticas de todo nivel usando los conceptos de la programaci�n orientada a objetos as�
como las caracter�sticas del modelo cliente/servidor','Aplicaciones WEB
JSP
Uso de Ajax
Java Bean - Uso
Persistencia
Sesiones en JSP
JSON',200,24,'2015-01-07','2015-01-23','Activo')
--36
INSERT INTO dbo.Curso VALUES(10,3,1,9,null,'Android B�sico','Educaci�n media o superior con conocimientos b�sico de programaci�n.','Conozcan los principales componentes para desarrollar una aplicaci�n en Android
Obtengan conocimientos de los componentes visuales de aplicaciones m�viles
Conozcan las APIs m�s avanzadas','SDK Manager y AVD Manager 
Elementos de una aplicaci�n en Android. 
AndroidManifest, uso y elementos. 
Recursos en Android. Strings, Color y Drawable. 
Intenciones (Intent). Tipos y uso. 
Layout. Implementaci�n y tipos. 
Actividades. Implementaci�n 
DDMS y LogCat. Trazabilidad en Android 
ListView. Adapter, implementaci�n. 
View y ViewGroups. Uso de widgets. Spinner y AutocompleteTextView 
Unidades de medida en Android. DP y SP. 
Eventos. Uso de OnClickListener y OnItemClickListener 
Menu en Android. Tipos. Uso de Option Menu y ContextMenu. 
Dialogo. Uso de AlertDialog y ProgressDialog 
Toast. Uso de notificaciones',200,24,'2014-12-02','2014-12-25','Activo')
--37
INSERT INTO dbo.Curso VALUES(10,3,1,9,36,'Android Intermedio','Educaci�n media o superior con conocimientos b�sico de programaci�n.
Android B�sico','A lo largo del curso, el alumno aprender� a realizar tareas en segundo plano, utilizar los sensores del dispositivo, crear gr�ficos en 2D, almacenar datos entre sesiones, crear animaciones, etc.','ActionBar. Uso en API 17 
Fragmentos. Caracteristicas y uso. 
Preferencias. Caracteristicas. Uso de SharedPreferences. 
Uso de controles Preferences y PreferenceActivity. 
Binder (IPC Driver). Middleware a servicios Linux. 
Servicios en Android. Tipos e implementaci�n. 
BroadcastReceiver. Acceso a TelephonyManager y SmsManager 
Multimedia en Android. MediaPlayer y MediaController. 
Video y Camara en Android. SurfaceView y SurfaceHandler. 
Notificaciones en Android. Luz, zumbador, icono. 
Preferencias. Uso PreferenceActivity y PreferenceScreen 
Archivos en Android. Uso de OutputStream e InputStream. 
Archivos en memoria interna y memoria externa. Clase Environment.',200,24,'2014-12-30','2015-01-22','Activo')
--38
INSERT INTO dbo.Curso VALUES(10,3,1,9,37,'Android Avanzado','Educaci�n media o superior con conocimientos b�sico de programaci�n.
Android Intermedio','Construir juegos y aplicaciones graficas con un nivel de sofisticacion requeridas por el usuario.
Elaborar aplicaciones m�viles en modo visual y en la nube usando MIT AppInventor.','Base de datos SqLite. Caracteristicas. 
Sintaxis de sentencias SQL para SQLITE. 
ContentProvider. Caracter�sticas y uso. 
Importar una base de datos a Android. 
Base de datos del dispositivo m�vil. Uso de ContactProvider. 
GPS. Uso e implementaci�n. 
GoogleMap en Android. Caracteristicas. 
MapActivity y MapView. 
Procedimiento para creaci�n de API Key en Google Map. 
Manejo de mapas en Android. Uso de MapController. 
Web Services en Android. Diferencias entre SOAP y REST. 
Uso de KSOAP2 para webservices SOAP. Ejemplos usando .NET y PHP. 
Despliegue y publicaci�n de aplicaciones en Google Play. Criterios. ',200,24,'2015-01-27','2015-02-19','Activo')
--39
INSERT INTO dbo.Curso VALUES(10,3,1,9,38,'Android App Inventor','Educaci�n media o superior con conocimientos b�sico de programaci�n.
Android Avanzado','Al finalizar el curso el alumno ser� capaz de manejar el entorno de programaci�n y crear una aplicaci�n completa para dispositivos Android.','MIT AppInventor. Caracter�sticas y requerimientos. 
Instalaci�n de requisitos para AppInventor. 
Elementos de AppInventor: Visual Designer, Block Editor y Emulator. 
Creaci�n de sentencias en AppInventor. 
Declaraci�n de variables y procedures. 
Uso de Screen Arragement 
Uso de propiedades y eventos de controles AppInventor. 
Descarga de aplicaci�n en emulador AppInventor 
Uso de archivos multimedia. Imagen, sonido y video. 
ListPicker. Uso y eventos. 
Activity Starter. Uso de Intent en AppInventor. 
Uso de objetos Web y WebViewer, Uso de GooleMap y Google StreetView. 
Canvas. Gr�ficos en Android. 
TinyDB. Uso de Base de datos en Android. 
',200,24,'2015-02-24','2015-03-19','Activo')
--40
INSERT INTO dbo.Curso VALUES(11,4,3,6,null,'Autocad 2014 - B�sico ','Se necesita conocimientos previos en Windows a nivel de usuario, adem�s tener alg�n conocimiento b�sico de dibujo t�cnico, ello facilitara su aprendizaje del software.','Manejar las herramientas de dibujo y edici�n de objetos. los cuales le permitir�n desarrollar un dibujo t�cnico de manera r�pida y sencilla a la vez.','Entorno de trabajo
Unidades de medida y sistema de coordenadas
Edici�n y dibujo de Objetos
Capas y Propiedades de Objetos
Crear estilos de texto y sombreado
Dimensionado
Configuraciones de p�gina y Ploteo
Escala',200,24,'2014-12-01','2015-01-01','Activo')
--41
INSERT INTO dbo.Curso VALUES(11,4,3,6,40,'Autocad 2014 - Intermedio',' La actual o una versi�n anterior de AutoCAD
Creaci�n y edici�n de objetos b�sicos de AutoCAD','Aplicaci�n de t�cnicas de Edici�n (Uso de grips)
Aplicaci�n de restricciones geom�tricas
Dibujo Isom�trico (piezas mec�nicas, tuber�as, Vivienda)','HERRAMIENTAS DE PRODUCTIVIDAD E ISOMETR�A
L�NEAS DE CONSTRUCCI�N Y REFERENCIA DE BLOQUES
REDEFINICION DE BLOQUES, ATRIBUTOS Y TABLAS
ENLACE CON ARCHIVOS EXTERNOS E IM�GENES
 POLIGONALES Y CURVAS
LAYOUTS Y PLOTEO
UTILIDADES
PERSONALIZACI�N DEL AUTOCAD',200,24,'2014-01-02','2015-02-04','Activo')
--42
INSERT INTO dbo.Curso VALUES(11,4,3,6,41,'Autocad 2014 - Avanzado ','Se requieren conocimientos de AutoCAD B�sico y Intermedio.','Manejar adecuadamente el espacio de trabajo en 3d.
Conocer y utilizar r�pidamente los diferentes comandos de navegaci�n en 3d.','Herramientas visualizaci�n y trazado 3D
Modelado con S�lidos
Modificar S�lidos y superficies
Creaci�n de S�lidos y superficies
Edici�n de S�lidos
Modelado con Superficies y mallas
Presentaci�n Foto realista
Configuraciones de p�gina y Layouts',200,24,'2015-02-05','2015-03-10','Activo')
--43
INSERT INTO dbo.Curso VALUES(12,4,7,7,null,'Corel Draw X6 - Designer','La actual o una versi�n anterior de CorelDraw X5
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista','Lograr que el alumno comprenda los fundamentos y criterios b�sicos de la Presa digital, elaborando dise�os publicitarios de manera eficiente y efectiva, para que queden listos para la Preimpresi�n.','En entorno de dise�o
Configurar el documento de CorelDraw X6
Herramientas de formas b�sicas
Herramientas y comandos para organizar los objetos
Usar colores (uso b�sico)
Herramienta texto (uso b�sico)
Herramienta Bezier (trazos rectos)
Dise�o de un Recibo por honorarios
Herramienta Bezier (curvas)
Rellano Uniforme
Relleno Degrad�
Relleno Patr�n
Relleno Textura
Herramienta Texto (uso avanzado)',200,24,'2014-12-01','2015-01-01','Activo')
--44
INSERT INTO dbo.Curso VALUES(12,4,7,7,43,'Corel Draw X6 - Expert','Haber realizado el curso de Corel Draw Designer o acreditar conocimientos
equivalentes a juicio de la Instituci�n','Capacitar al alumno en el manejo de la interfase de Corel Draw, la creaci�n y edici�n de dise�os simples usando figuras geom�tricas, curvas libres, definici�n de filetes y rellenos','Manejo de im�genes
Insertando como Objeto Nuevo
Vi�etas y Numeraci�n
Trabajar con Capas
Crear una plantilla de estilo
PowerTrace
Vectorizaci�n de Im�genes
Impresi�n',200,24,'2014-01-02','2015-02-04','Activo')
--45
INSERT INTO dbo.Curso VALUES(12,4,7,7,44,'Adobe Illustrator CS6 - Designer','nose requiere conocimiento alguno','Teor�a: Uso de herramientas para dibujo (vectorial), texto en p�rrafo o art�stico y diagramaci�n de cuadros estad�sticos. Utilizaci�n de filtros para formas en la imagen y cambios de color.','EL �REA DE TRABAJO
ASISTENTE DE BIENVENIDA
ELABORACI�N DE ILUSTRACIONES
SELECCI�N.
CREANDO FORMAS B�SICAS
TRANSPARENCIAS Y MODOS DE FUSI�N
COLOCAR Y ORDENAR OBJETOS
ATRIBUTOS DE ASPECTO, ESTILOS Y EFECTOS
CREACI�N Y EDICI�N DE TEXTOS
FUSIONAR FORMAS Y COLORES
CREAR EFECTOS
GR�FICOS PARA LA WEB E IMPRESION',200,24,'2015-02-05','2015-03-10','Activo')
--46
INSERT INTO dbo.Curso VALUES(12,4,7,7,45,'Adobe Photoshop CS6 - Designer','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Concepto de resoluci�n y manejo de las im�genes en capas. Empleo de herramientas para selecci�n y retoque fotogr�fico. Cambio de los modos de color, uso de filtros para la creaci�n de texturas.
','Requerimientos del Sistema para la instalaci�n del software
Herramientas para seleccionar b�sicas, marco rectangular,, elipse, lazo, lazo poligonal, lazo magn�tico, varita y selecci�n r�pida.
Clona
Herramientas para editar la imagen
Capas de texto
L�neas gu�as
Opciones de Ajustes de Color
Bloqueo de capas
Modos de fusi�n de capas',200,24,'2015-03-11','2015-04-13','Activo')
--47
INSERT INTO dbo.Curso VALUES(12,4,7,7,46,'Adobe Photoshop CS6 - Expert','Haber llevado el modulo de Photoshop Designer.','Concepto de resoluci�n y manejo de las im�genes en capas. Empleo de herramientas para selecci�n y retoque fotogr�fico.
Recortar, retocar y efectos para presentaci�n de fotograf�as profesionales.','Imagen Raw
Canales de color
Canales alfa
Histograma
Niveles
Curvas
Brillo y contrarte
Equilibrio de color
Tono y saturaci�n
Reemplazar color
Mapa de degradado
Invertir
Filtro de fotograf�a
Brillo y oscuridad
Variaciones
Capas de ajuste
Uso avanzado de filtros
M�scara r�pida
M�scara de capas
PDF
Animaci�n y creaci�n de una WEB
Acciones
Impresi�n',200,24,'2015-04-14','2015-05-15','Activo')
--48
INSERT INTO dbo.Curso VALUES(12,4,7,7,47,'Adobe Indesign CS6','Haber realizado el curso de Operaci�n B�sica de Microsoft Windows o acreditar
conocimientos equivalentes a juicio de la Instituci�n.','Proporcionar los conocimientos te�rico/pr�cticos en la diagramaci�n, necesarios
para la elaboraci�n de Revistas, folletos, boletines, cat�logos, etc.','Conceptos B�sicos
Ventana de trabajo, Opciones
Paleta de herramientas
Opciones del Zoom
El Entorno
Formateo de Texto
La Paleta de Control
Trabajando con Texto
Im�genes
Importaci�n de Im�genes.
Enmascaramiento.
Manejo de Objetos y Estilos
Alineamiento y Distribuci�n
Ordenamiento
Duplicado de Objetos
Estilos: Uso de la Paleta de estilos
Creaci�n de estilo
Colores y el Editor de textos
Edicion Avanzada de Texto.
P�ginas Maestras
P�ginas maestras: Opciones.
Manejo de P�ginas - Plugins',200,24,'2015-05-18','2015-06-18','Activo')
--49
INSERT INTO dbo.Curso VALUES(13,4,1,4,null,'Adobe Dreamweaver CS6','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Planificaci�n de la estructura de Sitios locales y remotos
Brindar al alumno las posibilidades que ofrece el programa
Creaci�n de documentos HTML','Aspectos b�sicos del programa
Creaci�n de un estilo de Clase
V�nculos o hiperv�nculos de documentos
Insertar Im�genes
Dise�o de paginas
Pagina de marcos
Creaci�n de Plantillas
Crear una plantilla nueva
Crear regiones editables en la plantilla
Aplicar una plantilla a un documento.
Bloquear una regi�n editable',200,24,'2014-12-01','2015-01-01','Activo')
--50
INSERT INTO dbo.Curso VALUES(13,4,1,4,49,'Adobe Dreamweaver CS6 - Acceso BD & Adobe Fireworks CS6','Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Instituci�n','Como generar mejores efectos animados, es un software especializado para la creaci�n, administraci�n y edici�n de p�ginas Web multimedia (texto, sonido e im�genes).','Elementos DIV
Elementos Div PA
C�digo de las p�ginas
Comportamientos
Creaci�n de formularios
Conexiones a Bases de Datos
Adobe Fireworks
Mapas de bits
Texto
Optimizaci�n y exportaci�n
Acerca de la optimizaci�n
Exportaci�n desde Fireworks',200,24,'2014-01-02','2015-02-04','Activo')
--51
INSERT INTO dbo.Curso VALUES(13,4,1,4,50,'Adobe Flash CS6 - Animaciones B�sicas','Conocimientos b�sicos de Adobe Flash a nivel de usuario.','Manejo de conceptos para la animaci�n, empleo de herramientas para dibujo, texto y color. Manipulaci�n de las librer�as y paneles de efectos. ','Iniciar Flash.
�rea de trabajo.
El Escenario, configuraci�n.
Insertar una animaci�n flash en una p�gina web
Creaci�n y edici�n de ilustraciones
Panel Herramientas
Trabajar con texto cl�sico
Trabajar con Text Layout Framework (TLF)
Creaci�n de animaciones
Animaci�n fotograma a fotograma
Utilizaci�n de cinem�tica inversa.
Animaciones con m�scaras
Las acciones de flash
Introducci�n a ActionScript
Acciones b�sicas: Control de la l�nea de tiempo
Acciones a fotogramas
Acciones a Botones
Proyectores autoejecutables',200,24,'2015-02-05','2015-03-10','Activo')
--52
INSERT INTO dbo.Curso VALUES(13,4,1,4,51,'Adobe Flash CS6 - Animaciones Avanzadas','Se requiere conocimiento de adobe Flash Basico o intermedio.','El participante, al finalizar el m�dulo, podr� crear activos para las p�ginas Web y tambi�n dise�ar p�ginas est�ticas y din�micas eficientes, atractivas y f�ciles de navegar.','Fundamentos de ActionScript 
Uso de texto est�tico (Static Text)
Uso de texto din�mico (Dinamic Text)
Utilizaci�n de variables.
Trabajo con sonido
Controlar sonido con ActionScript 
Reproducir y detener sonido con botones y ActionScript 
Trabajo con video
Crear una precarga (Preloader)
Crear una precarga (Preloader) en ActionScript 3
Matrices
Uso de componentes para crear interfaces de usuario (UI)
Componentes VS tama�o de pel�cula
Uso de los comandos FSCommnad
Settings de publicaci�n',200,24,'2015-03-11','2015-04-13','Activo')
--53
INSERT INTO dbo.Curso VALUES(14,5,5,13,null,'Linux - Administraci�n','Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP','Capacitar al participante en las t�cnicas b�sicas de personalizaci�n y reducci�n de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, as� como tambi�n en criptograf�a y cifrado','Introducci�n de Sistemas Operativos con Linux
Sistema de Archivos
Aplicaciones
Instalaci�n del Sistema Operativo
Networking bajo Linux
Grupos, usuarios, archivos, propiedades y permisos
Compartici�n de Archivos',200,12,'2014-12-06','2014-12-27','Activo')
--54
INSERT INTO dbo.Curso VALUES(14,5,5,13,53,'Linux - Administraci�n de Servicios Intranet','Conocimientos b�sicos en redes, conectividad y TCP/IP
Linux � Administraci�ns','Usar el Filtrado de paquetes Por medio de TCP/IP.
Instalar y configurar entornos Microsoft como servidor Proxy y Firewall para un entorno empresarial.','Domain Name Service (DNS)
Sendmail
Apache Web Server
Dynamic Host Control Protocol (DHCP)
Squid Proxy Server',200,12,'2015-01-03','2015-01-24','Activo')
--55
INSERT INTO dbo.Curso VALUES(14,5,5,13,54,'Linux - Seguridad en Redes','Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP
','Capacitar al participante en las t�cnicas b�sicas de personalizaci�n y reducci�n de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, as� como tambi�n en criptograf�a y cifrado','PKI - Criptograf�a de Clave P�blica
Servicio HTTPS
Servicio SENDMAIL Seguro
Servicio OpenSSH
Servicio IPtables
Servicio VPN',200,12,'2015-01-31','2015-02-21','Activo')






-- MATR�CULA CURSO
INSERT INTO dbo.MatriculaCurso VALUES(3,7,10001,'2014-11-15T14:25:10')
INSERT INTO dbo.MatriculaCurso VALUES(5,1,10002,'2014-11-17T14:10:10')
INSERT INTO dbo.MatriculaCurso VALUES(6,17,10003,'2014-11-18T06:05:10')
INSERT INTO dbo.MatriculaCurso VALUES(8,25,10004,'2014-11-20T14:25:10')
INSERT INTO dbo.MatriculaCurso VALUES(10,28,10005,'2014-11-22T14:13:10')
INSERT INTO dbo.MatriculaCurso VALUES(11,44,10006,'2014-11-23T14:25:10')
INSERT INTO dbo.MatriculaCurso VALUES(12,36,10007,'2014-11-24T14:25:10')

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------




---- STORE PROCEDURE ----


---- STORE PROCEDURE para validar el Login ----
/*
	Validar:
	01. El usuario no sea NULL ni vac�o.
	02. La contrase�a no sea NULL ni vac�a.
	03. El usuario y contrase�a sean v�lidos.
*/

CREATE PROCEDURE usp_ValidarLogin
@Nick			VARCHAR(25)			= NULL,
@Password	VARCHAR(40)			= NULL
AS
	IF(@Nick IS NULL OR LEN(@Nick)=0)
		BEGIN
			PRINT 'Debe ingresar su nombre de usuario'
			RETURN 1
		END
	----------------------------------------------------
	IF(@Password IS NULL OR LEN(@Password)=0)
		BEGIN
			PRINT 'Debe ingresar su contrasena'
			RETURN 2
		END
	----------------------------------------------------

	IF NOT EXISTS( SELECT 1 FROM Usuario 
					 WHERE Nick = @Nick
					 AND	  dbo.Desencriptar(Contrasena) = @Password )
		BEGIN
			PRINT 'Usuario invalido'
			RETURN 3
		END
	ELSE
		BEGIN
			PRINT 'Usuario valido'
			RETURN 0	-- EXITO
		END
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_ValidarLogin 'Carlos33', 'asdf'			-- �XITO
EXECUTE usp_ValidarLogin NULL, 'asdf'				-- Usuario NULL
EXECUTE usp_ValidarLogin ' ', 'asdf'						-- Usuario vac�o
EXECUTE usp_ValidarLogin 'Carlos33', NULL			-- Contrase�a NULL
EXECUTE usp_ValidarLogin 'Carlos33', ' '				-- Contrase�a vac�a
EXECUTE usp_ValidarLogin 'Carlos33', 'asdfg'		-- Usuario inv�lido
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------





---- STORE PROCEDURE para saber si es ALUMNO o ADMINISTRADOR ----
CREATE PROCEDURE usp_AlumnoAdministrador
@Nick	VARCHAR(25),
@Password VARCHAR(40)
AS
 DECLARE @C_Usuario INT
 SELECT @C_Usuario = C_Usuario FROM Usuario WHERE Nick = @Nick
 IF EXISTS(SELECT 1 FROM Alumno WHERE C_Alumno = @C_Usuario)
 	BEGIN
 	PRINT 'Es ALUMNO'
 	RETURN 1
 	END
  ----------------------------------------------------------------------------
 IF EXISTS(SELECT 1 FROM Administrador WHERE C_Administrador = @C_Usuario)
 	BEGIN
 	PRINT 'Es ADMINISTRADOR'
 	RETURN 2
 	END
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_AlumnoAdministrador 'Pati', 'abcd' -- ALUMNO
EXECUTE usp_AlumnoAdministrador 'Carlos33', 'asdf'	-- ADMINISTRADOR
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para agregar Curso ----
/*
	Validar:
	01. El codigo de modulo no sea NULL ni vac�o.
	02. El codigo de categor�a no sea NULL ni vac�o.
	03. El codigo de profesor no sea NULL ni vac�o.
	04. El codigo de horario no sea NULL ni vac�o.
	05. La descripci�n del curso no sea NULL ni vac�a.
	06. El temario del curso no sea NULL. Validar en vista tambi�n.
	07. El precio del curso no sea NULL. Validar en vista tambi�n.
	08. El n�mero de horas del curso no sea NULL. Validar en vista tambi�n.
	09. La fecha de inicio del curso no sea NULL ni vac�o. Validar en vista tambi�n.
	10. La fecha de fin del curso no sea NULL ni vac�o. Validar en vista tambi�n.
	11. El codigo de modulo s� exista.
	12. El codigo de categor�a s� exista.
	13. El codigo de profesor s� exista.
	14. El codigo de horario s� exista.
	15. El codigo de curso requisito s� exista.
	16. La descripci�n o nombre del curso no se repita.
	17. El precio del curso no sea menor que cero.
	18. El n�mero de horas del curso no sea menor o igual a cero.
	29. La fecha de inicio sea menor que la fecha de fin.
	20. La fecha de inicio y fecha de fin no sean iguales.
*/
CREATE PROCEDURE usp_AgregarCurso
@C_Modulo			INT				= NULL,
@C_Categoria			INT				= NULL,
@C_Profesor			INT				= NULL,
@C_Horario			INT				= NULL,
@C_CursoR				INT,
@Descripcion			VARCHAR(70)		= NULL,
@Requisitos			VARCHAR(250),
@Objetivo				VARCHAR(250),
@Temario				TEXT					= NULL,
@Precio					DECIMAL(8,2)		= NULL,
@NumeroHoras		INT				= NULL,
@FechaInicio			DATE					= NULL,
@FechaFin				DATE					= NULL
AS
	IF(@C_Modulo IS NULL OR LEN(@C_Modulo) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de modulo'
			RETURN 1
		END
	-------------------------------------------------------
	IF(@C_Categoria IS NULL OR LEN(@C_Categoria) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de categoria'
			RETURN 2
		END
	-------------------------------------------------------
	IF(@C_Profesor IS NULL OR LEN(@C_Profesor) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de profesor'
			RETURN 3
		END
	-------------------------------------------------------
	IF(@C_Horario IS NULL OR LEN(@C_Horario) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de horario'
			RETURN 4
		END
	-------------------------------------------------------
	IF(@Descripcion IS NULL OR LEN(@Descripcion) = 0)
		BEGIN
			PRINT 'Debe ingresar descripcion de curso'
			RETURN 5
		END
	-------------------------------------------------------
	IF(@Temario IS NULL)
		BEGIN
			PRINT 'Debe ingresar temario del curso'
			RETURN 6
		END
	-------------------------------------------------------
	IF(@Precio IS NULL OR LEN(@Precio) = 0)
		BEGIN
			PRINT 'Debe ingresar precio del curso'
			RETURN 7
		END
	-------------------------------------------------------
	IF(@NumeroHoras IS NULL OR LEN(@NumeroHoras) = 0)
		BEGIN
			PRINT 'Debe ingresar numero de horas del curso'
			RETURN 8
		END
	-------------------------------------------------------
	IF(@FechaInicio IS NULL OR LEN(@FechaInicio) = 0)
		BEGIN
			PRINT 'Debe ingresar fecha de inicio del curso'
			RETURN 9
		END
	-------------------------------------------------------
	IF(@FechaFin IS NULL OR LEN(@FechaFin) = 0)
		BEGIN
			PRINT 'Debe ingresar fecha de fin del curso'
			RETURN 10
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Modulo 
							WHERE C_Modulo = @C_Modulo)
		BEGIN
			PRINT 'El codigo de modulo no existe'
			RETURN 11
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Categoria 
							WHERE C_Categoria = @C_Categoria)
		BEGIN
			PRINT 'El codigo de categoria no existe'
			RETURN 12
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Profesor 
							WHERE C_Profesor = @C_Profesor)
		BEGIN
			PRINT 'El codigo de profesor no existe'
			RETURN 13
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Horario 
							WHERE C_Horario = @C_Horario)
		BEGIN
			PRINT 'El codigo de horario no existe'
			RETURN 14
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Curso 
							WHERE C_Curso = @C_CursoR)
		BEGIN
			PRINT 'El codigo de curso requerido no existe'
			RETURN 15
		END
	-------------------------------------------------------
	IF EXISTS(SELECT 1 FROM Curso 
							WHERE Descripcion = @Descripcion)
		BEGIN
			PRINT 'El nombre de curso ya existe'
			RETURN 16
		END
	-------------------------------------------------------
	IF(@Precio < 0)
		BEGIN
			PRINT 'El precio no puede ser menor que cero'
			RETURN 17
		END
	-------------------------------------------------------
	IF(@NumeroHoras < 0 OR @NumeroHoras = 0)
		BEGIN
			PRINT 'El numero de horas no puede ser menor o igual a cero'
			RETURN 18
		END
	-------------------------------------------------------
	IF(DATEDIFF(DAY, @FechaInicio, @FechaFin) < 0)
		BEGIN
			PRINT 'La fecha de inicio no puede ser posterior a la fecha de fin'
			RETURN 19
		END
	-------------------------------------------------------
	IF(DATEDIFF(DAY, @FechaInicio, @FechaFin) = 0)
		BEGIN
			PRINT 'La fecha de inicio no puede igual a la fecha de fin'
			RETURN 20
		END
	-------------------------------------------------------
	
	--AGREGAMOS CURSO
	INSERT INTO Curso(C_Modulo, C_Categoria, C_Profesor, C_Horario, C_CursoR, Descripcion,
									 Requisitos, Objetivo, Temario, Precio, NumeroHoras, FechaInicio, FechaFin, Estado)
	VALUES(@C_Modulo, @C_Categoria, @C_Profesor, @C_Horario, @C_CursoR, @Descripcion,
					@Requisitos, @Objetivo, @Temario, @Precio, @NumeroHoras, @FechaInicio, @FechaFin, 'Activo')
	IF(@@ERROR <> 0)
		BEGIN
			PRINT 'Error al agregar curso'
			RETURN 21
		END
		
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'			-- �XITO
EXECUTE usp_AgregarCurso null, 1, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Modulo NULL
EXECUTE usp_AgregarCurso ' ', 1, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Modulo vac�o
EXECUTE usp_AgregarCurso 1, null, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Categor�a NULL
EXECUTE usp_AgregarCurso 1, ' ', 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Categor�a vac�a	
EXECUTE usp_AgregarCurso 1, 1, null, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Profesor NULL
EXECUTE usp_AgregarCurso 1, 1, ' ', 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'	    -- Profesor vac�o	
EXECUTE usp_AgregarCurso 1, 1, 3, null, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Horario NULL
EXECUTE usp_AgregarCurso 1, 1, 3, '  ', 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- Horario vacio
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, null, 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'					-- Descripcion NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, ' ', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'						-- Descripcion vac�a
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba4', 'Ninguno', 'objetivo', null, 100.00, 24, '05/11/2014', '12/12/2014'						-- Temario NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba6', 'Ninguno', 'objetivo', 'TemarioPrueba', null, 24, '05/11/2014', '12/12/2014'			-- Precio NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba6', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, null, '05/11/2014', '12/12/2014'			-- N�mero de horas NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, ' ', '05/11/2014', '12/12/2014'			-- N�mero de horas vac�o.
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba6', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, null, '12/12/2014'						-- Fecha de inicio NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba8', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, '12/12/2014', null						-- Fecha de fin NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba3', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, '12/12/2014', '12/12/2014'			    -- Fecha de inicio igual a fecha de fin
EXECUTE usp_AgregarCurso 17, 1, 1, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- No existe c�digo de m�dulo
EXECUTE usp_AgregarCurso 1, 0, 1, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'			-- No existe c�digo de categor�a
EXECUTE usp_AgregarCurso 1, 1, 100, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- No existe c�digo de profesor	
EXECUTE usp_AgregarCurso 1, 1, 1, 20, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- No existe c�digo de horario
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 100, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'		-- No existe c�digo de CursoR
EXECUTE usp_AgregarCurso 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014'			-- Descripci�n no se repita	
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba12', 'Ninguno', 'objetivo', 'TemarioPrueba', -2, 24, '05/11/2014', '12/12/2014'				-- Precio menor que cero
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba12', 'Ninguno', 'objetivo', 'TemarioPrueba', 100, -3, '05/11/2014', '12/12/2014'			-- N�mero de horas menor que cero
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------





---- STORE PROCEDURE para modificar Curso ----
/*
	Validar:
	01. El codigo de curso no sea NULL ni vac�o.
	02. El codigo de modulo no sea NULL ni vac�o.
	03. El codigo de categor�a no sea NULL ni vac�o.
	04. El codigo de profesor no sea NULL ni vac�o.
	05. El codigo de horario no sea NULL ni vac�o.
	06. La descripci�n del curso no sea NULL ni vac�a.
	07. El temario del curso no sea NULL. Validar en vista tambi�n.
	08. El precio del curso no sea NULL. Validar en vista tambi�n.
	09. El n�mero de horas del curso no sea NULL. Validar en vista tambi�n.
	10. La fecha de inicio del curso no sea NULL. Validar en vista tambi�n.
	11. La fecha de fin del curso no sea NULL. Validar en vista tambi�n.
	12. El estado del curso no sea NULL. Validar en vista tambi�n.
	13. El codigo de curso s� exista.
	14. El codigo de modulo s� exista.
	15. El codigo de categor�a s� exista.
	16. El codigo de profesor s� exista.
	17. El codigo de horario s� exista.
	18. El codigo de curso requisito s� exista.
	19. El precio del curso no sea menor que cero.
	20. El n�mero de horas del curso no sea menor o igual a cero.
	21. La fecha de inicio sea menor que la fecha de fin.
	22. La fecha de inicio y fecha de fin no sean iguales.
*/
CREATE PROCEDURE usp_ModificarCurso
@C_Curso				INT						= NULL,
@C_Modulo			INT				= NULL,
@C_Categoria			INT				= NULL,
@C_Profesor			INT				= NULL,
@C_Horario			INT				= NULL,
@C_CursoR				INT,
@Descripcion			VARCHAR(70)		= NULL,
@Requisitos			VARCHAR(250),
@Objetivo				VARCHAR(250),
@Temario				TEXT					= NULL,
@Precio					DECIMAL(8,2)		= NULL,
@NumeroHoras		INT				= NULL,
@FechaInicio			DATE					= NULL,
@FechaFin				DATE					= NULL,
@Estado					VARCHAR(10)						= NULL
AS
	IF(@C_Modulo IS NULL OR LEN(@C_Modulo) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de modulo'
			RETURN 1
		END
	-------------------------------------------------------
	IF(@C_Modulo IS NULL OR LEN(@C_Modulo) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de modulo'
			RETURN 2
		END
	-------------------------------------------------------
	IF(@C_Categoria IS NULL OR LEN(@C_Categoria) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de categoria'
			RETURN 3
		END
	-------------------------------------------------------
	IF(@C_Profesor IS NULL OR LEN(@C_Profesor) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de profesor'
			RETURN 4
		END
	-------------------------------------------------------
	IF(@C_Horario IS NULL OR LEN(@C_Horario) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de horario'
			RETURN 5
		END
	-------------------------------------------------------
	IF(@Descripcion IS NULL OR LEN(@Descripcion) = 0)
		BEGIN
			PRINT 'Debe ingresar descripcion de curso'
			RETURN 6
		END
	-------------------------------------------------------
	IF(@Temario IS NULL)
		BEGIN
			PRINT 'Debe ingresar temario del curso'
			RETURN 7
		END
	-------------------------------------------------------
	IF(@Precio IS NULL OR LEN(@Precio) = 0)
		BEGIN
			PRINT 'Debe ingresar precio del curso'
			RETURN 8
		END
	-------------------------------------------------------
	IF(@NumeroHoras IS NULL OR LEN(@NumeroHoras) = 0)
		BEGIN
			PRINT 'Debe ingresar numero de horas del curso'
			RETURN 9
		END
	-------------------------------------------------------
	IF(@FechaInicio IS NULL OR LEN(@FechaInicio) = 0)
		BEGIN
			PRINT 'Debe ingresar fecha de inicio del curso'
			RETURN 10
		END
	-------------------------------------------------------
	IF(@FechaFin IS NULL OR LEN(@FechaFin) = 0)
		BEGIN
			PRINT 'Debe ingresar fecha de fin del curso'
			RETURN 11
		END
	-------------------------------------------------------
	IF(@Estado IS NULL OR LEN(@Estado) = 0)
		BEGIN
			PRINT 'Debe ingresar estado del curso'
			RETURN 12
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Curso 
							WHERE C_Curso = @C_Curso)
		BEGIN
			PRINT 'El codigo de curso no existe'
			RETURN 13
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Modulo 
							WHERE C_Modulo = @C_Modulo)
		BEGIN
			PRINT 'El codigo de modulo no existe'
			RETURN 14
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Categoria 
							WHERE C_Categoria = @C_Categoria)
		BEGIN
			PRINT 'El codigo de categoria no existe'
			RETURN 15
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Profesor 
							WHERE C_Profesor = @C_Profesor)
		BEGIN
			PRINT 'El codigo de profesor no existe'
			RETURN 16
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Horario 
							WHERE C_Horario = @C_Horario)
		BEGIN
			PRINT 'El codigo de horario no existe'
			RETURN 17
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Curso 
							WHERE C_Curso = @C_CursoR)
		BEGIN
			PRINT 'El codigo de curso requerido no existe'
			RETURN 18
		END
	-------------------------------------------------------
	IF(@Precio < 0)
		BEGIN
			PRINT 'El precio no puede ser menor que cero'
			RETURN 19
		END
	-------------------------------------------------------
	IF(@NumeroHoras < 0 OR @NumeroHoras = 0)
		BEGIN
			PRINT 'El numero de horas no puede ser menor o igual a cero'
			RETURN 20
		END
	-------------------------------------------------------
	IF(DATEDIFF(DAY, @FechaInicio, @FechaFin) < 0)
		BEGIN
			PRINT 'La fecha de inicio no puede ser posterior a la fecha de fin'
			RETURN 21
		END
	-------------------------------------------------------
	IF(DATEDIFF(DAY, @FechaInicio, @FechaFin) = 0)
		BEGIN
			PRINT 'La fecha de inicio no puede igual a la fecha de fin'
			RETURN 22
		END
	-------------------------------------------------------
	
	--MODIFICAMOS CURSO
	UPDATE Curso
	SET	C_Modulo		=	@C_Modulo,
			C_Categoria	=	@C_Categoria,
			C_Profesor		=	@C_Categoria,
			C_Horario		=	@C_Horario,
			C_CursoR			=	@C_CursoR,
			Descripcion		=	@Descripcion,
			Requisitos		=	@Requisitos,
			Objetivo			=	@Objetivo,
			Temario			=	@Temario,
			Precio				=	@Precio,
			NumeroHoras	=	@NumeroHoras,
			FechaInicio		=	@FechaInicio,
			FechaFin			=	@FechaFin,
			Estado				=	@Estado
			WHERE C_Curso = @C_Curso
	IF(@@ERROR <> 0 OR @@ROWCOUNT = 0)
		BEGIN
			PRINT 'Error al modificar curso'
			RETURN 21
		END
		
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_ModificarCurso 70,1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 'Activo'					-- �XITO	
EXECUTE usp_ModificarCurso null,1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- Curso NULL
EXECUTE usp_ModificarCurso ' ',1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1						-- Curso vac�o
EXECUTE usp_ModificarCurso 70,null, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1				-- M�dulo NULL
EXECUTE usp_ModificarCurso 70,' ', 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- M�dulo vac�o
EXECUTE usp_ModificarCurso 70, 1,null, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1				-- Categor�a NULL
EXECUTE usp_ModificarCurso 70, 1,' ', 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- Categor�a vac�a
EXECUTE usp_ModificarCurso 70, 1, 1, null, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1				-- Profesor NULL	
EXECUTE usp_ModificarCurso 70, 1, 1, ' ', 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- Profesor vac�o
EXECUTE usp_ModificarCurso 70, 1, 1, 1, null, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1				-- Horario NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, ' ', 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- Horario vac�o
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, NULL, 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1								-- Descripci�n NULL	
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, ' ', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1										-- Descripci�n vac�a
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', null, 500, 24, '05/11/2014', '12/12/2014', 1							-- Temario NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', null, 24, '05/11/2014', '12/12/2014', 1					-- Precio NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, null, '05/11/2014', '12/12/2014', 1					-- N�mero de horas NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, ' ', '05/11/2014', '12/12/2014', 1					-- N�mero de horas vac�o
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, null, '12/12/2014', 1									-- Fecha de inicio NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '12/12/2014', null, 1									-- Fecha de inicio vac�a
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', null				-- Estado NULL
EXECUTE usp_ModificarCurso 100, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- No existe curso
EXECUTE usp_ModificarCurso 70, 20, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- No existe m�dulo
EXECUTE usp_ModificarCurso 70, 1, 10, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- No existe categor�a
EXECUTE usp_ModificarCurso 70, 1, 1, 30, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- No existe profesor
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 30, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1					-- No existe horario
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 150, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1				-- No existe curso requisito
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 30, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', -500, 24, '05/11/2014', '12/12/2014', 1				-- Precio menor que cero
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 3, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, -2, '05/11/2014', '12/12/2014', 1					-- N�mero de horas menor que cero
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 3, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 0, '05/11/2014', '12/12/2014', 1						-- N�mero de horas igual a cero
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 3, 1, 'CursoPrueba3', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, '12/12/2014', '12/12/2014', 1		-- Fecha de inicio igual a fecha de fin
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para modificar Curso ----
/*
	Sin validaciones:
	Para usarlo en el GridView
*/
CREATE PROCEDURE usp_ModificarCursoGV
@C_Curso				INT,
@C_Modulo			INT,
@C_Categoria			INT,
@C_Profesor			INT,
@C_Horario			INT,
@C_CursoR				INT,
@Descripcion			VARCHAR(70),
@Requisitos			VARCHAR(250),
@Objetivo				VARCHAR(250),
@Temario				TEXT,
@Precio					DECIMAL(8,2),
@NumeroHoras		INT,
@FechaInicio			DATE,
@FechaFin				DATE,
@Estado					VARCHAR(10)
AS
--MODIFICAMOS CURSO
	UPDATE Curso
	SET	C_Modulo		=	@C_Modulo,
			C_Categoria	=	@C_Categoria,
			C_Profesor		=	@C_Categoria,
			C_Horario		=	@C_Horario,
			C_CursoR			=	@C_CursoR,
			Descripcion		=	@Descripcion,
			Requisitos		=	@Requisitos,
			Objetivo			=	@Objetivo,
			Temario			=	@Temario,
			Precio				=	@Precio,
			NumeroHoras	=	@NumeroHoras,
			FechaInicio		=	@FechaInicio,
			FechaFin			=	@FechaFin,
			Estado				=	@Estado
			WHERE C_Curso = @C_Curso
GO
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------





---- STORE PROCEDURE para eliminar Curso ----
/*
	Validar:
	01. El codigo de curso no sea NULL ni vac�o.
	02. El codigo de curso s� exista.
	03. El codigo de curso no sea llave for�nea de Matr�culaCurso
	04. El codigo de curso no sea llave for�nea de CursoR (misma tabla)
*/
CREATE PROCEDURE usp_EliminarCurso
@C_Curso	INT	=	NULL
AS
	IF(@C_Curso IS NULL OR LEN(@C_Curso) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de curso'
			RETURN 1
		END
	--------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Curso
							 WHERE C_Curso = @C_Curso)
		BEGIN
			PRINT 'El codigo de curso no existe'
			RETURN 2
		END 
	--------------------------------------------------
	IF EXISTS(SELECT 1 FROM MatriculaCurso
					WHERE C_Curso = @C_Curso)
		BEGIN
			PRINT 'EL curso es llave foranea en MatriculaCurso'
			RETURN 3
		END
	--------------------------------------------------
	IF EXISTS(SELECT 1 FROM Curso
					WHERE C_CursoR = @C_Curso)
		BEGIN
			PRINT 'EL curso es llave foranea en CursoR (misma tabla)'
			RETURN 4
		END
		
	-- ELIMINAMOS CURSO
	UPDATE Curso
	SET Estado = 'Inactivo'
	WHERE C_Curso = @C_Curso
	
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_EliminarCurso 30			-- �XITO
EXECUTE usp_EliminarCurso NULL		-- Curso NULL
EXECUTE usp_EliminarCurso ' '			-- Curso vac�o
EXECUTE usp_EliminarCurso 130		-- No existe curso
EXECUTE usp_EliminarCurso 1			-- Curso es llave for�nea de MatriculaCurso
EXECUTE usp_EliminarCurso 2			-- Curso es llave for�nea de CursoR (misma tabla)
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para eliminar Curso ----
/*
	Sin validaciones:
	Para usarlo en el GridView
*/
CREATE PROCEDURE usp_EliminarCursoGV
@C_Curso	INT
AS
	-- ELIMINAMOS CURSO
	UPDATE Curso
	SET Estado = 'Inactivo'
	WHERE C_Curso = @C_Curso
GO
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para listar Curso ----

CREATE PROCEDURE usp_ListarCurso
AS
	-- LISTAMOS CURSOS
	SELECT * FROM Curso
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_ListarCurso
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------



---- STORE PROCEDURE para buscar Curso por c�digo ----
/*
	Validar:
	01. El codigo de curso no sea NULL ni vac�o.
	02. El codigo de curso s� exista.
*/
CREATE PROCEDURE usp_BuscarCursoPorCodigo
@C_Curso	INT	=	NULL
AS
	IF(@C_Curso IS NULL OR LEN(@C_Curso) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de curso'
			RETURN 1
		END
	--------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Curso
							 WHERE C_Curso = @C_Curso)
		BEGIN
			PRINT 'El codigo de curso no existe'
			RETURN 2
		END 
		
	-- REALIZAMOS LA B�SQUEDA
	SELECT * FROM Curso WHERE C_Curso = @C_Curso
	
	RETURN 0
GO
	
-- C�DIGO DE PRUEBA
EXECUTE usp_BuscarCursoPorCodigo 1		-- �XITO
EXECUTE usp_BuscarCursoPorCodigo NULL		-- Curso NULL
EXECUTE usp_BuscarCursoPorCodigo ' '			-- Curso vac�o
EXECUTE usp_BuscarCursoPorCodigo 140		-- No existe curso
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------



---- STORE PROCEDURE para buscar M�dulo por c�digo ----
/*
	Validar:
	01. El codigo de m�dulo no sea NULL ni vac�o.
	02. El codigo de m�dulo s� exista.
*/
CREATE PROCEDURE usp_BuscarModuloPorCodigo
@C_Modulo	INT
AS
	IF(@C_Modulo IS NULL OR LEN(@C_Modulo) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de modulo'
			RETURN 1
		END
	--------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Modulo
							 WHERE C_Modulo = @C_Modulo)
		BEGIN
			PRINT 'El codigo de modulo no existe'
			RETURN 2
		END 
		
	-- REALIZAMOS LA B�SQUEDA
	SELECT * FROM Modulo WHERE C_Modulo = @C_Modulo
	
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_BuscarModuloPorCodigo 1				-- �XITO
EXECUTE usp_BuscarModuloPorCodigo NULL		-- M�dulo NULL
EXECUTE usp_BuscarModuloPorCodigo ' '			-- M�dulo vac�o
EXECUTE usp_BuscarModuloPorCodigo 140			-- No existe m�dulo
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para buscar Categor�a por c�digo ----
/*
	Validar:
	01. El codigo de categor�a no sea NULL ni vac�o.
	02. El codigo de categor�a s� exista.
*/
CREATE PROCEDURE usp_BuscarCategoriaPorCodigo
@C_Categoria		INT
AS
	IF(@C_Categoria IS NULL OR LEN(@C_Categoria) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de categoria'
			RETURN 1
		END
	--------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Categoria
							 WHERE C_Categoria = @C_Categoria)
		BEGIN
			PRINT 'El codigo de categoria no existe'
			RETURN 2
		END 
		
	-- REALIZAMOS LA B�SQUEDA
	SELECT * FROM Categoria WHERE C_Categoria = @C_Categoria
	
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_BuscarCategoriaPorCodigo 1				-- �XITO
EXECUTE usp_BuscarCategoriaPorCodigo NULL		-- Categor�a NULL
EXECUTE usp_BuscarCategoriaPorCodigo ' '				-- Categor�a vac�o
EXECUTE usp_BuscarCategoriaPorCodigo 140			-- No existe categor�a
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------



---- STORE PROCEDURE para buscar Profesor por c�digo ----
/*
	Validar:
	01. El codigo de profesor no sea NULL ni vac�o.
	02. El codigo de profesor s� exista.
*/
CREATE PROCEDURE usp_BuscarProfesorPorCodigo
@C_Profesor	INT
AS
	IF(@C_Profesor IS NULL OR LEN(@C_Profesor) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de profesor'
			RETURN 1
		END
	--------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Profesor
							 WHERE C_Profesor = @C_Profesor)
		BEGIN
			PRINT 'El codigo de profesor no existe'
			RETURN 2
		END 
		
	-- REALIZAMOS LA B�SQUEDA
	SELECT * FROM Profesor WHERE C_Profesor = @C_Profesor
	
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_BuscarProfesorPorCodigo 1				-- �XITO
EXECUTE usp_BuscarProfesorPorCodigo NULL			-- Profesor NULL
EXECUTE usp_BuscarProfesorPorCodigo ' '				-- Profesor vac�o
EXECUTE usp_BuscarProfesorPorCodigo 140			-- No existe profesor
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para buscar Horario por c�digo ----
/*
	Validar:
	01. El codigo de horario no sea NULL ni vac�o.
	02. El codigo de horario s� exista.
*/
CREATE PROCEDURE usp_BuscarHorarioPorCodigo
@C_Horario	INT
AS
	IF(@C_Horario IS NULL OR LEN(@C_Horario) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de horario'
			RETURN 1
		END
	--------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Horario
							 WHERE C_Horario = @C_Horario)
		BEGIN
			PRINT 'El codigo de horario no existe'
			RETURN 2
		END 
		
	-- REALIZAMOS LA B�SQUEDA
	SELECT * FROM Horario WHERE C_Horario = @C_Horario
	
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_BuscarHorarioPorCodigo 1					-- �XITO
EXECUTE usp_BuscarHorarioPorCodigo NULL			-- Horario NULL
EXECUTE usp_BuscarHorarioPorCodigo ' '				-- Horario vac�o
EXECUTE usp_BuscarHorarioPorCodigo 140				-- No existe horario
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




-- STORE PROCEDURE para agregar Alumno a un Curso--
/*
	Validar:
	01. El nombre de usuario no sea NULL ni vac�o.
	02. El apellido paterno no sea NULL ni vac�o.
	03. El apellido materno no sea NULL ni vac�o.
	04. El correo no sea NULL ni vac�o.
	05. El nick no sea NULL ni vac�o.
	06. La contrase�a no sea NULL ni vac�a.
	07. La confirmaci�n de contrase�a no sea NULL ni vac�o.
	08. El c�digo de curso no sea NULL ni vac�o.
	09. El c�digo de recibo no sea NULL. Se valida en la vista tambi�n.
	10. El correo no se repita.
	11. El nick de usuario no se repita.
	12. El c�digo de curso exista.
	13. Las contrase�as sean iguales.
*/
CREATE PROCEDURE usp_AgregarAlumnoCurso
@Nombre			VARCHAR(50),
@ApellidoP			VARCHAR(50),
@ApellidoM		VARCHAR(50),
@Sexo					CHAR(1),
@Ocupacion		VARCHAR(50),
@Email				VARCHAR(40),
@Nick					VARCHAR(25),
@Contrasena1	VARCHAR(40),
@Contrasena2	VARCHAR(40),
@C_Curso			INT,
@C_Recibo			INT
AS
	IF(@Nombre IS NULL OR LEN(@Nombre) = 0)
		BEGIN
			PRINT 'Debe ingresar nombre de usuario'
			RETURN 1
		END
	----------------------------------------------------
	IF(@ApellidoP IS NULL OR LEN(@ApellidoP) = 0)
		BEGIN
			PRINT 'Debe ingresar apellido paterno de usuario'
			RETURN 2
		END
	----------------------------------------------------
	IF(@ApellidoM IS NULL OR LEN(@ApellidoM) = 0)
		BEGIN
			PRINT 'Debe ingresar apellido materno de usuario'
			RETURN 3
		END
			----------------------------------------------------
	IF(@Email IS NULL OR LEN(@Email) = 0)
		BEGIN
			PRINT 'Debe ingresar correo de usuario'
			RETURN 4
		END
	----------------------------------------------------
	IF(@Nick	 IS NULL OR LEN(@Nick	) = 0)
		BEGIN
			PRINT 'Debe ingresar nick usuario'
			RETURN 5
		END
	----------------------------------------------------
	IF(@Contrasena1	 IS NULL OR LEN(@Contrasena1	) = 0)
		BEGIN
			PRINT 'Debe ingresar contrase�a'
			RETURN 6
		END
	----------------------------------------------------
		IF(@Contrasena2 IS NULL OR LEN(@Contrasena2	) = 0)
		BEGIN
			PRINT 'Debe ingresar contrase�a de confirmacion'
			RETURN 7
		END
	----------------------------------------------------
	IF(@C_Curso IS NULL OR LEN(@C_Curso 	) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de curso'
			RETURN 8
		END
	----------------------------------------------------
		IF(@C_Recibo IS NULL OR LEN(@C_Recibo 	) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de recibo'
			RETURN 9
		END
	----------------------------------------------------
	IF EXISTS(SELECT 1 FROM dbo.Usuario WHERE Email = @Email)
		BEGIN	
			PRINT 'El Email ya existe'
			RETURN 10
		END	
	----------------------------------------------------
	IF EXISTS(SELECT 1 FROM dbo.Usuario WHERE  Nick= @Nick)
		BEGIN	
			PRINT 'El Nick ya existe'
			RETURN 11
		END	
	----------------------------------------------------
	IF  NOT EXISTS(SELECT 1 FROM dbo.Curso WHERE  C_Curso = @C_Curso)
		BEGIN	
			PRINT 'El curso no existe'
			RETURN 12
		END	
	----------------------------------------------------
	IF  ( @Contrasena1 <>  @Contrasena2)
		BEGIN	
			PRINT 'Las contrasenas no coinciden'
			RETURN 13
		END	
		
		-- INSERTAMOS EN TABLA USUARIO
		INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
		VALUES(@ApellidoP, @ApellidoM, @Nombre, @Email, @Sexo, @Nick, dbo.Encriptar(@Contrasena1), 'Activo')
		IF(@@ERROR <> 0)
			BEGIN
				PRINT 'Error al insertar usuario'
				RETURN 14
			END
		
		-- INICIAR TRANSACCI�N
		BEGIN TRANSACTION
		
			-- INSERTAMOS EN TABLA ALUMNO
			DECLARE @C_Alumno	INT
			SELECT @C_Alumno =  COUNT(*) FROM Usuario
			INSERT INTO Alumno(C_Alumno, Ocupacion)
			VALUES((@C_Alumno), @Ocupacion)
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar alumno'
					ROLLBACK
					RETURN 15
				END
		
		
			-- INSERTAMOS EN TABLA MATRICULACURSO
			INSERT INTO MatriculaCurso( C_Alumno,  C_Curso, C_Recibo , FechaMatricula)
			VALUES( (@C_Alumno) , @C_Curso ,@C_Recibo , GETDATE())
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar MatriculaCurso'
					ROLLBACK
					RETURN 16
				END
		
	COMMIT TRANSACTION
	RETURN 0
GO 

--C�DIGO DE PRUEBA
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1				-- �XITO
EXECUTE usp_AgregarAlumnoCurso NULL, 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1					-- Nombre de usuario NULL
EXECUTE usp_AgregarAlumnoCurso ' ', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1							-- Nombre de usuario vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', NULL, 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1						-- Apellido paterno NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', ' ', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1								-- Apellido paterno vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', NULL, 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1					-- Apellido materno NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', ' ', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1							-- Apellido materno vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', NULL, 'RicardoDLC', '1234', '1234', 1, 1												-- Correo NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', ' ', 'RicardoDLC', '1234', '1234', 1, 1													-- Correo vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', NULL, '1234', '1234', 1, 1							-- Nick NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', ' ', '1234', '1234', 1, 1								-- Nick vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', NULL, '1234', 1, 1				-- Contrase�a NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', ' ', '1234', 1, 1					-- Contrase�a vac�a
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', NULL, 1, 1				-- Confirmaci�n contrase�a NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', ' ', 1, 1					-- Confirmaci�n contrase�a vac�a
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', NULL, 1		-- C�digo de curso NULL
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre..1405@hotmail.com', 'RicardoDLCM', '1234', '1234', ' ', 1		-- C�digo de curso vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, NULL		-- C�digo de recibo vac�o
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1				-- El correo ya existe
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'erre.-1405@hotmail.com', 'RicardoDLC', '1234', '1234', 1, 1			-- El nick ya existe
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'errei.1405@hotmail.com', 'RicardooDLC', '1234', '1234', 100, 1		-- El curso no existe
EXECUTE usp_AgregarAlumnoCurso 'Ricardo', 'De La Cruz', 'Magui�a', 'M', 'Estudiante', 'errei.1405@hotmail.com', 'RicardooDLC', '1234', '12345', 1, 1		-- Contrase�as no coinciden

SELECT * FROM Usuario
SELECT * FROM Alumno
SELECT * FROM MatriculaCurso
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




-- STORE PROCEDURE para agregar Alumno a un Modulo--
/*
	Validar:
	01. El nombre de usuario no sea NULL ni vac�o.
	02. El apellido paterno no sea NULL ni vac�o.
	03. El apellido materno no sea NULL ni vac�o.
	04. El correo no sea NULL ni vac�o.
	05. El nick no sea NULL ni vac�o.
	06. La contrase�a no sea NULL ni vac�a.
	07. La confirmaci�n de contrase�a no sea NULL ni vac�o.
	08. El c�digo de modulo no sea NULL ni vac�o.
	09. El c�digo de recibo no sea NULL. Se valida en la vista tambi�n.
	10. El correo no se repita.
	11. El nick de usuario no se repita.
	12. El c�digo de curso exista.
	13. Las contrase�as sean iguales.
*/

CREATE PROCEDURE usp_AgregarAlumnoModulo
@Nombre			VARCHAR(50),
@ApellidoP			VARCHAR(50),
@ApellidoM		VARCHAR(50),
@Sexo					CHAR(1),
@Ocupacion		VARCHAR(50),
@Email				VARCHAR(40),
@Nick					VARCHAR(25),
@Contrasena1	VARCHAR(40),
@Contrasena2	VARCHAR(40),
@C_Modulo			INT,
@C_Recibo			INT
AS
IF(@Nombre IS NULL OR LEN(@Nombre) = 0)
		BEGIN
			PRINT 'Debe ingresar nombre de usuario'
			RETURN 1
		END
	----------------------------------------------------
	IF(@ApellidoP IS NULL OR LEN(@ApellidoP) = 0)
		BEGIN
			PRINT 'Debe ingresar apellido paterno de usuario'
			RETURN 2
		END
	----------------------------------------------------
	IF(@ApellidoM IS NULL OR LEN(@ApellidoM) = 0)
		BEGIN
			PRINT 'Debe ingresar apellido materno de usuario'
			RETURN 3
		END
			----------------------------------------------------
	IF(@Email IS NULL OR LEN(@Email) = 0)
		BEGIN
			PRINT 'Debe ingresar correo de usuario'
			RETURN 4
		END
	----------------------------------------------------
	IF(@Nick	 IS NULL OR LEN(@Nick	) = 0)
		BEGIN
			PRINT 'Debe ingresar nick usuario'
			RETURN 5
		END
	----------------------------------------------------
	IF(@Contrasena1	 IS NULL OR LEN(@Contrasena1	) = 0)
		BEGIN
			PRINT 'Debe ingresar contrase�a'
			RETURN 6
		END
	----------------------------------------------------
		IF(@Contrasena2 IS NULL OR LEN(@Contrasena2	) = 0)
		BEGIN
			PRINT 'Debe ingresar contrase�a de confirmacion'
			RETURN 7
		END
	----------------------------------------------------
	IF(@C_Modulo IS NULL OR LEN(@C_Modulo) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de modulo'
			RETURN 8
		END
	----------------------------------------------------
		IF(@C_Recibo IS NULL OR LEN(@C_Recibo) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de recibo'
			RETURN 9
		END
	----------------------------------------------------
	IF EXISTS(SELECT 1 FROM dbo.Usuario WHERE Email = @Email)
		BEGIN	
			PRINT 'El Email ya existe'
			RETURN 10
		END	
	----------------------------------------------------
	IF EXISTS(SELECT 1 FROM dbo.Usuario WHERE  Nick= @Nick)
		BEGIN	
			PRINT 'El Nick ya existe'
			RETURN 11
		END	
    ----------------------------------------------------
	IF  NOT EXISTS(SELECT 1 FROM dbo.Modulo WHERE  C_Modulo = @C_Modulo)
		BEGIN	
			PRINT 'El modulo no existe'
			RETURN 12
		END	
	----------------------------------------------------
	IF  ( @Contrasena1 <>  @Contrasena2)
		BEGIN	
			PRINT 'Las contrasenas no coinciden'
			RETURN 13
		END	

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
		VALUES(@ApellidoP, @ApellidoM, @Nombre, @Email, @Sexo, @Nick, dbo.Encriptar(@Contrasena1), 'Activo')
		IF(@@ERROR <> 0)
			BEGIN
				PRINT 'Error al insertar usuario'
				RETURN 14
			END

-- INICIAR TRANSACCI�N
		BEGIN TRANSACTION
		
			-- INSERTAMOS EN TABLA ALUMNO
			DECLARE @C_Alumno	INT
			SELECT @C_Alumno =  COUNT(*) FROM Usuario
			INSERT INTO Alumno(C_Alumno, Ocupacion)
			VALUES((@C_Alumno), @Ocupacion)
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar alumno'
					ROLLBACK
					RETURN 15
				END
		
			-- INSERTAMOS EN TABLA MATRICULACURSO
			DECLARE @C_Categoria INT
			SELECT @C_Categoria = C_Categoria FROM Modulo WHERE C_Modulo = @C_Modulo
			INSERT INTO MatriculaModulo( C_Alumno,  C_Modulo, C_Categoria ,C_Recibo , FechaMatricula)
			VALUES( (@C_Alumno) , @C_Modulo ,@C_Categoria , @C_Recibo , GETDATE())
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar MatriculaCurso'
					ROLLBACK
					RETURN 16
				END
			
	COMMIT TRANSACTION
	RETURN 0
GO 

--C�DIGO DE PRUEBA
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@gmail.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 12 , 1
EXECUTE usp_AgregarAlumnoModulo NULL,  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@gmail.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo ' ',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego', NULL , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  ' ' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , NULL ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , ' ' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  NULL ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  ' ' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  NULL ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  ' ' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  NULL ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  ' ' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  NULL , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  ' ' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' ,  NULL , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'DiegaxoM' ,  '1234' ,  '1234' ,  ' ' , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 ,  NULL
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf9@outlook.com' ,  'Diegaxo9' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo' ,  '1234' ,  '1234' , 1 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo09' ,  '1234' ,  '1234' , 200 , 1
EXECUTE usp_AgregarAlumnoModulo 'Diego',  'Zavaleta' , 'Fernandez' ,  'M' ,  'Estudiante' ,  'diegozf@outlook.com' ,  'Diegaxo009' ,  '1234' ,  '12345' , 1 , 1

SELECT * FROM Usuario
SELECT * FROM alumno
SELECT * FROM MatriculaModulo
----------------------------------------------------------------
----------------------------------------------------------------






-- STORE PROCEDURE para agregar un administrador --
CREATE PROCEDURE usp_AgregarAdministrador
@Nombre			    VARCHAR(50),
@ApellidoP			VARCHAR(50),
@ApellidoM		    VARCHAR(50),
@Sexo			    CHAR(1),
@C_Trabajador       INT ,
@Email				VARCHAR(40),
@Nick			    VARCHAR(25),
@Contrasena1	    VARCHAR(40),
@Contrasena2	    VARCHAR(40)
AS

IF(@Nombre IS NULL OR LEN(@Nombre) = 0)
		BEGIN
			PRINT 'Debe ingresar nombre de usuario'
			RETURN 1
		END
	----------------------------------------------------
	IF(@ApellidoP IS NULL OR LEN(@ApellidoP) = 0)
		BEGIN
			PRINT 'Debe ingresar apellido paterno de usuario'
			RETURN 2
		END
	----------------------------------------------------
	IF(@ApellidoM IS NULL OR LEN(@ApellidoM) = 0)
		BEGIN
			PRINT 'Debe ingresar apellido materno de usuario'
			RETURN 3
		END
   ----------------------------------------------------
	IF(@C_Trabajador IS NULL OR LEN(@C_Trabajador) = 0)
		BEGIN
			PRINT 'Debe ingresar codigo de trabajador'
			RETURN 4
		END
		----------------------------------------------------
	IF(@Email IS NULL OR LEN(@Email) = 0)
		BEGIN
			PRINT 'Debe ingresar correo de usuario'
			RETURN 5
		END
	----------------------------------------------------
	IF(@Nick	 IS NULL OR LEN(@Nick	) = 0)
		BEGIN
			PRINT 'Debe ingresar nick usuario'
			RETURN 6
		END
	----------------------------------------------------
	IF(@Contrasena1	 IS NULL OR LEN(@Contrasena1	) = 0)
		BEGIN
			PRINT 'Debe ingresar contrase�a'
			RETURN 7
		END
	----------------------------------------------------
	IF(@Contrasena2 IS NULL OR LEN(@Contrasena2	) = 0)
		BEGIN
			PRINT 'Debe ingresar contrase�a de confirmacion'
			RETURN 8
		END
	----------------------------------------------------
	IF EXISTS(SELECT 1 FROM dbo.Usuario WHERE Email = @Email)
		BEGIN	
			PRINT 'El Email ya existe'
			RETURN 9
		END	
	----------------------------------------------------
	IF EXISTS(SELECT 1 FROM dbo.Usuario WHERE  Nick= @Nick)
		BEGIN	
			PRINT 'El Nick ya existe'
			RETURN 10
		END	
    ----------------------------------------------------
    IF EXISTS(SELECT 1 FROM dbo.Administrador WHERE  @C_Trabajador= C_Trabajador)
		BEGIN	
			PRINT 'El codigo de trabajador ya existe'
			RETURN 11
		END	
    ----------------------------------------------------
    IF  ( @Contrasena1 <>  @Contrasena2)
		BEGIN	
			PRINT 'Las contrasenas no coinciden'
			RETURN 12
		END	
    ----------------------------------------------------

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
	   VALUES    (@ApellidoP, @ApellidoM, @Nombre, @Email, @Sexo, @Nick, dbo.Encriptar(@Contrasena1), 'Activo')
	   
BEGIN TRANSACTION

DECLARE @C_Administrador INT
			SELECT @C_Administrador =  COUNT(*) FROM Usuario
			INSERT INTO Administrador(C_Administrador, C_Trabajador)
			VALUES((@C_Administrador), @C_Trabajador)
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar Administrador'
					ROLLBACK
					RETURN 13
				END

COMMIT TRANSACTION
	RETURN 0
GO 

-- C�DIGO DE PRUEBA
EXECUTE usp_AgregarAdministrador 'Laura','Solano' , 'Diaz', 'F' , '14' , 'laura_19@gmail.com', 'Laura_19', '555' , '555' --EXITO
EXECUTE usp_AgregarAdministrador NULL, 'Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com', 'Romi789', '123' , '123'--Debe ingresar nombre de usuario
EXECUTE usp_AgregarAdministrador 'Claudia', NULL, 'Guzman' , 'F' , '15' , 'romi1234@gmail.com', 'Romi789', '123' , '123'--Debe ingresar apellido paterno de usuario
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', NULL , 'F' , '15' , 'romi1234@gmail.com', 'Romi789', '1234' , '1234'--Debe ingresar apellido materno de usuario
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , ' ' , 'romi1234@gmail.com', 'Romi789', '1234' , '1234'--Debe ingresar codigo de trabajador
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , NULL , 'Romi789', '1234' , '1234'--Debe ingresar correo de usuario
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com' , null , '1234' , '1234'--Debe ingresar nick de usuario
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com' , 'Romi789' , null , '1234'--Debe ingresar contrase�a
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com' , 'Romi789' , '1234' , null --Debe ingresar contrase�a de confirmacion
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'laura_19@gmail.com' , 'Romi789' , '1234' , '1234' --El Email ya existe
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com' , 'Laura_19' , '1234' , '1234' --El Nick ya existe
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '14' , 'romi1234@gmail.com' , 'Romi789' , '1234' , '1234' --El codigo de trabajador ya existe
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com' , 'Romi789' , '1234' , '1235' --Las contrasenas no coinciden
EXECUTE usp_AgregarAdministrador 'Claudia','Valenzuela', 'Guzman' , 'F' , '15' , 'romi1234@gmail.com' , 'Romi789' , '1234' , '1234' --EXITO2
----------------------------------------------------------------
----------------------------------------------------------------






-- STORE PROCEDURE para matricular a un Curso--
/*
	Validar:
	01. El c�digo de alumno no sea NULL ni vac�o.
	02. El c�digo de curso no sea NULL ni vac�o.
	03. El c�digo de alumno exista.
	04. El c�digo de curso exista.
*/
CREATE PROCEDURE usp_MatricularCurso
@C_Alumno	INT,
@C_Curso		INT
AS
	IF(@C_Alumno IS NULL OR LEN(@C_Alumno)=0)
		BEGIN
			PRINT 'Debe ingresar codigo de alumno'
			RETURN 1
		END
	IF(@C_Curso IS NULL OR LEN(@C_Curso)=0)
		BEGIN
			PRINT 'Debe ingresar codigo de curso'
			RETURN 2
		END
	IF NOT EXISTS(SELECT 1 FROM Alumno WHERE C_Alumno = @C_Alumno)
		BEGIN
			PRINT 'El codigo de alumno no existe'
			RETURN 3
		END
	IF NOT EXISTS(SELECT 1 FROM Curso WHERE C_Curso = @C_Curso)
		BEGIN
			PRINT 'El codigo de curso no existe'
			RETURN 4
		END
	-----------------------------------------------------------------------------------
	
	-- Obtenemos el valor del �ltimo c�digo de recibo
	DECLARE @C_Recibo INT
	SELECT @C_Recibo = (MAX(C_Recibo)+1) FROM MatriculaCurso
	
	-- Matriculamos al curso
	INSERT INTO MatriculaCurso(C_Alumno, C_Curso, C_Recibo, FechaMatricula)
	VALUES (@C_Alumno, @C_Curso, @C_Recibo, GETDATE())
	IF(@@ERROR <> 0)
		BEGIN
			PRINT 'Error al insertar'
			RETURN 5
		END
	
	PRINT 'Se matriculo al curso'
	RETURN 0
GO

-- C�DIGO DE PRUEBA
EXECUTE usp_MatricularCurso 14, 1			-- �XITO!
EXECUTE usp_MatricularCurso NULL, 1		-- Alumno NULL
EXECUTE usp_MatricularCurso ' ', 1			-- Alumno vac�o	
EXECUTE usp_MatricularCurso 14, NULL	-- Curso NULL
EXECUTE usp_MatricularCurso 14, ' '			-- Curso vac�o
EXECUTE usp_MatricularCurso 144, 1		-- Alumno no existe
EXECUTE usp_MatricularCurso 14, 1000	-- Curso no existe	
----------------------------------------------------------------
----------------------------------------------------------------




-- STORE PROCEDURE para validar el curso prerequisito --
CREATE PROCEDURE usp_ValidarCursoRequisito
@C_Alumno	INT,
@C_Curso		INT
AS
	-- Validamos que el alumno est� matriculado por m�dulo
	IF EXISTS (SELECT 1 FROM MatriculaModulo 
					 WHERE C_Alumno = @C_Alumno)
		BEGIN
			DECLARE @C_Modulo	INT
			-- Obtenemos el c�digo del m�dulo matriculado
			SELECT @C_Modulo = C_Modulo FROM MatriculaModulo
												  WHERE C_Alumno = @C_Alumno
			-- Validamos que el curso pertenezca al m�dulo matriculado
			IF EXISTS (SELECT 1 FROM Curso 
							 WHERE C_Curso = @C_Curso
							 AND C_Modulo = @C_Modulo)
				BEGIN
					DECLARE @C_CursoR INT
					-- Obtenemos el c�digo del curso prerequisito
					SELECT @C_CursoR = C_CursoR FROM Curso 
					WHERE C_Curso = @C_Curso
					IF(@C_CursoR IS NULL)
						BEGIN
							PRINT 'No hay ningun requisito'
							RETURN 1
						END
					IF EXISTS (SELECT 1 FROM MatriculaCurso
									 WHERE C_Alumno = @C_Alumno
									 AND C_Curso = @C_CursoR)
						BEGIN
							PRINT 'Si puede matricularse, porque ya llevo el curso prerequisito'
							RETURN 2
							END  
					ELSE
						BEGIN
							PRINT 'No puede matricularse. Debe llevar el curso prerequisito'
							RETURN 3
						END
				END
				ELSE
					BEGIN
						PRINT 'El curso no pertenece al modulo'
						RETURN 4
					END
		END
	ELSE
		BEGIN
			PRINT 'El alumno no esta matriculado por modulo'
			RETURN 5
		END
GO


-- �Qu� alumnos est�n matriculados por m�dulo?
SELECT C_Alumno, C_Modulo
FROM MatriculaModulo

-- Probamos
EXECUTE usp_ValidarCursoRequisito 14, 1	-- S� est� matriculado
EXECUTE usp_ValidarCursoRequisito 1, 1		-- No est� matriculado



-- Despu�s de validar que el alumno est� matriculado, vemos qu� cursos pertenecen al m�dulo
SELECT C_Curso, M.C_Modulo
FROM Curso C JOIN Modulo M
ON C.C_Modulo = M.C_Modulo
JOIN MatriculaModulo MM
ON M.C_Modulo = MM.C_Modulo
JOIN Alumno A
ON MM.C_Alumno = A.C_Alumno
WHERE A.C_Alumno = 14

-- Probamos
EXECUTE usp_ValidarCursoRequisito 14, 50		-- S� pertenece al m�dulo
EXECUTE usp_ValidarCursoRequisito 14, 1		-- No pertenece al m�dulo



-- Despu�s de validar que el curso pertenece al m�dulo, vemos que cursos ha llevado ese alumno
SELECT C.C_Curso, C.Descripcion
FROM Curso C JOIN MatriculaCurso MC
ON C.C_Curso = MC.C_Curso
JOIN Alumno A
ON MC.C_Alumno = A.C_Alumno
WHERE A.C_Alumno = 14



-- No est� matriculado en ning�n curso, entonces lo matriculamos
INSERT INTO MatriculaCurso(C_Alumno, C_Curso, C_Recibo, FechaMatricula)
VALUES (14, 50, 250, GETDATE())
INSERT INTO MatriculaCurso(C_Alumno, C_Curso, C_Recibo, FechaMatricula)
VALUES (14, 51, 251, GETDATE())
INSERT INTO MatriculaCurso(C_Alumno, C_Curso, C_Recibo, FechaMatricula)
VALUES (14, 53, 252, GETDATE())



-- Volvemos a comprobar qu� cursos ha llevado ese alumno
SELECT C.C_Curso, C.Descripcion
FROM Curso C JOIN MatriculaCurso MC
ON C.C_Curso = MC.C_Curso
JOIN Alumno A
ON MC.C_Alumno = A.C_Alumno
WHERE A.C_Alumno = 14




/* Ahora, hay tres posibilidades
	1. Que ese curso no tenga curso prerequisito
	2. Que el curso si tenga curso prerequisito y el alumno lo haya llevado
	3. Que el curso si tenga curso prerequisito y el alumno no lo haya llevado
*/
SELECT C.C_Curso, C.C_CursoR, M.C_Modulo
FROM Curso C JOIN Modulo M
ON C.C_Modulo = M.C_Modulo
JOIN MatriculaModulo MM
ON M.C_Modulo = MM.C_Modulo
JOIN Alumno A
ON MM.C_Alumno = A.C_Alumno
WHERE A.C_Alumno = 14

-- Probamos
EXECUTE usp_ValidarCursoRequisito 14, 50		-- No hay curso prerequisito
EXECUTE usp_ValidarCursoRequisito 14, 53		-- Si hay curso prerequisito. El alumno no lo llev�
EXECUTE usp_ValidarCursoRequisito 14, 51		-- �XITO! Si hay curso prerequisito. El alumno s� lo llev�
----------------------------------------------------------------
----------------------------------------------------------------




-- STORE PROCEDURE para obtener c�digo de alumno --
CREATE PROCEDURE usp_ObtenerCodigoAlumno
@Nick	VARCHAR(25) = NULL
AS
	DECLARE @C_Alumno INT
	SELECT @C_Alumno = C_Usuario FROM Usuario WHERE Nick = @Nick
	PRINT @C_Alumno
	RETURN @C_Alumno
GO

EXECUTE usp_ObtenerCodigoAlumno 'Pati'
----------------------------------------------------------------
----------------------------------------------------------------




-- STORE PROCEDURE para mostrar cursos inscritos por alumno --
CREATE PROCEDURE usp_MostrarCursosInscritos
@C_Alumno	INT
AS
	SELECT C.C_Curso AS 'Codigo',
				 Descripcion AS 'Nombre',
				 FechaInicio AS 'Fecha de Inicio',
				 FechaFin AS 'Fecha de Fin'  
	FROM Alumno A JOIN MatriculaCurso MC 
	ON A.C_Alumno = MC.C_Alumno
	JOIN Curso C
	ON MC.C_Curso = C.C_Curso
	WHERE MC.C_Alumno = @C_Alumno 
GO

EXECUTE usp_MostrarCursosInscritos 3
----------------------------------------------------------------
----------------------------------------------------------------




-- STORE PROCEDURE para mostrar cursos NO inscritos por alumno --
CREATE PROCEDURE usp_MostrarCursosNoInscritos
@C_Alumno	INT
AS
	SELECT C_Curso AS 'Codigo',
				 Descripcion AS 'Nombre',
				 FechaInicio AS 'Fecha de Inicio',
				 FechaFin AS 'Fecha de Fin'  
	FROM Curso 
	WHERE C_Curso NOT IN(	SELECT C.C_Curso
												FROM Alumno A JOIN MatriculaCurso MC 
												ON A.C_Alumno = MC.C_Alumno
												JOIN Curso C
												ON MC.C_Curso = C.C_Curso
												WHERE MC.C_Alumno = @C_Alumno )
GO

EXECUTE usp_MostrarCursosNoInscritos 3




	
	
	
	

	SELECT Nick, dbo.Desencriptar(Contrasena) 
	FROM Alumno A JOIN Usuario U
	ON A.C_Alumno = U.C_Usuario
	WHERE C_Alumno = 3