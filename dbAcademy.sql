
----> SISTEMA DE MATRÍCULA CURSOS ONLINE <----

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
ALTER TABLE Alumno
	ADD CONSTRAINT CHK_Ocupacion
	CHECK (Ocupacion LIKE 'Estudiante' OR
				  Ocupacion LIKE 'Ingeniero' OR
				  Ocupacion LIKE 'Profesor' OR
				  Ocupacion LIKE 'Diseñador' OR
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
	C_Modulo			INT						NOT NULL,
	C_Categoria		INT						NOT NULL,
	C_Profesor			INT						NOT NULL,
	C_Horario			INT						NOT NULL,
	C_CursoR				INT						NOT NULL,
	Descripcion			VARCHAR(70)		NOT NULL,
	Requisitos			VARCHAR(250)	NULL,
	Objetivo				VARCHAR(250)	NULL,
	Temario				TEXT					NOT NULL,
	Precio					DECIMAL(8,2)		NOT NULL,
	NumeroHoras		INT						NOT NULL,
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
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------




-- INSERTAMOS DATOS INICIALES
-- USUARIO
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Flores', 'Quispe', 'Carlos', 'Car.12@hotmail.com', 'M', 'Carlos33', dbo.Encriptar('asdf'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Sanchez', 'Rodriguez', 'Fernando', 'Fernando_123@hotmail.com', 'M', 'Fer', dbo.Encriptar('1234'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('García', 'Rojas', 'Patricia', 'Patricia.09@hotmail.com', 'F', 'Pati', dbo.Encriptar('abcd'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Gonzales', 'Chavez', 'Milagros', 'Mili22@hotmail.com', 'F', 'MilagrosGC', dbo.Encriptar('4444'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Lopez', 'Diaz', 'Marcos', 'Marcos.33@hotmail.com', 'M', 'Marcos3', dbo.Encriptar('lkjh'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Ramos', 'Mendoza', 'Martín', 'Martin.77@hotmail.com', 'M', 'Martín34', dbo.Encriptar('9876'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Ramirez', 'Torres', 'William', 'William22@hotmail.com', 'M', 'Will', dbo.Encriptar('vbnm'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Castillo', 'Espinoza', 'Daniel', 'Daniel.55@hotmail.com', 'M', 'Dan23', dbo.Encriptar('ghjk'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Vasquez', 'Gutierrez', 'David', 'David345@hotmail.com', 'M', 'David123', dbo.Encriptar('1234'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Huaman', 'Perez', 'Javier', 'Javier33@hotmail.com', 'M', 'Javier33', dbo.Encriptar('vfrt'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Vargas', 'Fernandez', 'Victor', 'Victor67@hotmail.com', 'M', 'Victor45', dbo.Encriptar('tgbn'), 1)
INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Mamani', 'Castro', 'Carmen', 'Carmen.345@hotmail.com', 'F', 'CarmenT', dbo.Encriptar('6789'), 1)




-- ADMINISTRADOR
INSERT INTO Administrador(C_Administrador,C_Trabajador)
VALUES(1,1)
INSERT INTO Administrador(C_Administrador,C_Trabajador)
VALUES(2,2)



-- ALUMNO
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(3,'Estudiante')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(4,'Ingeniero')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(5,'Profesor')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(6,'Diseñador')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(7,'Otros')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(8,'Estudiante')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(9,'Ingeniero')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(10,'Profesor')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(11,'Diseñador')
INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(12,'Otros')



-- CATEGORÍA
INSERT INTO dbo.Categoria(Descripcion)VALUES('Computación')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Base de Datos')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Programación')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Diseño')



-- MÓDULO
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,1400,'Especialista en ofimática',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,2400,'Técnico en Computación',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,800,'Especialista Excel Empresarial ',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(2,800,'Data Base Administrador',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(2,600,'Administración de BD en Oracle',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'Programación Estructurada',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,1000,'Visual Basic Developer',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,800,'NET Developer',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,800,'NET C#',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'PHP Developer',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'Java Developer',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,800,'Android Developer',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,600,'AutoCAD 2014',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,1200,'Diseño Gráfico Digital',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,800,'Web Designer Professional',1)
INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(5,600,'Especialista en Linux',1)




-- PROFESOR
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(3,'Ruiz', 'Romero', 'Elizabeth','4565478','Eli5@hotmail.com',1)
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(4,'Martinez', 'Perez', 'Eduardo','7565478','Eduardo@hotmail.com',1)
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(5,'Salazar', 'Lopez', 'Jesús','4385756','Jesús@hotmail.com',1)
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(6,'Leon', 'Huaman', 'Enrique','4253698','Enrique@hotmail.com',1)
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(7,'Reyes', 'Ramirez', 'Natalia','4758963','Natalia@hotmail.com',1)
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(8,'Huaman', 'Chavez', 'Laura','7583698','Laura@hotmail.com',1)
INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(9,'Ramos', 'Rojas', 'Tamara','4753698','Tamara6@hotmail.com',1)




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




-- CURSO
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,null,'Microsoft Windows 8','Ninguno','Personalizar el computador 
Utilizar las herramientas 
Trabajar con varios Programas simultáneamente y Administrar archivos y carpetas 
Conocer la Funciones básicas de las Aplicaciones','Las partes de su Sistema Informático
Explorando Windows 8
Gestionar sus cuentas de usuario
Navegando por ventanas y carpetas
Comprender los archivos y carpetas
Conceptos básicos de Internet
Trabajando Internet Explorer 10
Personalizar Windows 8
Instalar y Configurar dispositivos
Trabajar con programas de Windows 8
Trabajar con entornos digitales
Optimizar el sistema
',200,24,'2014-12-01','2014-12-17',1)
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,1,'Microsoft Word 2013','Conocimientos básicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
','Conocer la nueva interfaz de Word 2013, las nuevas características y sobre todo el uso de las nuevas tecnologías automáticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.','Interfaz de Word 2013
Un nuevo formato de archivos
Definición de párrafos
Formato
Insertar Objetos
Tablas e Imágenes
Combinar Correspondencia',200,24,'2014-12-19','2015-01-05',0)
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,2,'Microsoft Excel Básico 2013','Conocimientos de Windows','Conocer los conceptos básicos.
Resolver problemas específicos a través de la realización de cálculos sencillos utilizando Microsoft Excel 2013.
Organizar información mediante cuadros, tablas dinámicas y gráficos.','Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones básicas en Excel
Tareas básicas en el Libro
Trabajar con hojas de cálculo
Visualización de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
Cómo mejorar la apariencia aplicando formatos
Inserción y edición de fórmulas
Funciones predefinidas de Excel
Tablas
Cómo presentar visualmente la información
Insertar Ilustraciones',200,24,'2015-01-07','2015-01-23',0)
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,3,'Microsoft Excel Intermedio 2013','Conocimientos de Windows','Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear fórmulas.
Realizar operaciones con una base de datos.','Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gráficos dinámicos
Herramientas de Colaboración y Seguridad',200,24,'2015-01-26','2015-02-11',0)
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,4,'Microsoft Power Point 2013','Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos básicos del MS Windows, del manejo del teclado y del ratón.','Difundir ideas, proyectos o información, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gráficos, animaciones y contenido multimedia.','Introducción
Creación de una presentación Básica
Creación de una presentación desde una plantilla, tema o presentación existente
Formato y edición de textos.
Formato y distribución de diapositivas
Colocar imágenes en una diapositiva.
Añadir sonido y video.
Transición de Diapositivas y Efectos de presentación.
Hipervínculos
Edición del Video usando el Windows Movie Maker
Formatos de una presentación',200,24,'2014-02-13','2014-03-02',0)
INSERT INTO dbo.Curso 
VALUES(1,1,3,3,5,'Microsoft Access 2013','Windows a nivel usuario.','Identificar la estructura de una base de datos y su configuración.
Desarrollar una aplicación bajo MS Access que organice y gestione información.','Conceptos básicos sobre bases de datos
Bases de datos relacionales
Posibilidades de las bases de datos
Microsoft Access
Definición y almacenamiento de datos
Manipulación y control de datos
Desarrollo de una aplicación en Access
',200,24,'2015-03-04','2015-03-20',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,null,'Microsoft  Windows 8 ','Ninguno','Personalizar el computador 
Utilizar las herramientas 
Trabajar con varios Programas simultáneamente y Administrar archivos y carpetas 
Conocer la Funciones básicas de las Aplicaciones','Las partes de su Sistema Informático
Explorando Windows 8
Gestionar sus cuentas de usuario
Navegando por ventanas y carpetas
Comprender los archivos y carpetas
Conceptos básicos de Internet
Trabajando Internet Explorer 10
Personalizar Windows 8
Instalar y Configurar dispositivos
Trabajar con programas de Windows 8
Trabajar con entornos digitales
Optimizar el sistema
',200,24,'2014-12-01','2014-12-17',1)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,7,'Microsoft  Word 2013','Conocimientos básicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
','Conocer la nueva interfaz de Word 2013, las nuevas características y sobre todo el uso de las nuevas tecnologías automáticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.','Interfaz de Word 2013
Un nuevo formato de archivos
Definición de párrafos
Formato
Insertar Objetos
Tablas e Imágenes
Combinar Correspondencia',200,24,'2014-12-19','2015-01-05',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,8,'Microsoft Excel  Básico 2013','Conocimientos de Windows','Conocer los conceptos básicos.
Resolver problemas específicos a través de la realización de cálculos sencillos utilizando Microsoft Excel 2013.
Organizar información mediante cuadros, tablas dinámicas y gráficos.','Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones básicas en Excel
Tareas básicas en el Libro
Trabajar con hojas de cálculo
Visualización de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
Cómo mejorar la apariencia aplicando formatos
Inserción y edición de fórmulas
Funciones predefinidas de Excel
Tablas
Cómo presentar visualmente la información
Insertar Ilustraciones',200,24,'2015-01-07','2015-01-23',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,9,'Microsoft Excel  Intermedio 2013','Conocimientos de Windows','Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear fórmulas.
Realizar operaciones con una base de datos.','Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gráficos dinámicos
Herramientas de Colaboración y Seguridad',200,24,'2015-01-26','2015-02-11',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,10,'Microsoft Power Point  2013','Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos básicos del MS Windows, del manejo del teclado y del ratón.','Difundir ideas, proyectos o información, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gráficos, animaciones y contenido multimedia.','Introducción
Creación de una presentación Básica
Creación de una presentación desde una plantilla, tema o presentación existente
Formato y edición de textos.
Formato y distribución de diapositivas
Colocar imágenes en una diapositiva.
Añadir sonido y video.
Transición de Diapositivas y Efectos de presentación.
Hipervínculos
Edición del Video usando el Windows Movie Maker
Formatos de una presentación',200,24,'2014-02-13','2014-03-02',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,11,'Microsoft Access  2013','Windows a nivel usuario.','Identificar la estructura de una base de datos y su configuración.
Desarrollar una aplicación bajo MS Access que organice y gestione información.','Conceptos básicos sobre bases de datos
Bases de datos relacionales
Posibilidades de las bases de datos
Microsoft Access
Definición y almacenamiento de datos
Manipulación y control de datos
Desarrollo de una aplicación en Access
',200,24,'2015-03-04','2015-03-20',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,12,'Gestión de Redes Sociales - Web 2.0','Nociones básicas de marketing o haber trabajo en áreas similares. Es recomendable poder leer en inglés ya que las últimas publicaciones sobre este tema no están traducidas.
','Interpretar planificaciones y gestionar programas de marketing 2.0 en los medios sociales en Internet. Crear estrategias, cronogramas, medir resultados y restablecer acciones necesarias para el logro de objetivos.','Marketing en la web. manejo de la reputación online.
Actitudes y aptitudes de un Community Manager. Reglas de la conversación 2.0. Compendio de herramientas disponibles: Contenidos multimedia. Publicación de información en sitios web y en blogs. Socialización. Redes sociales. Casos de estudio.
Cómo armar un plan de presencia en medios sociales. Resumen ejecutivo. Análisis inicial del mercado y la dinámica organizacional. Evaluación de las oportunidades.
Objetivos específicos. Estrategias y herramientas. Análisis de la inversión y resultados esperados. Recursos.
Taller: Gestión de aplicaciones
Taller de herramientas de medición: Google Analytics, Google Insights, Google Alerts. Estadísticas de Facbook. Herramientas de medición de Twitter.',200,24,'2015-03-04','2015-03-20',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,13,'Adobe Dreamweaver CS6 - Designer','Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Institución','Gracias a este curso sabrá organizar un sitio web y conocerá la utilidad de crear las páginas dentro de éste desde el principio; configurar las propiedades de las páginas; insertar plug-ins y controles ActiveX, applets de Java, elementos de interfaz','Aspectos básicos del programa
Creación de un estilo de Clase
Vínculos o hipervínculos de documentos
Insertar Imágenes
Diseño de paginas
Pagina de marcos
Creación de Plantillas',200,24,'2015-03-23','2015-04-08',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,14,'CorelDRAW X6 - Designer','La actual o una versión anterior de CorelDraw X5
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista','El alumno comprenda los fundamentos y criterios básicos de la Preprensea
digital, elaborando diseños publicitarios de manera eficiente y efectiva, para que queden','En entorno de diseño
Configurar el documento de CorelDraw X6
Herramientas de formas básicas
Herramientas y comandos para organizar los objetos
Usar colores 
Herramienta texto 
Herramienta Bezier 
Diseño de un Recibo por honorarios
Herramienta Bezier (curvas)
Rellano Uniforme
Herramienta Mezcla Interactiva
Herramienta Silueta Interactiva',200,24,'2015-03-10','2015-04-27',0)
INSERT INTO dbo.Curso 
VALUES(2,1,3,3,15,'Ensambleje de PC','Ninguno','Comprender el funcionamiento de una computadora y sus periféricos.
Reconocer y describir las especificaciones técnicas de las partes de una computadora.
Seleccionar el hardware apropiado para una PC.','Partes de una PC.
El Gabinete
 La Placa Base
Procesador y Memoria
 Medios de Almacenamiento
Tarjetas de Expansión',200,24,'2015-04-29','2015-05-15',0)
INSERT INTO dbo.Curso 
VALUES(3,1,5,4,null,'Microsoft  Excel  Básico 2013','Conocimientos de Windows','Conocer los conceptos básicos.
Resolver problemas específicos a través de la realización de cálculos sencillos utilizando Microsoft Excel 2013.
Organizar información mediante cuadros, tablas dinámicas y gráficos.','Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones básicas en Excel
Tareas básicas en el Libro
Trabajar con hojas de cálculo
Visualización de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
Cómo mejorar la apariencia aplicando formatos
Inserción y edición de fórmulas
Funciones predefinidas de Excel
Tablas
Cómo presentar visualmente la información
Insertar Ilustraciones',200,24,'2014-12-02','2014-12-25',1)
INSERT INTO dbo.Curso 
VALUES(3,1,5,4,17,'Microsoft  Excel  Intermedio 2013','Conocimientos de Windows','Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear fórmulas.
Realizar operaciones con una base de datos.','Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gráficos dinámicos
Herramientas de Colaboración y Seguridad',200,24,'2014-12-30','2015-01-15',0)
INSERT INTO dbo.Curso 
VALUES(3,1,5,4,18,'Microsoft Excel Producción y Administración','Tener conocimientos previos de Excel a nivel intermedio (Excel I y II).','Aplicar las funciones y las herramientas de análisis estadístico. 
Desarrollar análisis con bases de datos externas. Calculo de costos y diagramas de producción. Diagrama de Pareto Resolver casos de simulación de eventos.','Análisis Estadístico de datos
Detección de errores en el ingreso de datos
Obtener información de Bases de datos Externas
Análisis (para cálculos de costos, y de producción)
Control de Existencia en Almacenes
Detección de stock mínimo
Consolidación de existencias en almacenes múltiples
',200,24,'2015-01-27','2015-02-19',0)
INSERT INTO dbo.Curso 
VALUES(3,1,5,4,19,' Microsoft Excel Financiero','Conocimiento intermedio del Excel.','La determinación de intereses simples y compuestos. 
El calculo de tasas efectivas asi como conversiones entre las mismas. 
El calculo del descuento bancario compuesto y determinación del costo efectivo del crédito.','Interés simple
Interés compuesto
Tasa de interés
Cronograma de pagos
Descuentos
Factores financieros – anualidades y rentas
Depreciación
Evaluación de proyectos
',200,24,'2015-02-24','2014-03-19',0)
INSERT INTO dbo.Curso 
VALUES(4,2,6,10,null,'Modelamiento de Datos','Conocimiento básico de algún lenguaje de programación Vidual y/o técnicas de
programación como estructura de datos.','Aprender los beneficios de la utilización de UML en el desarrollo de software.
Identificar los beneficios del análisis, diseño y programación orientada a objetos..
Aprender a modelar sistemas con UML.','Introducción al lenguaje de modelado: UML
Definir el comportamiento del sistema
Desarrollo de casos de uso
Construyendo escenarios
Clases y Objetos
Diagrama de clases
Clase entidad y modelo E/R
Tercera forma normal
Cuarta forma normal',200,12,'2014-12-06','2014-12-27',1)
INSERT INTO dbo.Curso 
VALUES(4,2,6,10,21,'Ms SQL Server I - Implementación','Conocimientos de Modelamiento de Datos','Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integración de herramientas de SQL Server 2012','Concepto de base de datos relacional. Sistemas administradores de bases de datos.
Los tipos de datos del sistema que ofrece SQL Server 2012
Creación y optimización de índices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones
Programación en SQL Server 2012
Implementación de desencadenadores',200,12,'2015-01-03','2015-01-24',0)
INSERT INTO dbo.Curso 
VALUES(4,2,6,10,22,'Ms SQL Server III - Administración','Modelamiento de Datos
SQL Server 2012 – Implementación','Conocer y aplicar las herramientas esenciales para administrar las base de datos y los servidores que trabajan bajo SQL Server 2012','Instalación y configuración del SQL Server 2012
Administración de la Base de Datos y Archivos
Planificación de una Estrategia de Backups
Administración de la Seguridad
Transferencia de Datos
Automatización de Tareas Administrativas
Monitoreando al SQL Server 2012
Implementando un DataBase Mirroring',200,12,'2015-01-31','2015-02-21',0)
INSERT INTO dbo.Curso 
VALUES(4,2,6,10,23,'Inteligencia de Negocios Nivel I (Diseño y Carga del Data Warehouse)','Conocimiento de Conceptos Generales de Base de Datos.
Conocimiento Básico de Modelamiento de Datos.','Este curso proporciona a los estudiantes con los conocimientos y prácticas necesarias para diseñar, 
implementar, y distribuir soluciones con bases de datos multidimensionales OLAP','Inteligencia de Negocios 
Gestión de la Información con Inteligencia de Negocios 
Instalación de la Plataforma de Inteligencia de Negocios con Microsoft 
Introducción a una Solución de Inteligencia de Negocios.
Planeando Solución de Inteligencia de Negocios 
Diseñando Data Mart 
Planificación del ETL
Componentes de Reporting Services 
Creación de informes básicos 
Conexión a datos externos desde MS Excel',200,12,'2015-02-28','2015-03-21',0)
INSERT INTO dbo.Curso 
VALUES(5,2,6,10,null,'Introducción a SQL','Conocimientos de Modelamiento de Datos','Utilizar las sentencias SELECT en todas sus modalidades.
Utilizar la sintaxis DDL del SQL para crear, modificar o destruir objetos de la base de datos de Oracle.
Reconocer y aplicar las reglas de las restricciones.','Sentencias básicas del lenguaje SQL
Consultas avanzadas con SQL
Subconsultas
Manipulación de datos en las tablas
Gestión de objetos
Otros objetos de la base de datos
PL/SQL: Bloques, cursores y excepciones
Bloques nominados',200,12,'2014-12-06','2014-12-27',1)
INSERT INTO dbo.Curso 
VALUES(5,2,6,10,25,'Administración de Base de Datos','Base de Datos Oracle 11g: Introducción a SQL','Instalar y configurar la Base de Datos Oracle 11g
Controlar, solucionar problemas y mantener la Base de Datos Oracle 11g
Configurar los servicios de Red de Oracle para la Base de Datos Oracle 11g','Instalación del Software de la Base de Datos Oracle 11g
Creación de una Base de Datos Oracle
Control de la Base de Datos
Estructuras de Almacenamiento
Administracion de Usuarios
Seguridad de Base de Datos Oracle
Servicios de Red de Oracle
Gestión de Deshacer
Conceptos de Copia de Seguridad y Recuperación',200,12,'2015-01-03','2015-01-24',0)
INSERT INTO dbo.Curso 
VALUES(5,2,6,10,26,'Administración de Backup y Afinamiento','Base de Datos Oracle 11g: Administración
Base de Datos Oracle 11g: Introducción a SQL','Recuperar la base de datos hasta un punto anterior en el tiempo
Utilizar la tecnología Flashback de Oracle para recuperar la base de datos.
Controlar el uso de recursos de la base de datos con el Administrador de Recursos','Seguridad de Oracle Listener
Configuración de RMAN
Uso de Recovery Manager
Recuperación de Base de Datos
Flashback de Base de Datos
Recuperación de Errores de Usuario
Gestión y Control de Memoria
Gestión de Recursos
Automatización de Tareas con el Planificador',200,12,'2015-01-31','2015-02-21',0)
INSERT INTO dbo.Curso 
VALUES(6,3,1,5,null,'Algoritmos Estructurado Básico','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo','Conocer los elementos de la programación
Conocer y comprender el desarrollo y funcionamiento de las fases del desarrollo del algoritmo
Acceso a datos en la colección de datos','Conceptos de fundamentos de programación.
Fases del desarrollo del algoritmo
Estructuras de control de programa 
Programación Modular SubAlgoritmos
Arreglos de datos
Matrices de datos
',200,24,'2014-12-01','2014-12-17',1)
INSERT INTO dbo.Curso 
VALUES(6,3,1,5,28,'Algoritmos Estructurado Avanzado','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo','Utilizar colecciones de datos en memoria con diferentes tipo de datos
Aplicar el uso de pilas de datos
Reutilizar una función dentro de la misma función','Registros de datos
Archivo de datos(Ficheros)
Métodos de ordenamiento y búsqueda de datos
Operaciones con cadena de datos
Estructuras dinámicas lineales de datos (pilas, colas y listas enlazadas)
Recursividad',200,24,'2014-12-19','2015-01-05',0)
INSERT INTO dbo.Curso 
VALUES(6,3,1,5,29,'Fundamentos De Programación Orientada A Objetos','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo','Conocer los conceptos generales de POO
Conocer el uso de un atributo clase y de un objeto
Aplicar los conceptos del encapsulamiento, Interfaces, Herencia, Polimorfismo','Conceptos fundamentales de POO
Clases y Objetos
Atributos y Métodos
Interfaces
Encapsulamiento
Herencia
Polimorfismo',200,24,'2015-01-07','2014-01-23',0)
INSERT INTO dbo.Curso 
VALUES(7,3,2,10,null,'Modelamiento de  Datos','Conocimiento básico de algún lenguaje de programación Vidual y/o técnicas de
programación como estructura de datos.','Aprender los beneficios de la utilización de UML en el desarrollo de software.
Identificar los beneficios del análisis, diseño y programación orientada a objetos..
Aprender a modelar sistemas con UML.','Introducción al lenguaje de modelado: UML
Definir el comportamiento del sistema
Desarrollo de casos de uso
Construyendo escenarios
Clases y Objetos
Diagrama de clases
Clase entidad y modelo E/R
Tercera forma normal
Cuarta forma normal',200,12,'2014-12-06','2014-12-27',1)
INSERT INTO dbo.Curso 
VALUES(7,3,2,10,31,'MS SQL Server 2012 - Implementación','Conocimientos de Modelamiento de Datos','Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integración de herramientas de SQL Server 2012
Proporcionar al alumno las técnicas de manejo de objetos de SQL y programación en SQL Transact y .NET','Concepto de base de datos relacional. Sistemas 
Los tipos de datos del sistema que ofrece SQL Server 2012.
Creación y optimización de índices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL.
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones.
Programación en SQL Server 2012.
Implementación de desencadenadores.',200,12,'2015-01-03','2015-01-24',0)
INSERT INTO dbo.Curso 
VALUES(7,3,2,10,32,'MS Visual Basic 6.0 - Básico','Conocimiento Basico de Visual Basic 6.0
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista
','Conocer y Manejar el modelo de programación orientada a objetos aplicando las diferentes
técnicas de programación.','Conceptos Fundamentales de Programación
Método, Propiedades, Clases, Eventos
Entorno y Elementos principales de Visual Basic
Administración de Proyectos
Controles Básicos
TextBox, Command, Label
Mecánica de la escritura de código
Módulos de código',200,12,'2015-01-31','2015-02-21',0)
INSERT INTO dbo.Curso 
VALUES(7,3,2,10,33,'MS Visual Basic - Base de Datos','Conocimientos de SQL Server 2000
Experiencia en desarrollo de aplicaciones con alguna herramienta visual, de
preferencia Visual Basic.','Aplicar técnicas de programación orientadas a objetos con acceso a base de datos en SQL – SERVER 2000
Administración de proyectos y el acceso a base de datos usando controles enlazados.
Administración de reportes.','Introducción
ActiveX Data Object
Objeto Recordset
Control ADO Data
OBJETOS Command y Parameters
Módulos de Clase y Dlls',200,12,'2015-02-28','2015-03-21',0)
INSERT INTO dbo.Curso 
VALUES(7,3,2,10,34,'Desarrollo de Aplicaciones .NET con VS.-2012','Conocimiento o experiencia
en programación o desarrollo de aplicaciones y que deseen desarrollar aplicaciones en la
plataforma .Net con Visual Basic .Net','Conocer la estrategia Microsoft .NET y los componentes del Marco .NET
o Describir las características de Visual Studio .NET
o Describir el modelo de programación basado en objetos.','ntroducción a Microsoft NET
Uso de variables de tipo valor
nstrucciones y excepciones
Tablas
Programación orientada a objetos
Uso de variables de tipo referencia
Herencia en VB',200,12,'2015-03-28','2015-04-18',0)
INSERT INTO dbo.Curso 
VALUES(8,3,4,12,null,'Desarrollo de Aplicaciones .NET Con Visual Studio 2012','Conocimientos de programación, POO, bases de datos, ADO.NET, SQL SERVER 2008','Proporcionar al alumno los conocimientos para el desarrollo de aplicaciones en entornos distribuidos con tecnologías de última generación Microsoft','Programación Orientada A Objetos
Desarrollo de interfaz de usuario Windows
Trabajando con colecciones de datos
Acceso al sistema de archivos
Programando con Hilos
Usando Expresiones Regulares para validación de datos
Pruebas y depuración de errores
Distribución de aplicaciones Windows',200,12,'2014-12-06','2014-12-27',1)
INSERT INTO dbo.Curso 
VALUES(8,3,4,12,36,'Acceso a Datos con ADO . NET 4.0 y Visual Studio 2012','Ninguno','Manejar las herramientas de acceso a datos mediante ADO .NET 4.0
Transacciones en 2 capas con LINQ
Aprender a trabajar con informes empresariales de Crystal Reports.','Arquitectura de ADO.NET 4.0
Consulta y mantenimiento de datos en forma conectada.
Manejo de Transacciones.
Trabajo desconectado.
Consumir reportes locales y de Servidor Reporting Services
Acceso a Datos con Entity Data Model y Linq para entidades
Acceso a datos en los servicios en la nube con Windows Azure',200,12,'2015-01-03','2015-01-24',0)
INSERT INTO dbo.Curso 
VALUES(8,3,4,12,37,'Desarrollo de Aplicaciones Web con ASP .NET Ajax','Ninguno','Al término del curso el alumno estará en la capacidad de desarrollar una aplicación Web con ASP.Net con acceso a una base de datos e implementarla.','Crear Aplicaciones Web con Visual Studio 2012
Agregar Código a un Formulario Web ASP.NET 4.0
Traceo de Aplicaciones Web ASP.NET 4.0
Validación de Entradas de Usuarios
Creación e Implementación de Controles de Usuario
Configuración, Optimización y Despliegue de Aplicaciones Web ASP.NET 4.0
 Configuración de la Seguridad en Aplicaciones Web ASP.NET 4.0
ASP.NET 4.0 AJAX en el servidor
Desarrolle aplicaciones con ASP.NET 4.0 con MVC 3',200,12,'2015-01-31','2015-02-21',0)
INSERT INTO dbo.Curso 
VALUES(8,3,4,12,38,'Taller de desarrollo de Aplicaciones Distribuidas en N capas','Ninguno','Desarrollar de aplicaciones en entornos distribuidos con tecnologías de última generación Microsoft, integración de herramientas de SQL Server 2008, utilizando como herramienta Microsoft Visual Studio 2012 y NET Framework 4.0','Fundamentos de Desarrollo de aplicaciones distribuidas
Introducción a SOA - REST
Introducción  a .NET Remoting
Publicar servicios con .NET Remoting
Introducción a Servicios Web
Publicar servicios WEB
Introducción a WCF
Creando un servicio de WCF.
Sirviendo un servicio de WCF.
Consumiendo un servicio en WCF
Creación de entidades
Construir una solución en capas
Generar la capa de Datos con Microsoft Entity Framework
Generar la capa de negocios
Exponer los servicios WCF de la capa de negocios por IIS 7.0
Generar la capa de presentación Web
Consumiendo reportes de Reporting Services y SQL SERVER 2008
Instalación de un aplicación Web en IIS 7.0',200,12,'2015-02-28','2015-03-21',0)
INSERT INTO dbo.Curso 
VALUES(9,3,7,15,null,'Desarrollo Aplicaciones.NET con C#','Conocimientos de programación, POO,  bases de datos, ADO.NET','En este curso los alumnos aprenderán  los fundamentos del Lenguaje de programación  C#  Orientada a Objeto con  NET  Framework 4.0.
','Introducción a MICROSOFT .NET y C#
Programación Orientada a Objetos
Herencia
Trabajar con Menús
Arreglo y Colecciones
Flujos de Datos
Windows Presentation Foundation
Distribución de Aplicaciones Windows',200,12,'2014-12-07','2014-12-28',1)
INSERT INTO dbo.Curso 
VALUES(9,3,7,15,40,'Desarrollo Aplicaciones con ADO.NET 4.0 y C#','Conocimientos de programación, POO,  bases de datos, ADO.NET','El objetivo de este curso es presentar las técnicas de programación para bases de datos en la plataforma .NET, utilizando C# como lenguaje base.','SQL Server 2008 para Desarrolladores.
 Arquitectura de ADO.NET 4.0.
Acceso Desconectado.
Consulta y Mantenimiento de Datos en Forma Conectada.
Manejo de Transacciones.
Generar Reportes con CRYSTAL REPORTS
Acceso a Datos con LINQ',200,12,'2015-01-04','2015-01-25',0)
INSERT INTO dbo.Curso 
VALUES(9,3,7,15,41,'Desarrollo Aplicaciones Web con C# ASP.NET AJAX','Conocimientos de programación, POO,  bases de datos, ADO.NET','Este curso otorga los fundamentos necesarios para la implementación de aplicaciones Web ASP.NET usando  Visual C#, enfocado en el ambiente de desarrollo de Visual Studio.NET.','Introducción a ASP.NET  AJAX
Uso de los Controles Estándar
Diseño de Sitios Web con Páginas Maestras
Visión General de Acceso a Datos
Acceso a Datos con LINQ to SQL
Administración del Estado
Uso de Autenticación Basada en Formularios
Reportes en ASP.NET',200,12,'2015-02-01','2015-02-25',0)
INSERT INTO dbo.Curso 
VALUES(9,3,7,15,42,'Desarrollo Aplicaciones Web Distribuidas en N capas con C#','Conocimientos de programación, POO,  bases de datos, ADO.NET','Proporcionar a los estudiantes los conocimientos y habilidades necesarias para desarrollar soluciones basadas  en Capas y Servicios Web para solucionar problemas comunes en un dominio de aplicación distribuida.',' Implementación de Componentes
Arquitectura en Capas
Servicios Web XML
Windows Communication Foundation (WCF)
Configuración de Servicios WCF
Consumiendo Servicios WCF
Microsoft Entity Framework',200,12,'2015-03-01','2015-03-22',0)
INSERT INTO dbo.Curso 
VALUES(10,3,6,14,null,'PHP Nivel I - Programación Web','Conocimiento básico del lenguaje HTML.
Conocimiento de programación estructurada','Comprender el desarrollo evolutivo de la Web a nivel mundial
Extender su conocimiento en desarrollo de sitios web, basado en la experiencia del usuario.','Introducción al módulo - Web 2.0.
HTML.
Lenguaje Básico: Sintaxis, Comentarios, Tipo de datos
Tablas o Arrays
Funciones de Usuario
Librerias. Creación y Utilización de Librerías
Sentencias Repetitivas – While y for
Manejo de cadenas. Funciones de cadena
JavaScript I
PHP Utilizando Java Script
 Instalando una Herramienta de Administración – MysqlGui Tools
Sentencias de SQL
Conexión al Mysql desde PHP. Configuración del archivo INI
Procesos Básicos de Mantenimiento',200,12,'2014-12-07','2014-12-28',1)
INSERT INTO dbo.Curso 
VALUES(10,3,6,14,44,'PHP Nivel II - DAO-POO','Conocimiento del lenguaje HTML (indispensable)
Conocimiento de programación estructurada','Comprender la sintaxis completa del lenguaje
Comprender la relación de PHP con los servidores Web (Apache)','PHP 5.X Características avanzadas
MySql Básico – PostGress Basico
Integración PHP - MySql
PHP 5.X Orientación a Objetos
Manejo de Sesiones y Gráficos
Carrito de Compra, Upload , PDF y Códigos de Validación
Email y Carrito de Compra
Manejo de Capas – MVC y Ajax',200,12,'2015-01-04','2015-01-25',0)
INSERT INTO dbo.Curso
VALUES(10,3,6,14,45,'PHP Nivel III - PHP Avanzado','Conocimiento de PHP Nivel II - DAO-POO
Nociones de Servidor web. ','Comprender la relación de PHP con los servidores Web (Apache)
Realizar conexiones con MYSQL para la creación hojas dinámicas','Patrones de Diseño
Motor de Plantillas PHP - Smarty
WebServices – XML – NuSoap
Framework con PHP
Definiciones previas. Frameworks – Librerías externas – APIs.
Kumbia
ZendFramework
Synfony',200,12,'2015-02-01','2015-02-25',0)
INSERT INTO dbo.Curso 
VALUES(11,3,2,8,null,'Java Fundamentos','Lenguaje de programación estructurado, así como los conceptos de orientación a objetos.
Recomendables pero no requeridos conocimientos de C ó C++','Conocer las características del lenguaje java y su uso en el desarrollo de aplicaciones informáticas de todo nivel usando los conceptos de la programación orientada a objetos así
como las características del modelo cliente/servidor.','Estructura de un sistema informático
Atributos: Tipos y ámbitos
Control de flujo y operadores
Inner classes (clases internas)
Interfaz grafica de usuario (GUI).
JDialog y JOptionPane
Eventos:definición
Asociación de clases Bean con eventos',200,24,'2014-12-01','2015-12-17',1)
INSERT INTO dbo.Curso 
VALUES(11,3,2,8,47,'Java Cliente / Servidor','Los alumnos necesitarán tener experiencia con el lenguaje de programación Java para poder comprender lamateria del curso con éxito.','Conocer las características del lenguaje java y su uso en el desarrollo de aplicaciones informáticas de todo nivel usando los conceptos de la programación orientada a objetos así
como las características del modelo cliente/servidor','Conversión de datos
Utilidades
Colecciones
Concurrencia
JDBC
Uso de Statement
Uso de PreparedStatement
Reportes',200,24,'2014-12-19','2015-01-05',0)
INSERT INTO dbo.Curso 
VALUES(11,3,2,8,48,'Java Aplicaciones Web','Los alumnos necesitarán tener experiencia con el lenguaje de programación Java para poder comprender la materia del curso con éxito ','Conocer las características del lenguaje java y su uso en el desarrollo de aplicaciones informáticas de todo nivel usando los conceptos de la programación orientada a objetos así
como las características del modelo cliente/servidor','Aplicaciones WEB
JSP
Uso de Ajax
Java Bean - Uso
Persistencia
Sesiones en JSP
JSON',200,24,'2015-01-07','2015-01-23',0)
INSERT INTO dbo.Curso 
VALUES(12,3,1,9,null,'Android Básico','Educación media o superior con conocimientos básico de programación.','Conozcan los principales componentes para desarrollar una aplicación en Android
Obtengan conocimientos de los componentes visuales de aplicaciones móviles
Conozcan las APIs más avanzadas','SDK Manager y AVD Manager 
Elementos de una aplicación en Android. 
AndroidManifest, uso y elementos. 
Recursos en Android. Strings, Color y Drawable. 
Intenciones (Intent). Tipos y uso. 
Layout. Implementación y tipos. 
Actividades. Implementación 
DDMS y LogCat. Trazabilidad en Android 
ListView. Adapter, implementación. 
View y ViewGroups. Uso de widgets. Spinner y AutocompleteTextView 
Unidades de medida en Android. DP y SP. 
Eventos. Uso de OnClickListener y OnItemClickListener 
Menu en Android. Tipos. Uso de Option Menu y ContextMenu. 
Dialogo. Uso de AlertDialog y ProgressDialog 
Toast. Uso de notificaciones',200,24,'2014-12-02','2014-12-25',1)
INSERT INTO dbo.Curso 
VALUES(12,3,1,9,50,'Android Intermedio','Educación media o superior con conocimientos básico de programación.
Android Básico','A lo largo del curso, el alumno aprenderá a realizar tareas en segundo plano, utilizar los sensores del dispositivo, crear gráficos en 2D, almacenar datos entre sesiones, crear animaciones, etc.','ActionBar. Uso en API 17 
Fragmentos. Caracteristicas y uso. 
Preferencias. Caracteristicas. Uso de SharedPreferences. 
Uso de controles Preferences y PreferenceActivity. 
Binder (IPC Driver). Middleware a servicios Linux. 
Servicios en Android. Tipos e implementación. 
BroadcastReceiver. Acceso a TelephonyManager y SmsManager 
Multimedia en Android. MediaPlayer y MediaController. 
Video y Camara en Android. SurfaceView y SurfaceHandler. 
Notificaciones en Android. Luz, zumbador, icono. 
Preferencias. Uso PreferenceActivity y PreferenceScreen 
Archivos en Android. Uso de OutputStream e InputStream. 
Archivos en memoria interna y memoria externa. Clase Environment.',200,24,'2014-12-30','2015-01-22',0)
INSERT INTO dbo.Curso 
VALUES(12,3,1,9,51,'Android Avanzado','Educación media o superior con conocimientos básico de programación.
Android Intermedio','Construir juegos y aplicaciones graficas con un nivel de sofisticacion requeridas por el usuario.
Elaborar aplicaciones móviles en modo visual y en la nube usando MIT AppInventor.','Base de datos SqLite. Caracteristicas. 
Sintaxis de sentencias SQL para SQLITE. 
ContentProvider. Características y uso. 
Importar una base de datos a Android. 
Base de datos del dispositivo móvil. Uso de ContactProvider. 
GPS. Uso e implementación. 
GoogleMap en Android. Caracteristicas. 
MapActivity y MapView. 
Procedimiento para creación de API Key en Google Map. 
Manejo de mapas en Android. Uso de MapController. 
Web Services en Android. Diferencias entre SOAP y REST. 
Uso de KSOAP2 para webservices SOAP. Ejemplos usando .NET y PHP. 
Despliegue y publicación de aplicaciones en Google Play. Criterios. ',200,24,'2015-01-27','2015-02-19',0)
INSERT INTO dbo.Curso 
VALUES(12,3,1,9,52,'Android App Inventor','Educación media o superior con conocimientos básico de programación.
Android Avanzado','Al finalizar el curso el alumno será capaz de manejar el entorno de programación y crear una aplicación completa para dispositivos Android.','MIT AppInventor. Características y requerimientos. 
Instalación de requisitos para AppInventor. 
Elementos de AppInventor: Visual Designer, Block Editor y Emulator. 
Creación de sentencias en AppInventor. 
Declaración de variables y procedures. 
Uso de Screen Arragement 
Uso de propiedades y eventos de controles AppInventor. 
Descarga de aplicación en emulador AppInventor 
Uso de archivos multimedia. Imagen, sonido y video. 
ListPicker. Uso y eventos. 
Activity Starter. Uso de Intent en AppInventor. 
Uso de objetos Web y WebViewer, Uso de GooleMap y Google StreetView. 
Canvas. Gráficos en Android. 
TinyDB. Uso de Base de datos en Android. 
',200,24,'2015-02-24','2015-03-19',0)
INSERT INTO dbo.Curso 
VALUES(13,4,3,6,null,'Autocad 2014 - Básico ','Se necesita conocimientos previos en Windows a nivel de usuario, además tener algún conocimiento básico de dibujo técnico, ello facilitara su aprendizaje del software.','Manejar las herramientas de dibujo y edición de objetos. los cuales le permitirán desarrollar un dibujo técnico de manera rápida y sencilla a la vez.','Entorno de trabajo
Unidades de medida y sistema de coordenadas
Edición y dibujo de Objetos
Capas y Propiedades de Objetos
Crear estilos de texto y sombreado
Dimensionado
Configuraciones de página y Ploteo
Escala',200,24,'2014-12-01','2015-01-01',1)
INSERT INTO dbo.Curso 
VALUES(13,4,3,6,54,'Autocad 2014 - Intermedio',' La actual o una versión anterior de AutoCAD
Creación y edición de objetos básicos de AutoCAD','Aplicación de técnicas de Edición (Uso de grips)
Aplicación de restricciones geométricas
Dibujo Isométrico (piezas mecánicas, tuberías, Vivienda)','HERRAMIENTAS DE PRODUCTIVIDAD E ISOMETRÍA
LÍNEAS DE CONSTRUCCIÓN Y REFERENCIA DE BLOQUES
REDEFINICION DE BLOQUES, ATRIBUTOS Y TABLAS
ENLACE CON ARCHIVOS EXTERNOS E IMÁGENES
 POLIGONALES Y CURVAS
LAYOUTS Y PLOTEO
UTILIDADES
PERSONALIZACIÓN DEL AUTOCAD',200,24,'2014-01-02','2015-02-04',0)
INSERT INTO dbo.Curso 
VALUES(13,4,3,6,55,'Autocad 2014 - Avanzado ','Se requieren conocimientos de AutoCAD Básico y Intermedio.','Manejar adecuadamente el espacio de trabajo en 3d.
Conocer y utilizar rápidamente los diferentes comandos de navegación en 3d.','Herramientas visualización y trazado 3D
Modelado con Sólidos
Modificar Sólidos y superficies
Creación de Sólidos y superficies
Edición de Sólidos
Modelado con Superficies y mallas
Presentación Foto realista
Configuraciones de página y Layouts',200,24,'2015-02-05','2015-03-10',0)
INSERT INTO dbo.Curso 
VALUES(14,4,7,7,null,'Corel Draw X6 - Designer','La actual o una versión anterior de CorelDraw X5
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista','Lograr que el alumno comprenda los fundamentos y criterios básicos de la Presa digital, elaborando diseños publicitarios de manera eficiente y efectiva, para que queden listos para la Preimpresión.','En entorno de diseño
Configurar el documento de CorelDraw X6
Herramientas de formas básicas
Herramientas y comandos para organizar los objetos
Usar colores (uso básico)
Herramienta texto (uso básico)
Herramienta Bezier (trazos rectos)
Diseño de un Recibo por honorarios
Herramienta Bezier (curvas)
Rellano Uniforme
Relleno Degradé
Relleno Patrón
Relleno Textura
Herramienta Texto (uso avanzado)',200,24,'2014-12-01','2015-01-01',1)
INSERT INTO dbo.Curso 
VALUES(14,4,7,7,57,'Corel Draw X6 - Expert','Haber realizado el curso de Corel Draw Designer o acreditar conocimientos
equivalentes a juicio de la Institución','Capacitar al alumno en el manejo de la interfase de Corel Draw, la creación y edición de diseños simples usando figuras geométricas, curvas libres, definición de filetes y rellenos','Manejo de imágenes
Insertando como Objeto Nuevo
Viñetas y Numeración
Trabajar con Capas
Crear una plantilla de estilo
PowerTrace
Vectorización de Imágenes
Impresión',200,24,'2014-01-02','2015-02-04',0)
INSERT INTO dbo.Curso 
VALUES(14,4,7,7,58,'Adobe Illustrator CS6 - Designer','nose requiere conocimiento alguno','Teoría: Uso de herramientas para dibujo (vectorial), texto en párrafo o artístico y diagramación de cuadros estadísticos. Utilización de filtros para formas en la imagen y cambios de color.','EL ÁREA DE TRABAJO
ASISTENTE DE BIENVENIDA
ELABORACIÓN DE ILUSTRACIONES
SELECCIÓN.
CREANDO FORMAS BÁSICAS
TRANSPARENCIAS Y MODOS DE FUSIÓN
COLOCAR Y ORDENAR OBJETOS
ATRIBUTOS DE ASPECTO, ESTILOS Y EFECTOS
CREACIÓN Y EDICIÓN DE TEXTOS
FUSIONAR FORMAS Y COLORES
CREAR EFECTOS
GRÁFICOS PARA LA WEB E IMPRESION',200,24,'2015-02-05','2015-03-10',0)
INSERT INTO dbo.Curso 
VALUES(14,4,7,7,59,'Adobe Photoshop CS6 - Designer','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo','Concepto de resolución y manejo de las imágenes en capas. Empleo de herramientas para selección y retoque fotográfico. Cambio de los modos de color, uso de filtros para la creación de texturas.
','Requerimientos del Sistema para la instalación del software
Herramientas para seleccionar básicas, marco rectangular,, elipse, lazo, lazo poligonal, lazo magnético, varita y selección rápida.
Clona
Herramientas para editar la imagen
Capas de texto
Líneas guías
Opciones de Ajustes de Color
Bloqueo de capas
Modos de fusión de capas',200,24,'2015-03-11','2015-04-13',0)
INSERT INTO dbo.Curso 
VALUES(14,4,7,7,60,'Adobe Photoshop CS6 - Expert','Haber llevado el modulo de Photoshop Designer.','Concepto de resolución y manejo de las imágenes en capas. Empleo de herramientas para selección y retoque fotográfico.
Recortar, retocar y efectos para presentación de fotografías profesionales.','Imagen Raw
Canales de color
Canales alfa
Histograma
Niveles
Curvas
Brillo y contrarte
Equilibrio de color
Tono y saturación
Reemplazar color
Mapa de degradado
Invertir
Filtro de fotografía
Brillo y oscuridad
Variaciones
Capas de ajuste
Uso avanzado de filtros
Máscara rápida
Máscara de capas
PDF
Animación y creación de una WEB
Acciones
Impresión',200,24,'2015-04-14','2015-05-15',0)
INSERT INTO dbo.Curso 
VALUES(14,4,7,7,61,'Adobe Indesign CS6','Haber realizado el curso de Operación Básica de Microsoft Windows o acreditar
conocimientos equivalentes a juicio de la Institución.','Proporcionar los conocimientos teórico/prácticos en la diagramación, necesarios
para la elaboración de Revistas, folletos, boletines, catálogos, etc.','Conceptos Básicos
Ventana de trabajo, Opciones
Paleta de herramientas
Opciones del Zoom
El Entorno
Formateo de Texto
La Paleta de Control
Trabajando con Texto
Imágenes
Importación de Imágenes.
Enmascaramiento.
Manejo de Objetos y Estilos
Alineamiento y Distribución
Ordenamiento
Duplicado de Objetos
Estilos: Uso de la Paleta de estilos
Creación de estilo
Colores y el Editor de textos
Edicion Avanzada de Texto.
Páginas Maestras
Páginas maestras: Opciones.
Manejo de Páginas - Plugins',200,24,'2015-05-18','2015-06-18',0)
INSERT INTO dbo.Curso 
VALUES(15,4,1,4,null,'Adobe Dreamweaver CS6','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo','Planificación de la estructura de Sitios locales y remotos
Brindar al alumno las posibilidades que ofrece el programa
Creación de documentos HTML','Aspectos básicos del programa
Creación de un estilo de Clase
Vínculos o hipervínculos de documentos
Insertar Imágenes
Diseño de paginas
Pagina de marcos
Creación de Plantillas
Crear una plantilla nueva
Crear regiones editables en la plantilla
Aplicar una plantilla a un documento.
Bloquear una región editable',200,24,'2014-12-01','2015-01-01',1)
INSERT INTO dbo.Curso 
VALUES(15,4,1,4,63,'Adobe Dreamweaver CS6 - Acceso BD & Adobe Fireworks CS6','Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Institución','Como generar mejores efectos animados, es un software especializado para la creación, administración y edición de páginas Web multimedia (texto, sonido e imágenes).','Elementos DIV
Elementos Div PA
Código de las páginas
Comportamientos
Creación de formularios
Conexiones a Bases de Datos
Adobe Fireworks
Mapas de bits
Texto
Optimización y exportación
Acerca de la optimización
Exportación desde Fireworks',200,24,'2014-01-02','2015-02-04',0)
INSERT INTO dbo.Curso 
VALUES(15,4,1,4,64,'Adobe Flash CS6 - Animaciones Básicas','Conocimientos básicos de Adobe Flash a nivel de usuario.','Manejo de conceptos para la animación, empleo de herramientas para dibujo, texto y color. Manipulación de las librerías y paneles de efectos. ','Iniciar Flash.
Área de trabajo.
El Escenario, configuración.
Insertar una animación flash en una página web
Creación y edición de ilustraciones
Panel Herramientas
Trabajar con texto clásico
Trabajar con Text Layout Framework (TLF)
Creación de animaciones
Animación fotograma a fotograma
Utilización de cinemática inversa.
Animaciones con máscaras
Las acciones de flash
Introducción a ActionScript
Acciones básicas: Control de la línea de tiempo
Acciones a fotogramas
Acciones a Botones
Proyectores autoejecutables',200,24,'2015-02-05','2015-03-10',0)
INSERT INTO dbo.Curso 
VALUES(15,4,1,4,65,'Adobe Flash CS6 - Animaciones Avanzadas','Se requiere conocimiento de adobe Flash Basico o intermedio.','El participante, al finalizar el módulo, podrá crear activos para las páginas Web y también diseñar páginas estáticas y dinámicas eficientes, atractivas y fáciles de navegar.','Fundamentos de ActionScript 
Uso de texto estático (Static Text)
Uso de texto dinámico (Dinamic Text)
Utilización de variables.
Trabajo con sonido
Controlar sonido con ActionScript 
Reproducir y detener sonido con botones y ActionScript 
Trabajo con video
Crear una precarga (Preloader)
Crear una precarga (Preloader) en ActionScript 3
Matrices
Uso de componentes para crear interfaces de usuario (UI)
Componentes VS tamaño de película
Uso de los comandos FSCommnad
Settings de publicación',200,24,'2015-03-11','2015-04-13',0)
INSERT INTO dbo.Curso 
VALUES(16,5,5,13,null,'Linux - Administración','Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP','Capacitar al participante en las técnicas básicas de personalización y reducción de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, así como también en criptografía y cifrado','Introducción de Sistemas Operativos con Linux
Sistema de Archivos
Aplicaciones
Instalación del Sistema Operativo
Networking bajo Linux
Grupos, usuarios, archivos, propiedades y permisos
Compartición de Archivos',200,12,'2014-12-06','2014-12-27',1)
INSERT INTO dbo.Curso 
VALUES(16,5,5,13,67,'Linux - Administración de Servicios Intranet','Conocimientos básicos en redes, conectividad y TCP/IP
Linux – Administracións','Usar el Filtrado de paquetes Por medio de TCP/IP.
Instalar y configurar entornos Microsoft como servidor Proxy y Firewall para un entorno empresarial.','Domain Name Service (DNS)
Sendmail
Apache Web Server
Dynamic Host Control Protocol (DHCP)
Squid Proxy Server',200,12,'2015-01-03','2015-01-24',0)
INSERT INTO dbo.Curso 
VALUES(16,5,5,13,68,'Linux - Seguridad en Redes','Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP
','Capacitar al participante en las técnicas básicas de personalización y reducción de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, así como también en criptografía y cifrado','PKI - Criptografía de Clave Pública
Servicio HTTPS
Servicio SENDMAIL Seguro
Servicio OpenSSH
Servicio IPtables
Servicio VPN',200,12,'2015-01-31','2015-02-21',0)




-- MATRÍCULA CURSO
INSERT INTO dbo.MatriculaCurso VALUES(3,7,10001,'2014-11-15T14:25:10')
INSERT INTO dbo.MatriculaCurso VALUES(5,1,10003,'2014-11-17T14:10:10')
INSERT INTO dbo.MatriculaCurso VALUES(6,17,10004,'2014-11-18T06:05:10')
INSERT INTO dbo.MatriculaCurso VALUES(8,25,10006,'2014-11-20T14:25:10')
INSERT INTO dbo.MatriculaCurso VALUES(10,28,10008,'2014-11-22T14:13:10')
INSERT INTO dbo.MatriculaCurso VALUES(11,44,10009,'2014-11-23T14:25:10')
INSERT INTO dbo.MatriculaCurso VALUES(12,36,10010,'2014-11-24T14:25:10')




-- MATRÍCULA MÓDULO
INSERT INTO dbo.MatriculaModulo VALUES(4,10,3,10002,'2014-11-16T21:08:10')
INSERT INTO dbo.MatriculaModulo VALUES(7,6,3,10005,'2014-11-19T22:25:10')
INSERT INTO dbo.MatriculaModulo VALUES(9,2,1,10007,'2014-11-21T20:10:10')
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------




---- STORE PROCEDURE ----


---- STORE PROCEDURE para validar el Login ----
/*
	Validar:
	01. El usuario no sea NULL ni vacío.
	02. La contraseña no sea NULL ni vacía.
	03. El usuario y contraseña sean válidos.
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

-- CÓDIGO DE PRUEBA
EXECUTE usp_ValidarLogin 'RicardoDLC', '1234'	-- ÉXITO
EXECUTE usp_ValidarLogin NULL, '1234'				-- Usuario NULL
EXECUTE usp_ValidarLogin ' ', '1234'						-- Usuario vacío
EXECUTE usp_ValidarLogin 'RicardoDLC', NULL	-- Contraseña NULL
EXECUTE usp_ValidarLogin 'RicardoDLC', ' '			-- Contraseña vacía
EXECUTE usp_ValidarLogin 'RicardoDLC', '12345'	-- Usuario inválido

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------



---- STORE PROCEDURE para agregar Curso ----
/*
	Validar:
	01. El codigo de modulo no sea NULL ni vacío.
	02. El codigo de categoría no sea NULL ni vacío.
	03. El codigo de profesor no sea NULL ni vacío.
	04. El codigo de horario no sea NULL ni vacío.
	05. La descripción del curso no sea NULL ni vacía.
	06. El temario del curso no sea NULL.
	07. El precio del curso no sea NULL.
	08. El número de horas del curso no sea NULL.
	09. La fecha de inicio del curso no sea NULL ni vacío.
	10. La fecha de fin del curso no sea NULL ni vacío.
	11. El estado del curso no sea NULL ni vacío.
	12. El codigo de modulo sí exista.
	13. El codigo de categoría sí exista.
	14. El codigo de profesor sí exista.
	15. El codigo de horario sí exista.
	16. El codigo de curso requisito sí exista.
	17. La descripción o nombre del curso no se repita.
	18. El precio del curso no sea menor que cero.
	19. El número de horas del curso no sea menor o igual a cero.
	20. La fecha de inicio sea menor que la fecha de fin.
	21. La fecha de inicio y fecha de fin no sean iguales.
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
@FechaFin				DATE					= NULL,
@Estado					BIT						= NULL
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
	IF(@Estado IS NULL OR LEN(@Estado) = 0)
		BEGIN
			PRINT 'Debe ingresar estado del curso'
			RETURN 11
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Modulo 
							WHERE C_Modulo = @C_Modulo)
		BEGIN
			PRINT 'El codigo de modulo no existe'
			RETURN 12
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Categoria 
							WHERE C_Categoria = @C_Categoria)
		BEGIN
			PRINT 'El codigo de categoria no existe'
			RETURN 13
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Profesor 
							WHERE C_Profesor = @C_Profesor)
		BEGIN
			PRINT 'El codigo de profesor no existe'
			RETURN 14
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Horario 
							WHERE C_Horario = @C_Horario)
		BEGIN
			PRINT 'El codigo de horario no existe'
			RETURN 15
		END
	-------------------------------------------------------
	IF NOT EXISTS(SELECT 1 FROM Curso 
							WHERE C_Curso = @C_CursoR)
		BEGIN
			PRINT 'El codigo de curso requerido no existe'
			RETURN 16
		END
	-------------------------------------------------------
	IF EXISTS(SELECT 1 FROM Curso 
							WHERE Descripcion = @Descripcion)
		BEGIN
			PRINT 'El nombre de curso ya existe'
			RETURN 17
		END
	-------------------------------------------------------
	IF(@Precio < 0)
		BEGIN
			PRINT 'El precio no puede ser menor que cero'
			RETURN 18
		END
	-------------------------------------------------------
	IF(@NumeroHoras < 0 OR @NumeroHoras = 0)
		BEGIN
			PRINT 'El numero de horas no puede ser menor o igual a cero'
			RETURN 19
		END
	-------------------------------------------------------
	IF(DATEDIFF(DAY, @FechaInicio, @FechaFin) < 0)
		BEGIN
			PRINT 'La fecha de inicio no puede ser posterior a la fecha de fin'
			RETURN 20
		END
	-------------------------------------------------------
	IF(DATEDIFF(DAY, @FechaInicio, @FechaFin) = 0)
		BEGIN
			PRINT 'La fecha de inicio no puede igual a la fecha de fin'
			RETURN 21
		END
	-------------------------------------------------------
	
	--AGREGAMOS CURSO
	INSERT INTO Curso(C_Modulo, C_Categoria, C_Profesor, C_Horario, C_CursoR, Descripcion,
									 Requisitos, Objetivo, Temario, Precio, NumeroHoras, FechaInicio, FechaFin, Estado)
	VALUES(@C_Modulo, @C_Categoria, @C_Profesor, @C_Horario, @C_CursoR, @Descripcion,
					@Requisitos, @Objetivo, @Temario, @Precio, @NumeroHoras, @FechaInicio, @FechaFin, @Estado)
	IF(@@ERROR <> 0)
		BEGIN
			PRINT 'Error al agregar curso'
			RETURN 22
		END
		
	RETURN 0
GO

-- CÓDIGO DE PRUEBA
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1			-- ÉXITO
EXECUTE usp_AgregarCurso null, 1, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Modulo NULL
EXECUTE usp_AgregarCurso ' ', 1, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Modulo vacío
EXECUTE usp_AgregarCurso 1, null, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Categoría NULL
EXECUTE usp_AgregarCurso 1, ' ', 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Categoría vacía	
EXECUTE usp_AgregarCurso 1, 1, null, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Profesor NULL
EXECUTE usp_AgregarCurso 1, 1, ' ', 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Profesor vacío	
EXECUTE usp_AgregarCurso 1, 1, 3, null, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Horario NULL
EXECUTE usp_AgregarCurso 1, 1, 3, '  ', 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- Horario vacio
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, null, 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1							-- Descripcion NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, ' ', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1								-- Descripcion vacía
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba4', 'Ninguno', 'objetivo', null, 100.00, 24, '05/11/2014', '12/12/2014', 1								-- Temario NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba6', 'Ninguno', 'objetivo', 'TemarioPrueba', null, 24, '05/11/2014', '12/12/2014', 1				-- Precio NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba6', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, null, '05/11/2014', '12/12/2014', 1			-- Número de horas NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, ' ', '05/11/2014', '12/12/2014', 1				-- Número de horas vacío.
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba6', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, null, '12/12/2014', 1							-- Fecha de inicio NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba8', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, '12/12/2014', null, 1							-- Fecha de fin NULL
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba3', 'Ninguno', 'objetivo', 'TemarioPrueba', 200, 12, '12/12/2014', '12/12/2014', 1				-- Fecha de inicio igual a fecha de fin
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', null	-- Estado NULL
EXECUTE usp_AgregarCurso 17, 1, 1, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014',1		-- No existe código de módulo
EXECUTE usp_AgregarCurso 1, 0, 1, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014',1		-- No existe código de categoría
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014',1		-- No existe código de profesor	
EXECUTE usp_AgregarCurso 1, 1, 1, 20, 1, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1		-- No existe código de horario
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 100, 'CursoPrueba10', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1	-- No existe código de CursoR
EXECUTE usp_AgregarCurso 1, 1, 1, 1, 1, 'CursoPrueba2', 'Ninguno', 'objetivo', 'TemarioPrueba', 100.00, 24, '05/11/2014', '12/12/2014', 1			-- Descripción no se repita	
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba12', 'Ninguno', 'objetivo', 'TemarioPrueba', -2, 24, '05/11/2014', '12/12/2014', 1				-- Precio menor que cero
EXECUTE usp_AgregarCurso 1, 1, 1, 3, 1, 'CursoPrueba12', 'Ninguno', 'objetivo', 'TemarioPrueba', 100, -3, '05/11/2014', '12/12/2014', 1			-- Número de horas menor que cero
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------





---- STORE PROCEDURE para modificar Curso ----
/*
	Validar:
	01. El codigo de curso no sea NULL ni vacío.
	02. El codigo de modulo no sea NULL ni vacío.
	03. El codigo de categoría no sea NULL ni vacío.
	04. El codigo de profesor no sea NULL ni vacío.
	05. El codigo de horario no sea NULL ni vacío.
	06. La descripción del curso no sea NULL ni vacía.
	07. El temario del curso no sea NULL.
	08. El precio del curso no sea NULL ni vacío.
	09. El número de horas del curso no sea NULL ni vacío.
	10. La fecha de inicio del curso no sea NULL ni vacío.
	11. La fecha de fin del curso no sea NULL ni vacío.
	12. El estado del curso no sea NULL ni vacío.
	13. El codigo de curso sí exista.
	14. El codigo de modulo sí exista.
	15. El codigo de categoría sí exista.
	16. El codigo de profesor sí exista.
	17. El codigo de horario sí exista.
	18. El codigo de curso requisito sí exista.
	19. El precio del curso no sea menor que cero.
	20. El número de horas del curso no sea menor o igual a cero.
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
@Estado					BIT						= NULL
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

-- CÓDIGO DE PRUEBA
EXECUTE usp_ModificarCurso 70,1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- ÉXITO	
EXECUTE usp_ModificarCurso null,1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- Curso NULL
EXECUTE usp_ModificarCurso ' ',1, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1			-- Curso vacío
EXECUTE usp_ModificarCurso 70,null, 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1	-- Módulo NULL
EXECUTE usp_ModificarCurso 70,' ', 1, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- Módulo vacío
EXECUTE usp_ModificarCurso 70, 1,null, 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1	-- Categoría NULL
EXECUTE usp_ModificarCurso 70, 1,' ', 1, 3, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- Categoría vacía
EXECUTE usp_ModificarCurso 70, 1, 1, null, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1	-- Profesor NULL	
EXECUTE usp_ModificarCurso 70, 1, 1, ' ', 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- Profesor vacío
EXECUTE usp_ModificarCurso 70, 1, 1, 1, null, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1	-- Horario NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, ' ', 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- Horario vacío
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, null, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1	-- Descripción NULL	
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, ' ', 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- Descripción vacía
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', null, 500, 24, '05/11/2014', '12/12/2014', 1				-- Temario NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', null, 24, '05/11/2014', '12/12/2014', 1		-- Precio NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, null, '05/11/2014', '12/12/2014', 1		-- Número de horas NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, ' ', '05/11/2014', '12/12/2014', 1		-- Número de horas vacío
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, null, '12/12/2014', 1						-- Fecha de inicio NULL
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '12/12/2014', null, 1						-- Fecha de inicio vacía
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', null	-- Estado NULL
EXECUTE usp_ModificarCurso 100, 1, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- No existe curso
EXECUTE usp_ModificarCurso 70, 20, 1, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- No existe módulo
EXECUTE usp_ModificarCurso 70, 1, 10, 1, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- No existe categoría
EXECUTE usp_ModificarCurso 70, 1, 1, 30, 1, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- No existe profesor
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 30, 1, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1		-- No existe horario
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 150, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 24, '05/11/2014', '12/12/2014', 1	-- No existe curso requisito
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 30, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', -500, 24, '05/11/2014', '12/12/2014', 1	-- Precio menor que cero
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 3, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, -2, '05/11/2014', '12/12/2014', 1		-- Número de horas menor que cero
EXECUTE usp_ModificarCurso 70, 1, 1, 1, 1, 3, 'CursoPrueba', 'Ninguno', 'objetivo', 'Temario', 500, 0, '05/11/2014', '12/12/2014', 1			-- Número de horas igual a cero
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para eliminar Curso ----
/*
	Validar:
	01. El codigo de curso no sea NULL ni vacío.
	02. El codigo de curso sí exista.
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
		
	-- ELIMINAMOS CURSO
	DELETE FROM Curso WHERE C_Curso = @C_Curso
	
	RETURN 0
GO

-- CÓDIGO DE PRUEBA
EXECUTE usp_EliminarCurso 1			-- ÉXITO
EXECUTE usp_EliminarCurso NULL		-- Curso NULL
EXECUTE usp_EliminarCurso ' '			-- Curso vacío
EXECUTE usp_EliminarCurso 130		-- No existe curso
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




---- STORE PROCEDURE para listar Curso ----

CREATE PROCEDURE usp_ListarCurso
AS
	-- LISTAMOS CURSOS
	SELECT * FROM Curso
GO

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------



---- STORE PROCEDURE para buscar Curso por código ----
/*
	Validar:
	01. El codigo de curso no sea NULL ni vacío.
	02. El codigo de curso sí exista.
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
		
	-- REALIZAMOS LA BÚSQUEDA
	SELECT * FROM Curso WHERE C_Curso = @C_Curso
	
	RETURN 0
GO
	
-- CÓDIGO DE PRUEBA
EXECUTE usp_BuscarCursoPorCodigo NULL		-- Curso NULL
EXECUTE usp_BuscarCursoPorCodigo ' '			-- Curso vacío
EXECUTE usp_BuscarCursoPorCodigo 140		-- No existe curso
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------




-- STORE PROCEDURE para agregar Alumno a un Curso--
/*
	Validar:
	01. El nombre de usuario no sea NULL ni vacío.
	02. El apellido paterno no sea NULL ni vacío.
	03. El apellido materno no sea NULL ni vacío.
	04. El correo no sea NULL ni vacío.
	05. El nick no sea NULL ni vacío.
	06. La contraseña no sea NULL ni vacía.
	07. La confirmación de contraseña no sea NULL ni vacío.
	08. El código de curso no sea NULL ni vacío.
	09. El código de recibo no sea NULL ni vacío.
	10. El correo no se repita.
	11. El nick de usuario no se repita.
	12. El código de curso exista.
	13. Las contraseñas sean iguales.
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
			PRINT 'Debe ingresar contraseña'
			RETURN 6
		END
	----------------------------------------------------
		IF(@Contrasena2 IS NULL OR LEN(@Contrasena2	) = 0)
		BEGIN
			PRINT 'Debe ingresar contraseña de confirmacion'
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
		VALUES(@ApellidoP, @ApellidoM, @Nombre, @Email, @Sexo, @Nick, dbo.Encriptar(@Contrasena1), 1)
		IF(@@ERROR <> 0)
			BEGIN
				PRINT 'Error al insertar usuario'
				RETURN 14
			END
		
		-- INICIAR TRANSACCIÓN
		BEGIN TRANSACTION
		
			-- INSERTAMOS EN TABLA ALUMNO
			DECLARE @C_Alumno	INT
			SELECT @C_Alumno =  COUNT(*) FROM Usuario
			INSERT INTO Alumno(C_Alumno, Ocupacion)
			VALUES((@C_Alumno+1), @Ocupacion)
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar alumno'
					ROLLBACK
					RETURN 15
				END
		
		
			-- INSERTAMOS EN TABLA MATRICULACURSO
			INSERT INTO MatriculaCurso( C_Alumno,  C_Curso, C_Recibo , FechaMatricula)
			VALUES( (@C_Alumno+1) , @C_Curso ,@C_Recibo , GETDATE())
			IF(@@ERROR <> 0)
				BEGIN
					PRINT 'Error al insertar MatriculaCurso'
					ROLLBACK
					RETURN 16
				END
		
	COMMIT TRANSACTION
	RETURN 0
GO 

--CÓDIGO DE PRUEBA
EXECUTE usp_AgregarAlumnoCurso 'Diego', 'Zavaleta', 'Fernandez', 'M', 'Estudiante', 'diex@hotmail.com', 'Diega6', '1234', '1234', 1, 29		-- ÉXITO

