-----------------------tabla Usuario ----------------------

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Flores', 'Quispe', 'Carlos', 'Car.12@hotmail.com', 'M', 'Carlos33', dbo.Encriptar('asdf'), 1)

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Sanchez', 'Rodriguez', 'Fernando', 'Fernando_123@hotmail.com', 'M', 'Fer', dbo.Encriptar('1234'), 1)

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Garc�a', 'Rojas', 'Patricia', 'Patricia.09@hotmail.com', 'F', 'Pati', dbo.Encriptar('abcd'), 1)

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Gonzales', 'Chavez', 'Milagros', 'Mili22@hotmail.com', 'F', 'MilagrosGC', dbo.Encriptar('4444'), 1)

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Lopez', 'Diaz', 'Marcos', 'Marcos.33@hotmail.com', 'M', 'Marcos3', dbo.Encriptar('lkjh'), 1)

INSERT INTO Usuario(ApellidoP, ApellidoM, Nombre, Email, Sexo, Nick, Contrasena, Estado)
VALUES('Ramos', 'Mendoza', 'Mart�n', 'Martin.77@hotmail.com', 'M', 'Mart�n34', dbo.Encriptar('9876'), 1)

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


-----------------------tabla Administrador ------------------------------------

INSERT INTO dbo.Administrador(C_Administrador,C_Trabajador)VALUES(1,1)

INSERT INTO dbo.Administrador(C_Administrador,C_Trabajador)VALUES(2,2)

-----------------------  tabla Alumno ------------------------------------

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(3,'Estudiante Universitario')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(4,'Trabajador')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(5,'Estudiante Universitario')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(6,'Estudiante Universitario y Trabajador')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(7,'Estudiante Universitario')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(8,'Estudiante Universitario')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(9,'Estudiante Universitario y Trabajador')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(10,'Estudiante Universitario')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(11,'Estudiante Universitario')

INSERT INTO dbo.Alumno(C_Alumno,Ocupacion)VALUES(12,'Trabajador')

----------------------  tabla Categoria ---------------------------------------

INSERT INTO dbo.Categoria(Descripcion)VALUES('Computaci�n')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Base de Datos')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Programaci�n')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Dise�o')
INSERT INTO dbo.Categoria(Descripcion)VALUES('Hardware y Redes')

----------------------  tabla Modulo ---------------------------------------

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,1400,'Especialista en ofim�tica',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,2400,'T�cnico en Computaci�n',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(1,800,'Especialista Excel Empresarial ',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(2,800,'Data Base Administrador',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(2,600,'Administraci�n de BD en Oracle',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(3,600,'Programaci�n Estructurada',1)

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
VALUES(4,1200,'Dise�o Gr�fico Digital',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(4,800,'Web Designer Professional',1)

INSERT INTO dbo.Modulo (C_Categoria,Precio,Descripcion,Estado)
VALUES(5,600,'Especialista en Linux',1)

----------------------  tabla Profesor ---------------------------------------

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(3,'Ruiz', 'Romero', 'Elizabeth','4565478','Eli5@hotmail.com',1)

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(4,'Martinez', 'Perez', 'Eduardo','7565478','Eduardo@hotmail.com',1)

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(5,'Salazar', 'Lopez', 'Jes�s','4385756','Jes�s@hotmail.com',1)

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(6,'Leon', 'Huaman', 'Enrique','4253698','Enrique@hotmail.com',1)

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(7,'Reyes', 'Ramirez', 'Natalia','4758963','Natalia@hotmail.com',1)

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(8,'Huaman', 'Chavez', 'Laura','7583698','Laura@hotmail.com',1)

INSERT INTO dbo.Profesor (C_Trabajador, ApellidoP, ApellidoM, Nombre, Telefono, Email, Estado)
VALUES(9,'Ramos', 'Rojas', 'Tamara','4753698','Tamara6@hotmail.com',1)

----------------------  tabla Horario ---------------------------------------

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



----------------------  tabla Curso  ---------------------------------------

INSERT INTO dbo.Curso VALUES(1,1,3,3,null,'Microsoft Windows 8','Ninguno','Personalizar el computador 
Utilizar las herramientas 
Trabajar con varios Programas simult�neamente y Administrar archivos y carpetas 
Conocer la Funciones b�sicas de las Aplicaciones','Las partes de su Sistema Inform�tico
Explorando Windows 8
Gestionar sus cuentas de usuario
Navegando por ventanas y carpetas
Comprender los archivos y carpetas
Conceptos b�sicos de Internet
Trabajando Internet Explorer 10
Personalizar Windows 8
Instalar y Configurar dispositivos
Trabajar con programas de Windows 8
Trabajar con entornos digitales
Optimizar el sistema
',200,24,'2014-12-01','2014-12-17',1)

INSERT INTO dbo.Curso VALUES(1,1,3,3,1,'Microsoft Word 2013','Conocimientos b�sicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
','Conocer la nueva interfaz de Word 2013, las nuevas caracter�sticas y sobre todo el uso de las nuevas tecnolog�as autom�ticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.','Interfaz de Word 2013
Un nuevo formato de archivos
Definici�n de p�rrafos
Formato
Insertar Objetos
Tablas e Im�genes
Combinar Correspondencia',200,24,'2014-12-19','2015-01-05',0)

INSERT INTO dbo.Curso VALUES(1,1,3,3,2,'Microsoft Excel B�sico 2013','Conocimientos de Windows','Conocer los conceptos b�sicos.
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
Insertar Ilustraciones',200,24,'2015-01-07','2015-01-23',0)

INSERT INTO dbo.Curso VALUES(1,1,3,3,3,'Microsoft Excel Intermedio 2013','Conocimientos de Windows','Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear f�rmulas.
Realizar operaciones con una base de datos.','Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gr�ficos din�micos
Herramientas de Colaboraci�n y Seguridad',200,24,'2015-01-26','2015-02-11',0)

INSERT INTO dbo.Curso VALUES(1,1,3,3,4,'Microsoft Power Point 2013','Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos b�sicos del MS Windows, del manejo del teclado y del rat�n.','Difundir ideas, proyectos o informaci�n, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gr�ficos, animaciones y contenido multimedia.','Introducci�n
Creaci�n de una presentaci�n B�sica
Creaci�n de una presentaci�n desde una plantilla, tema o presentaci�n existente
Formato y edici�n de textos.
Formato y distribuci�n de diapositivas
Colocar im�genes en una diapositiva.
A�adir sonido y video.
Transici�n de Diapositivas y Efectos de presentaci�n.
Hiperv�nculos
Edici�n del Video usando el Windows Movie Maker
Formatos de una presentaci�n',200,24,'2014-02-13','2014-03-02',0)

INSERT INTO dbo.Curso VALUES(1,1,3,3,5,'Microsoft Access 2013','Windows a nivel usuario.','Identificar la estructura de una base de datos y su configuraci�n.
Desarrollar una aplicaci�n bajo MS Access que organice y gestione informaci�n.','Conceptos b�sicos sobre bases de datos
Bases de datos relacionales
Posibilidades de las bases de datos
Microsoft Access
Definici�n y almacenamiento de datos
Manipulaci�n y control de datos
Desarrollo de una aplicaci�n en Access
',200,24,'2015-03-04','2015-03-20',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,null,'Microsoft  Windows 8 ','Ninguno','Personalizar el computador 
Utilizar las herramientas 
Trabajar con varios Programas simult�neamente y Administrar archivos y carpetas 
Conocer la Funciones b�sicas de las Aplicaciones','Las partes de su Sistema Inform�tico
Explorando Windows 8
Gestionar sus cuentas de usuario
Navegando por ventanas y carpetas
Comprender los archivos y carpetas
Conceptos b�sicos de Internet
Trabajando Internet Explorer 10
Personalizar Windows 8
Instalar y Configurar dispositivos
Trabajar con programas de Windows 8
Trabajar con entornos digitales
Optimizar el sistema
',200,24,'2014-12-01','2014-12-17',1)

INSERT INTO dbo.Curso VALUES(2,1,3,3,7,'Microsoft  Word 2013','Conocimientos b�sicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
','Conocer la nueva interfaz de Word 2013, las nuevas caracter�sticas y sobre todo el uso de las nuevas tecnolog�as autom�ticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.','Interfaz de Word 2013
Un nuevo formato de archivos
Definici�n de p�rrafos
Formato
Insertar Objetos
Tablas e Im�genes
Combinar Correspondencia',200,24,'2014-12-19','2015-01-05',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,8,'Microsoft Excel  B�sico 2013','Conocimientos de Windows','Conocer los conceptos b�sicos.
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
Insertar Ilustraciones',200,24,'2015-01-07','2015-01-23',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,9,'Microsoft Excel  Intermedio 2013','Conocimientos de Windows','Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear f�rmulas.
Realizar operaciones con una base de datos.','Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gr�ficos din�micos
Herramientas de Colaboraci�n y Seguridad',200,24,'2015-01-26','2015-02-11',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,10,'Microsoft Power Point  2013','Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos b�sicos del MS Windows, del manejo del teclado y del rat�n.','Difundir ideas, proyectos o informaci�n, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gr�ficos, animaciones y contenido multimedia.','Introducci�n
Creaci�n de una presentaci�n B�sica
Creaci�n de una presentaci�n desde una plantilla, tema o presentaci�n existente
Formato y edici�n de textos.
Formato y distribuci�n de diapositivas
Colocar im�genes en una diapositiva.
A�adir sonido y video.
Transici�n de Diapositivas y Efectos de presentaci�n.
Hiperv�nculos
Edici�n del Video usando el Windows Movie Maker
Formatos de una presentaci�n',200,24,'2014-02-13','2014-03-02',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,11,'Microsoft Access  2013','Windows a nivel usuario.','Identificar la estructura de una base de datos y su configuraci�n.
Desarrollar una aplicaci�n bajo MS Access que organice y gestione informaci�n.','Conceptos b�sicos sobre bases de datos
Bases de datos relacionales
Posibilidades de las bases de datos
Microsoft Access
Definici�n y almacenamiento de datos
Manipulaci�n y control de datos
Desarrollo de una aplicaci�n en Access
',200,24,'2015-03-04','2015-03-20',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,12,'Gesti�n de Redes Sociales - Web 2.0','Nociones b�sicas de marketing o haber trabajo en �reas similares. Es recomendable poder leer en ingl�s ya que las �ltimas publicaciones sobre este tema no est�n traducidas.
','Interpretar planificaciones y gestionar programas de marketing 2.0 en los medios sociales en Internet. Crear estrategias, cronogramas, medir resultados y restablecer acciones necesarias para el logro de objetivos.','Marketing en la web. manejo de la reputaci�n online.
Actitudes y aptitudes de un Community Manager. Reglas de la conversaci�n 2.0. Compendio de herramientas disponibles: Contenidos multimedia. Publicaci�n de informaci�n en sitios web y en blogs. Socializaci�n. Redes sociales. Casos de estudio.
C�mo armar un plan de presencia en medios sociales. Resumen ejecutivo. An�lisis inicial del mercado y la din�mica organizacional. Evaluaci�n de las oportunidades.
Objetivos espec�ficos. Estrategias y herramientas. An�lisis de la inversi�n y resultados esperados. Recursos.
Taller: Gesti�n de aplicaciones
Taller de herramientas de medici�n: Google Analytics, Google Insights, Google Alerts. Estad�sticas de Facbook. Herramientas de medici�n de Twitter.',200,24,'2015-03-04','2015-03-20',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,13,'Adobe Dreamweaver CS6 - Designer','Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Instituci�n','Gracias a este curso sabr� organizar un sitio web y conocer� la utilidad de crear las p�ginas dentro de �ste desde el principio; configurar las propiedades de las p�ginas; insertar plug-ins y controles ActiveX, applets de Java, elementos de interfaz','Aspectos b�sicos del programa
Creaci�n de un estilo de Clase
V�nculos o hiperv�nculos de documentos
Insertar Im�genes
Dise�o de paginas
Pagina de marcos
Creaci�n de Plantillas',200,24,'2015-03-23','2015-04-08',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,14,'CorelDRAW X6 - Designer','La actual o una versi�n anterior de CorelDraw X5
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
Herramienta Silueta Interactiva',200,24,'2015-03-10','2015-04-27',0)

INSERT INTO dbo.Curso VALUES(2,1,3,3,15,'Ensambleje de PC','Ninguno','Comprender el funcionamiento de una computadora y sus perif�ricos.
Reconocer y describir las especificaciones t�cnicas de las partes de una computadora.
Seleccionar el hardware apropiado para una PC.','Partes de una PC.
El Gabinete
 La Placa Base
Procesador y Memoria
 Medios de Almacenamiento
Tarjetas de Expansi�n',200,24,'2015-04-29','2015-05-15',0)

INSERT INTO dbo.Curso VALUES(3,1,5,4,null,'Microsoft  Excel  B�sico 2013','Conocimientos de Windows','Conocer los conceptos b�sicos.
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
Insertar Ilustraciones',200,24,'2014-12-02','2014-12-25',1)

INSERT INTO dbo.Curso VALUES(3,1,5,4,17,'Microsoft  Excel  Intermedio 2013','Conocimientos de Windows','Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear f�rmulas.
Realizar operaciones con una base de datos.','Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gr�ficos din�micos
Herramientas de Colaboraci�n y Seguridad',200,24,'2014-12-30','2015-01-15',0)


INSERT INTO dbo.Curso VALUES(3,1,5,4,18,'Microsoft Excel Producci�n y Administraci�n','Tener conocimientos previos de Excel a nivel intermedio (Excel I y II).','Aplicar las funciones y las herramientas de an�lisis estad�stico. 
Desarrollar an�lisis con bases de datos externas. Calculo de costos y diagramas de producci�n. Diagrama de Pareto Resolver casos de simulaci�n de eventos.','An�lisis Estad�stico de datos
Detecci�n de errores en el ingreso de datos
Obtener informaci�n de Bases de datos Externas
An�lisis (para c�lculos de costos, y de producci�n)
Control de Existencia en Almacenes
Detecci�n de stock m�nimo
Consolidaci�n de existencias en almacenes m�ltiples
',200,24,'2015-01-27','2015-02-19',0)

INSERT INTO dbo.Curso VALUES(3,1,5,4,19,' Microsoft Excel Financiero','Conocimiento intermedio del Excel.','La determinaci�n de intereses simples y compuestos. 
El calculo de tasas efectivas asi como conversiones entre las mismas. 
El calculo del descuento bancario compuesto y determinaci�n del costo efectivo del cr�dito.','Inter�s simple
Inter�s compuesto
Tasa de inter�s
Cronograma de pagos
Descuentos
Factores financieros � anualidades y rentas
Depreciaci�n
Evaluaci�n de proyectos
',200,24,'2015-02-24','2014-03-19',0)

INSERT INTO dbo.Curso VALUES(4,2,6,10,null,'Modelamiento de Datos','Conocimiento b�sico de alg�n lenguaje de programaci�n Vidual y/o t�cnicas de
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
Cuarta forma normal',200,12,'2014-12-06','2014-12-27',1)

INSERT INTO dbo.Curso VALUES(4,2,6,10,21,'Ms SQL Server I - Implementaci�n','Conocimientos de Modelamiento de Datos','Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integraci�n de herramientas de SQL Server 2012','Concepto de base de datos relacional. Sistemas administradores de bases de datos.
Los tipos de datos del sistema que ofrece SQL Server 2012
Creaci�n y optimizaci�n de �ndices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones
Programaci�n en SQL Server 2012
Implementaci�n de desencadenadores',200,12,'2015-01-03','2015-01-24',0)


INSERT INTO dbo.Curso VALUES(4,2,6,10,22,'Ms SQL Server III - Administraci�n','Modelamiento de Datos
SQL Server 2012 � Implementaci�n','Conocer y aplicar las herramientas esenciales para administrar las base de datos y los servidores que trabajan bajo SQL Server 2012','Instalaci�n y configuraci�n del SQL Server 2012
Administraci�n de la Base de Datos y Archivos
Planificaci�n de una Estrategia de Backups
Administraci�n de la Seguridad
Transferencia de Datos
Automatizaci�n de Tareas Administrativas
Monitoreando al SQL Server 2012
Implementando un DataBase Mirroring',200,12,'2015-01-31','2015-02-21',0)

INSERT INTO dbo.Curso VALUES(4,2,6,10,23,'Inteligencia de Negocios Nivel I (Dise�o y Carga del Data Warehouse)','Conocimiento de Conceptos Generales de Base de Datos.
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
Conexi�n a datos externos desde MS Excel',200,12,'2015-02-28','2015-03-21',0)

INSERT INTO dbo.Curso VALUES(5,2,6,10,null,'Introducci�n a SQL','Conocimientos de Modelamiento de Datos','Utilizar las sentencias SELECT en todas sus modalidades.
Utilizar la sintaxis DDL del SQL para crear, modificar o destruir objetos de la base de datos de Oracle.
Reconocer y aplicar las reglas de las restricciones.','Sentencias b�sicas del lenguaje SQL
Consultas avanzadas con SQL
Subconsultas
Manipulaci�n de datos en las tablas
Gesti�n de objetos
Otros objetos de la base de datos
PL/SQL: Bloques, cursores y excepciones
Bloques nominados',200,12,'2014-12-06','2014-12-27',1)

INSERT INTO dbo.Curso VALUES(5,2,6,10,25,'Administraci�n de Base de Datos','Base de Datos Oracle 11g: Introducci�n a SQL','Instalar y configurar la Base de Datos Oracle 11g
Controlar, solucionar problemas y mantener la Base de Datos Oracle 11g
Configurar los servicios de Red de Oracle para la Base de Datos Oracle 11g','Instalaci�n del Software de la Base de Datos Oracle 11g
Creaci�n de una Base de Datos Oracle
Control de la Base de Datos
Estructuras de Almacenamiento
Administracion de Usuarios
Seguridad de Base de Datos Oracle
Servicios de Red de Oracle
Gesti�n de Deshacer
Conceptos de Copia de Seguridad y Recuperaci�n',200,12,'2015-01-03','2015-01-24',0)

INSERT INTO dbo.Curso VALUES(5,2,6,10,26,'Administraci�n de Backup y Afinamiento','Base de Datos Oracle 11g: Administraci�n
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
Automatizaci�n de Tareas con el Planificador',200,12,'2015-01-31','2015-02-21',0)


INSERT INTO dbo.Curso VALUES(6,3,1,5,null,'Algoritmos Estructurado B�sico','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Conocer los elementos de la programaci�n
Conocer y comprender el desarrollo y funcionamiento de las fases del desarrollo del algoritmo
Acceso a datos en la colecci�n de datos','Conceptos de fundamentos de programaci�n.
Fases del desarrollo del algoritmo
Estructuras de control de programa 
Programaci�n Modular SubAlgoritmos
Arreglos de datos
Matrices de datos
',200,24,'2014-12-01','2014-12-17',1)

INSERT INTO dbo.Curso VALUES(6,3,1,5,28,'Algoritmos Estructurado Avanzado','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Utilizar colecciones de datos en memoria con diferentes tipo de datos
Aplicar el uso de pilas de datos
Reutilizar una funci�n dentro de la misma funci�n','Registros de datos
Archivo de datos(Ficheros)
M�todos de ordenamiento y b�squeda de datos
Operaciones con cadena de datos
Estructuras din�micas lineales de datos (pilas, colas y listas enlazadas)
Recursividad',200,24,'2014-12-19','2015-01-05',0)

INSERT INTO dbo.Curso VALUES(6,3,1,5,29,'Fundamentos De Programaci�n Orientada A Objetos','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Conocer los conceptos generales de POO
Conocer el uso de un atributo clase y de un objeto
Aplicar los conceptos del encapsulamiento, Interfaces, Herencia, Polimorfismo','Conceptos fundamentales de POO
Clases y Objetos
Atributos y M�todos
Interfaces
Encapsulamiento
Herencia
Polimorfismo',200,24,'2015-01-07','2014-01-23',0)

INSERT INTO dbo.Curso VALUES(7,3,2,10,null,'Modelamiento de  Datos','Conocimiento b�sico de alg�n lenguaje de programaci�n Vidual y/o t�cnicas de
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
Cuarta forma normal',200,12,'2014-12-06','2014-12-27',1)

INSERT INTO dbo.Curso VALUES(7,3,2,10,31,'MS SQL Server 2012 - Implementaci�n','Conocimientos de Modelamiento de Datos','Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integraci�n de herramientas de SQL Server 2012
Proporcionar al alumno las t�cnicas de manejo de objetos de SQL y programaci�n en SQL Transact y .NET','Concepto de base de datos relacional. Sistemas 
Los tipos de datos del sistema que ofrece SQL Server 2012.
Creaci�n y optimizaci�n de �ndices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL.
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones.
Programaci�n en SQL Server 2012.
Implementaci�n de desencadenadores.',200,12,'2015-01-03','2015-01-24',0)

INSERT INTO dbo.Curso VALUES(7,3,2,10,32,'MS Visual Basic 6.0 - B�sico','Conocimiento Basico de Visual Basic 6.0
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista
','Conocer y Manejar el modelo de programaci�n orientada a objetos aplicando las diferentes
t�cnicas de programaci�n.','Conceptos Fundamentales de Programaci�n
M�todo, Propiedades, Clases, Eventos
Entorno y Elementos principales de Visual Basic
Administraci�n de Proyectos
Controles B�sicos
TextBox, Command, Label
Mec�nica de la escritura de c�digo
M�dulos de c�digo',200,12,'2015-01-31','2015-02-21',0)

INSERT INTO dbo.Curso VALUES(7,3,2,10,33,'MS Visual Basic - Base de Datos','Conocimientos de SQL Server 2000
Experiencia en desarrollo de aplicaciones con alguna herramienta visual, de
preferencia Visual Basic.','Aplicar t�cnicas de programaci�n orientadas a objetos con acceso a base de datos en SQL � SERVER 2000
Administraci�n de proyectos y el acceso a base de datos usando controles enlazados.
Administraci�n de reportes.','Introducci�n
ActiveX Data Object
Objeto Recordset
Control ADO Data
OBJETOS Command y Parameters
M�dulos de Clase y Dlls',200,12,'2015-02-28','2015-03-21',0)

INSERT INTO dbo.Curso VALUES(7,3,2,10,34,'Desarrollo de Aplicaciones .NET con VS.-2012','Conocimiento o experiencia
en programaci�n o desarrollo de aplicaciones y que deseen desarrollar aplicaciones en la
plataforma .Net con Visual Basic .Net','Conocer la estrategia Microsoft .NET y los componentes del Marco .NET
o Describir las caracter�sticas de Visual Studio .NET
o Describir el modelo de programaci�n basado en objetos.','ntroducci�n a Microsoft NET
Uso de variables de tipo valor
nstrucciones y excepciones
Tablas
Programaci�n orientada a objetos
Uso de variables de tipo referencia
Herencia en VB',200,12,'2015-03-28','2015-04-18',0)

INSERT INTO dbo.Curso VALUES(8,3,4,12,null,'Desarrollo de Aplicaciones .NET Con Visual Studio 2012','Conocimientos de programaci�n, POO, bases de datos, ADO.NET, SQL SERVER 2008','Proporcionar al alumno los conocimientos para el desarrollo de aplicaciones en entornos distribuidos con tecnolog�as de �ltima generaci�n Microsoft','Programaci�n Orientada A Objetos
Desarrollo de interfaz de usuario Windows
Trabajando con colecciones de datos
Acceso al sistema de archivos
Programando con Hilos
Usando Expresiones Regulares para validaci�n de datos
Pruebas y depuraci�n de errores
Distribuci�n de aplicaciones Windows',200,12,'2014-12-06','2014-12-27',1)

INSERT INTO dbo.Curso VALUES(8,3,4,12,36,'Acceso a Datos con ADO . NET 4.0 y Visual Studio 2012','Ninguno','Manejar las herramientas de acceso a datos mediante ADO .NET 4.0
Transacciones en 2 capas con LINQ
Aprender a trabajar con informes empresariales de Crystal Reports.','Arquitectura de ADO.NET 4.0
Consulta y mantenimiento de datos en forma conectada.
Manejo de Transacciones.
Trabajo desconectado.
Consumir reportes locales y de Servidor Reporting Services
Acceso a Datos con Entity Data Model y Linq para entidades
Acceso a datos en los servicios en la nube con Windows Azure',200,12,'2015-01-03','2015-01-24',0)

INSERT INTO dbo.Curso VALUES(8,3,4,12,37,'Desarrollo de Aplicaciones Web con ASP .NET Ajax','Ninguno','Al t�rmino del curso el alumno estar� en la capacidad de desarrollar una aplicaci�n Web con ASP.Net con acceso a una base de datos e implementarla.','Crear Aplicaciones Web con Visual Studio 2012
Agregar C�digo a un Formulario Web ASP.NET 4.0
Traceo de Aplicaciones Web ASP.NET 4.0
Validaci�n de Entradas de Usuarios
Creaci�n e Implementaci�n de Controles de Usuario
Configuraci�n, Optimizaci�n y Despliegue de Aplicaciones Web ASP.NET 4.0
 Configuraci�n de la Seguridad en Aplicaciones Web ASP.NET 4.0
ASP.NET 4.0 AJAX en el servidor
Desarrolle aplicaciones con ASP.NET 4.0 con MVC 3',200,12,'2015-01-31','2015-02-21',0)

INSERT INTO dbo.Curso VALUES(8,3,4,12,38,'Taller de desarrollo de Aplicaciones Distribuidas en N capas','Ninguno','Desarrollar de aplicaciones en entornos distribuidos con tecnolog�as de �ltima generaci�n Microsoft, integraci�n de herramientas de SQL Server 2008, utilizando como herramienta Microsoft Visual Studio 2012 y NET Framework 4.0','Fundamentos de Desarrollo de aplicaciones distribuidas
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
Instalaci�n de un aplicaci�n Web en IIS 7.0',200,12,'2015-02-28','2015-03-21',0)

INSERT INTO dbo.Curso VALUES(9,3,7,15,null,'Desarrollo Aplicaciones.NET con C#','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','En este curso los alumnos aprender�n  los fundamentos del Lenguaje de programaci�n  C#  Orientada a Objeto con  NET  Framework 4.0.
','Introducci�n a MICROSOFT .NET y C#
Programaci�n Orientada a Objetos
Herencia
Trabajar con Men�s
Arreglo y Colecciones
Flujos de Datos
Windows Presentation Foundation
Distribuci�n de Aplicaciones Windows',200,12,'2014-12-07','2014-12-28',1)

INSERT INTO dbo.Curso VALUES(9,3,7,15,40,'Desarrollo Aplicaciones con ADO.NET 4.0 y C#','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','El objetivo de este curso es presentar las t�cnicas de programaci�n para bases de datos en la plataforma .NET, utilizando C# como lenguaje base.','SQL Server 2008 para Desarrolladores.
 Arquitectura de ADO.NET 4.0.
Acceso Desconectado.
Consulta y Mantenimiento de Datos en Forma Conectada.
Manejo de Transacciones.
Generar Reportes con CRYSTAL REPORTS
Acceso a Datos con LINQ',200,12,'2015-01-04','2015-01-25',0)

INSERT INTO dbo.Curso VALUES(9,3,7,15,41,'Desarrollo Aplicaciones Web con C# ASP.NET AJAX','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','Este curso otorga los fundamentos necesarios para la implementaci�n de aplicaciones Web ASP.NET usando  Visual C#, enfocado en el ambiente de desarrollo de Visual Studio.NET.','Introducci�n a ASP.NET  AJAX
Uso de los Controles Est�ndar
Dise�o de Sitios Web con P�ginas Maestras
Visi�n General de Acceso a Datos
Acceso a Datos con LINQ to SQL
Administraci�n del Estado
Uso de Autenticaci�n Basada en Formularios
Reportes en ASP.NET',200,12,'2015-02-01','2015-02-25',0)

INSERT INTO dbo.Curso VALUES(9,3,7,15,42,'Desarrollo Aplicaciones Web Distribuidas en N capas con C#','Conocimientos de programaci�n, POO,  bases de datos, ADO.NET','Proporcionar a los estudiantes los conocimientos y habilidades necesarias para desarrollar soluciones basadas  en Capas y Servicios Web para solucionar problemas comunes en un dominio de aplicaci�n distribuida.',' Implementaci�n de Componentes
Arquitectura en Capas
Servicios Web XML
Windows Communication Foundation (WCF)
Configuraci�n de Servicios WCF
Consumiendo Servicios WCF
Microsoft Entity Framework',200,12,'2015-03-01','2015-03-22',0)

INSERT INTO dbo.Curso VALUES(10,3,6,14,null,'PHP Nivel I - Programaci�n Web','Conocimiento b�sico del lenguaje HTML.
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
Procesos B�sicos de Mantenimiento',200,12,'2014-12-07','2014-12-28',1)

INSERT INTO dbo.Curso VALUES(10,3,6,14,44,'PHP Nivel II - DAO-POO','Conocimiento del lenguaje HTML (indispensable)
Conocimiento de programaci�n estructurada','Comprender la sintaxis completa del lenguaje
Comprender la relaci�n de PHP con los servidores Web (Apache)','PHP 5.X Caracter�sticas avanzadas
MySql B�sico � PostGress Basico
Integraci�n PHP - MySql
PHP 5.X Orientaci�n a Objetos
Manejo de Sesiones y Gr�ficos
Carrito de Compra, Upload , PDF y C�digos de Validaci�n
Email y Carrito de Compra
Manejo de Capas � MVC y Ajax',200,12,'2015-01-04','2015-01-25',0)

INSERT INTO dbo.Curso VALUES(10,3,6,14,45,'PHP Nivel III - PHP Avanzado','Conocimiento de PHP Nivel II - DAO-POO
Nociones de Servidor web. ','Comprender la relaci�n de PHP con los servidores Web (Apache)
Realizar conexiones con MYSQL para la creaci�n hojas din�micas','Patrones de Dise�o
Motor de Plantillas PHP - Smarty
WebServices � XML � NuSoap
Framework con PHP
Definiciones previas. Frameworks � Librer�as externas � APIs.
Kumbia
ZendFramework
Synfony',200,12,'2015-02-01','2015-02-25',0)


INSERT INTO dbo.Curso VALUES(11,3,2,8,null,'Java Fundamentos','Lenguaje de programaci�n estructurado, as� como los conceptos de orientaci�n a objetos.
Recomendables pero no requeridos conocimientos de C � C++','Conocer las caracter�sticas del lenguaje java y su uso en el desarrollo de aplicaciones inform�ticas de todo nivel usando los conceptos de la programaci�n orientada a objetos as�
como las caracter�sticas del modelo cliente/servidor.','Estructura de un sistema inform�tico
Atributos: Tipos y �mbitos
Control de flujo y operadores
Inner classes (clases internas)
Interfaz grafica de usuario (GUI).
JDialog y JOptionPane
Eventos:definici�n
Asociaci�n de clases Bean con eventos',200,24,'2014-12-01','2015-12-17',1)

INSERT INTO dbo.Curso VALUES(11,3,2,8,47,'Java Cliente / Servidor','Los alumnos necesitar�n tener experiencia con el lenguaje de programaci�n Java para poder comprender lamateria del curso con �xito.','Conocer las caracter�sticas del lenguaje java y su uso en el desarrollo de aplicaciones inform�ticas de todo nivel usando los conceptos de la programaci�n orientada a objetos as�
como las caracter�sticas del modelo cliente/servidor','Conversi�n de datos
Utilidades
Colecciones
Concurrencia
JDBC
Uso de Statement
Uso de PreparedStatement
Reportes',200,24,'2014-12-19','2015-01-05',0)

INSERT INTO dbo.Curso VALUES(11,3,2,8,48,'Java Aplicaciones Web','Los alumnos necesitar�n tener experiencia con el lenguaje de programaci�n Java para poder comprender la materia del curso con �xito ','Conocer las caracter�sticas del lenguaje java y su uso en el desarrollo de aplicaciones inform�ticas de todo nivel usando los conceptos de la programaci�n orientada a objetos as�
como las caracter�sticas del modelo cliente/servidor','Aplicaciones WEB
JSP
Uso de Ajax
Java Bean - Uso
Persistencia
Sesiones en JSP
JSON',200,24,'2015-01-07','2015-01-23',0)

INSERT INTO dbo.Curso VALUES(12,3,1,9,null,'Android B�sico','Educaci�n media o superior con conocimientos b�sico de programaci�n.','Conozcan los principales componentes para desarrollar una aplicaci�n en Android
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
Toast. Uso de notificaciones',200,24,'2014-12-02','2014-12-25',1)

INSERT INTO dbo.Curso VALUES(12,3,1,9,50,'Android Intermedio','Educaci�n media o superior con conocimientos b�sico de programaci�n.
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
Archivos en memoria interna y memoria externa. Clase Environment.',200,24,'2014-12-30','2015-01-22',0)

INSERT INTO dbo.Curso VALUES(12,3,1,9,51,'Android Avanzado','Educaci�n media o superior con conocimientos b�sico de programaci�n.
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
Despliegue y publicaci�n de aplicaciones en Google Play. Criterios. ',200,24,'2015-01-27','2015-02-19',0)

INSERT INTO dbo.Curso VALUES(12,3,1,9,52,'Android App Inventor','Educaci�n media o superior con conocimientos b�sico de programaci�n.
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
',200,24,'2015-02-24','2015-03-19',0)

INSERT INTO dbo.Curso VALUES(13,4,3,6,null,'Autocad 2014 - B�sico ','Se necesita conocimientos previos en Windows a nivel de usuario, adem�s tener alg�n conocimiento b�sico de dibujo t�cnico, ello facilitara su aprendizaje del software.','Manejar las herramientas de dibujo y edici�n de objetos. los cuales le permitir�n desarrollar un dibujo t�cnico de manera r�pida y sencilla a la vez.','Entorno de trabajo
Unidades de medida y sistema de coordenadas
Edici�n y dibujo de Objetos
Capas y Propiedades de Objetos
Crear estilos de texto y sombreado
Dimensionado
Configuraciones de p�gina y Ploteo
Escala',200,24,'2014-12-01','2015-01-01',1)

INSERT INTO dbo.Curso VALUES(13,4,3,6,54,'Autocad 2014 - Intermedio',' La actual o una versi�n anterior de AutoCAD
Creaci�n y edici�n de objetos b�sicos de AutoCAD','Aplicaci�n de t�cnicas de Edici�n (Uso de grips)
Aplicaci�n de restricciones geom�tricas
Dibujo Isom�trico (piezas mec�nicas, tuber�as, Vivienda)','HERRAMIENTAS DE PRODUCTIVIDAD E ISOMETR�A
L�NEAS DE CONSTRUCCI�N Y REFERENCIA DE BLOQUES
REDEFINICION DE BLOQUES, ATRIBUTOS Y TABLAS
ENLACE CON ARCHIVOS EXTERNOS E IM�GENES
 POLIGONALES Y CURVAS
LAYOUTS Y PLOTEO
UTILIDADES
PERSONALIZACI�N DEL AUTOCAD',200,24,'2014-01-02','2015-02-04',0)

INSERT INTO dbo.Curso VALUES(13,4,3,6,55,'Autocad 2014 - Avanzado ','Se requieren conocimientos de AutoCAD B�sico y Intermedio.','Manejar adecuadamente el espacio de trabajo en 3d.
Conocer y utilizar r�pidamente los diferentes comandos de navegaci�n en 3d.','Herramientas visualizaci�n y trazado 3D
Modelado con S�lidos
Modificar S�lidos y superficies
Creaci�n de S�lidos y superficies
Edici�n de S�lidos
Modelado con Superficies y mallas
Presentaci�n Foto realista
Configuraciones de p�gina y Layouts',200,24,'2015-02-05','2015-03-10',0)

INSERT INTO dbo.Curso VALUES(14,4,7,7,null,'Corel Draw X6 - Designer','La actual o una versi�n anterior de CorelDraw X5
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
Herramienta Texto (uso avanzado)',200,24,'2014-12-01','2015-01-01',1)

INSERT INTO dbo.Curso VALUES(14,4,7,7,57,'Corel Draw X6 - Expert','Haber realizado el curso de Corel Draw Designer o acreditar conocimientos
equivalentes a juicio de la Instituci�n','Capacitar al alumno en el manejo de la interfase de Corel Draw, la creaci�n y edici�n de dise�os simples usando figuras geom�tricas, curvas libres, definici�n de filetes y rellenos','Manejo de im�genes
Insertando como Objeto Nuevo
Vi�etas y Numeraci�n
Trabajar con Capas
Crear una plantilla de estilo
PowerTrace
Vectorizaci�n de Im�genes
Impresi�n',200,24,'2014-01-02','2015-02-04',0)

INSERT INTO dbo.Curso VALUES(14,4,7,7,58,'Adobe Illustrator CS6 - Designer','nose requiere conocimiento alguno','Teor�a: Uso de herramientas para dibujo (vectorial), texto en p�rrafo o art�stico y diagramaci�n de cuadros estad�sticos. Utilizaci�n de filtros para formas en la imagen y cambios de color.','EL �REA DE TRABAJO
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
GR�FICOS PARA LA WEB E IMPRESION',200,24,'2015-02-05','2015-03-10',0)

INSERT INTO dbo.Curso VALUES(14,4,7,7,59,'Adobe Photoshop CS6 - Designer','Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos b�sicos de cualquier sistema operativo','Concepto de resoluci�n y manejo de las im�genes en capas. Empleo de herramientas para selecci�n y retoque fotogr�fico. Cambio de los modos de color, uso de filtros para la creaci�n de texturas.
','Requerimientos del Sistema para la instalaci�n del software
Herramientas para seleccionar b�sicas, marco rectangular,, elipse, lazo, lazo poligonal, lazo magn�tico, varita y selecci�n r�pida.
Clona
Herramientas para editar la imagen
Capas de texto
L�neas gu�as
Opciones de Ajustes de Color
Bloqueo de capas
Modos de fusi�n de capas',200,24,'2015-03-11','2015-04-13',0)

INSERT INTO dbo.Curso VALUES(14,4,7,7,60,'Adobe Photoshop CS6 - Expert','Haber llevado el modulo de Photoshop Designer.','Concepto de resoluci�n y manejo de las im�genes en capas. Empleo de herramientas para selecci�n y retoque fotogr�fico.
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
Impresi�n',200,24,'2015-04-14','2015-05-15',0)

INSERT INTO dbo.Curso VALUES(14,4,7,7,61,'Adobe Indesign CS6','Haber realizado el curso de Operaci�n B�sica de Microsoft Windows o acreditar
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
Manejo de P�ginas - Plugins',200,24,'2015-05-18','2015-06-18',0)

INSERT INTO dbo.Curso VALUES(15,4,1,4,null,'Adobe Dreamweaver CS6','Tener muchos deseos de aprender y lograr tus metas trazadas.
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
Bloquear una regi�n editable',200,24,'2014-12-01','2015-01-01',1)

INSERT INTO dbo.Curso VALUES(15,4,1,4,63,'Adobe Dreamweaver CS6 - Acceso BD & Adobe Fireworks CS6','Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Instituci�n','Como generar mejores efectos animados, es un software especializado para la creaci�n, administraci�n y edici�n de p�ginas Web multimedia (texto, sonido e im�genes).','Elementos DIV
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
Exportaci�n desde Fireworks',200,24,'2014-01-02','2015-02-04',0)

INSERT INTO dbo.Curso VALUES(15,4,1,4,64,'Adobe Flash CS6 - Animaciones B�sicas','Conocimientos b�sicos de Adobe Flash a nivel de usuario.','Manejo de conceptos para la animaci�n, empleo de herramientas para dibujo, texto y color. Manipulaci�n de las librer�as y paneles de efectos. ','Iniciar Flash.
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
Proyectores autoejecutables',200,24,'2015-02-05','2015-03-10',0)

INSERT INTO dbo.Curso VALUES(15,4,1,4,65,'Adobe Flash CS6 - Animaciones Avanzadas','Se requiere conocimiento de adobe Flash Basico o intermedio.','El participante, al finalizar el m�dulo, podr� crear activos para las p�ginas Web y tambi�n dise�ar p�ginas est�ticas y din�micas eficientes, atractivas y f�ciles de navegar.','Fundamentos de ActionScript 
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
Settings de publicaci�n',200,24,'2015-03-11','2015-04-13',0)


INSERT INTO dbo.Curso VALUES(16,5,5,13,null,'Linux - Administraci�n','Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP','Capacitar al participante en las t�cnicas b�sicas de personalizaci�n y reducci�n de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, as� como tambi�n en criptograf�a y cifrado','Introducci�n de Sistemas Operativos con Linux
Sistema de Archivos
Aplicaciones
Instalaci�n del Sistema Operativo
Networking bajo Linux
Grupos, usuarios, archivos, propiedades y permisos
Compartici�n de Archivos',200,12,'2014-12-06','2014-12-27',1)

INSERT INTO dbo.Curso VALUES(16,5,5,13,67,'Linux - Administraci�n de Servicios Intranet','Conocimientos b�sicos en redes, conectividad y TCP/IP
Linux � Administraci�ns','Usar el Filtrado de paquetes Por medio de TCP/IP.
Instalar y configurar entornos Microsoft como servidor Proxy y Firewall para un entorno empresarial.','Domain Name Service (DNS)
Sendmail
Apache Web Server
Dynamic Host Control Protocol (DHCP)
Squid Proxy Server',200,12,'2015-01-03','2015-01-24',0)

INSERT INTO dbo.Curso VALUES(16,5,5,13,68,'Linux - Seguridad en Redes','Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP
','Capacitar al participante en las t�cnicas b�sicas de personalizaci�n y reducci�n de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, as� como tambi�n en criptograf�a y cifrado','PKI - Criptograf�a de Clave P�blica
Servicio HTTPS
Servicio SENDMAIL Seguro
Servicio OpenSSH
Servicio IPtables
Servicio VPN',200,12,'2015-01-31','2015-02-21',0)


--------------------------tabla Matricula Curso ----------------------

INSERT INTO dbo.MatriculaCurso VALUES(3,7,10001,'2014-11-15T14:25:10')

INSERT INTO dbo.MatriculaCurso VALUES(5,1,10003,'2014-11-17T14:10:10')

INSERT INTO dbo.MatriculaCurso VALUES(6,17,10004,'2014-11-18T06:05:10')

INSERT INTO dbo.MatriculaCurso VALUES(8,25,10006,'2014-11-20T14:25:10')

INSERT INTO dbo.MatriculaCurso VALUES(10,28,10008,'2014-11-22T14:13:10')

INSERT INTO dbo.MatriculaCurso VALUES(11,44,10009,'2014-11-23T14:25:10')

INSERT INTO dbo.MatriculaCurso VALUES(12,36,10010,'2014-11-24T14:25:10')

--------------------------tabla Matricula MODULO ----------------------

INSERT INTO dbo.MatriculaModulo VALUES(4,10,3,10002,'2014-11-16T21:08:10')

INSERT INTO dbo.MatriculaModulo VALUES(7,6,3,10005,'2014-11-19T22:25:10')

INSERT INTO dbo.MatriculaModulo VALUES(9,2,1,10007,'2014-11-21T20:10:10')