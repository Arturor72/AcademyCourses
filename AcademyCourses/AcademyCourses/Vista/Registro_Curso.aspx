<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registro_Curso.aspx.cs" Inherits="AcademyCourses.Vista.Registro_Curso" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    

		<title>Academy Courses</title>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!--basic styles-->

		<link href="../App_Themes/Tema/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="../App_Themes/Tema/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="../App_Themes/Tema/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!--page specific plugin styles-->

		<!--fonts-->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!--ace styles-->

		<link rel="stylesheet" href="../App_Themes/Tema/assets/css/ace.min.css" />
		<link rel="stylesheet" href="../App_Themes/Tema/assets/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="../App_Themes/Tema/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!--inline styles related to this page-->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>

	<body>
		

		<!--/.BARRA SUPERIOR-->
		<div class="navbar"> 
			<div class="navbar-inner">
				<div class="container-fluid">
					
					<a href="#" class="brand">
						<small>
							<i class="icon-desktop"></i>
							Academy Courses
						</small>
					</a><!--/.brand-->


					<ul class="nav ace-nav pull-right">
						

					

					<!--/BIENVENIDO-->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="../App_Themes/Tema/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Bienvenido</small>
									Jason
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Configuraciones
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Perfil
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="icon-off"></i>
										Salir
									</a>
								</li>
							</ul>
						</li>
					<!--/FIN BIENVENIDO-->



					</ul><!--/.ace-nav-->
				</div><!--/.container-fluid-->
			</div><!--/.navbar-inner-->
		</div>
		<!--/.FIN BARRA SUPERIOR-->



		
		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				


				<!--/.LISTA DE MENU-->				
				<ul class="nav nav-list">
					
					<!--/.INICIO-->	
					<li>
						<a href="indexalumno.html">
							<i class="icon-home home-icon"></i>
							<span class="menu-text"> Inicio </span>
						</a>
					</li>
					<!--/.FIN INICIO-->	

					<!--/.CURSOS-->	
					<li>
						<a href="">
							<i class="icon-text-width"></i>
							<span class="menu-text"> Cursos </span>
						</a>
					</li>
					<!--/.FIN CURSOS-->	

					<!--/. -->	
					<li>
						<a href="">
							<i class="icon-text-width"></i>
							<span class="menu-text"> Profesores </span>
						</a>
					</li>
					<!--/.FIN-->	
											
					
				</ul><!--/.nav-list-->
				<!--/.FIN LISTA DE MENU-->


				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<h2 >Inicio</h2>
						</li>
					</ul>
	
				</div>

				
                <!--INICIO HOJA-->
                
                <div class="page-content">
					<div class="row-fluid">
						<div class="span12">
                              <form id="form1" runat="server">
                                    <div class="space-6"></div>
                                    <div class="row-fluid">
                                        <div class="position-relative">
                                 
                                            <div id="signup-box" class="signup-box widget-box no-border">
										        <div class="widget-body">
											        <div class="widget-main">
												        <h4 class="header green lighter bigger">
													        Nuevo curso
												        </h4>

												        <div class="space-6"></div>
												
													        <fieldset>
                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox1" class="span12" placeholder="Nombre" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <label>Módulo
															        <span class="block input-icon input-icon-right">
                                                                         <select id="select1" name="selectbasic" class="input-medium  span12">
															              <option>Especialista en ofimática</option>
															              <option>Técnico en Computación</option>
                                                                          <option>Especialista Excel Empresarial </option>
                                                                          <option>Data Base Administrador</option>
                                                                          <option>Administración de BD en Oracle</option>
                                                                          <option>Programación Estructurada</option>
                                                                          <option>Visual Basic Developer</option>
                                                                          <option>NET Developer</option>
                                                                          <option>NET C#</option>                                                                                                                                                                                                                                
                                                                          <option>PHP Developer</option>   
                                                                          <option>Java Developer</option>
                                                                          <option>Android Developer</option>
                                                                          <option>AutoCAD 2014</option>
                                                                          <option>Diseño Gráfico Digital</option>   
                                                                          <option>Web Designer Professional</option>
                                                                          <option>Especialista en Linux</option>                                       
                                                                                                                                                                                                                                                                                                              
															            </select>
															        </span>
														        </label>


                                                                <label>Categoría
															        <span class="block input-icon input-icon-right">
                                                                         <select id="select2" name="selectbasic" class="input-medium  span12">
															              <option>Base de Datos</option>
															              <option>Computación</option>
                                                                          <option>Diseño</option>
                                                                          <option>Hardware y Redes</option>
                                                                          <option>Programación</option>
                                                                                                                                                                                                                                                                    
															            </select>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox2" class="span12" placeholder="Número de horas" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox3" class="span12" placeholder="Precio" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox4" class="span12" placeholder="Requisitos" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox5" class="span12" placeholder="Temario" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox6" class="span12" placeholder="Fecha de inicio" runat="server"></asp:TextBox>
                                                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox6"></asp:CalendarExtender>
                                                                        <asp:TextBox ID="TextBox7" class="span12" placeholder="Fecha de fin" runat="server" ></asp:TextBox>
                                                                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox7"></asp:CalendarExtender>
                                                                    </span>Horario
															        <span class="block input-icon input-icon-right">
                                                                         <select id="select3" name="selectbasic" class="input-medium  span12">
															              <option>Lunes,Martes,Miercoles,Jueves,Viernes 9-10am</option>
															              <option>Lunes,Martes,Miercoles,Jueves,Viernes 10-11pm</option>
                                                                          <option>Lunes,Miercoles,Viernes 11am-2pm</option>
                                                                          <option>Martes,Jueves 11am-2pm</option>
                                                                          <option>Lunes,Miercoles,Viernes 3-5pm</option>
                                                                          <option>Lunes,Martes,Miercoles,Jueves,Viernes 5-6pm</option>
                                                                          <option>Lunes,Martes,Miercoles,Jueves,Viernes 6-7pm</option>
                                                                          <option>Lunes,Miercoles,Viernes 7-9pm</option>
                                                                          <option>Martes,Jueves 7-9pm</option>
                                                                          <option>Sabado 10am-2pm</option>
                                                                          <option>Sabado 2-5pm</option>
                                                                          <option>Sabado 5-8pm</option>
                                                                          <option>Sabado 8-11pm</option>
                                                                          <option>Domingo 10am-2pm</option>
                                                                          <option>Domingo 2-5pm</option>
                                                                                                                                                                                                                                                           
															            </select>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox9" class="span12" placeholder="Profesor" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <asp:Button ID="Button1" runat="server" Text="Registrar" class="width-65 pull-right btn btn-small btn-success"/>
                                                                

										                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnableScriptGlobalization="true" runat="server">
                                                                </asp:ToolkitScriptManager>
                                                                

										        </div><!--/widget-body-->
									        </div><!--/signup-box-->
                                        </div>
                                    </div>
                                        </form>

						</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->

                <!--FIN HOJA-->



				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-mini btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-class="default" value="#438EB9" />#438EB9
									<option data-class="skin-1" value="#222A2D" />#222A2D
									<option data-class="skin-2" value="#C6487E" />#C6487E
									<option data-class="skin-3" value="#D0D0D0" />#D0D0D0
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-header" />
							<label class="lbl" for="ace-settings-header"> Fixed Header</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>
					</div>
				</div><!--/#ace-settings-container-->
			</div><!--/.main-content-->
		</div><!--/.main-container-->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>

		<!--basic scripts-->

		<!--[if !IE]>-->

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		<!--<![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]>-->

		<script type="text/javascript">
		    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
		</script>

		<!--<![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
		    if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>
		<script src="../App_Themes/Tema/assets/js/bootstrap.min.js"></script>

		<!--page specific plugin scripts-->

		<!--ace scripts-->

		<script src="../App_Themes/Tema/assets/js/ace-elements.min.js"></script>
		<script src="../App_Themes/Tema/assets/js/ace.min.js"></script>

		<!--inline scripts related to this page-->

        <script src="../App_Themes/Tema/assets/js/jquery.dataTables.min.js"></script>
		<script src="../App_Themes/Tema/assets/js/jquery.dataTables.bootstrap.js"></script>



		<!--inline scripts related to this page-->

		<script type="text/javascript">
		    $(function () {
		        var oTable1 = $('#tabla').dataTable({
		            "aoColumns": [
                      { "bSortable": false },
                      null, null, null, null, null,
                      { "bSortable": false }
		            ]
		        });


		        $('table th input:checkbox').on('click', function () {
		            var that = this;
		            $(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function () {
					    this.checked = that.checked;
					    $(this).closest('tr').toggleClass('selected');
					});

		        });


		        $('[data-rel="tooltip"]').tooltip({ placement: tooltip_placement });
		        function tooltip_placement(context, source) {
		            var $source = $(source);
		            var $parent = $source.closest('table')
		            var off1 = $parent.offset();
		            var w1 = $parent.width();

		            var off2 = $source.offset();
		            var w2 = $source.width();

		            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
		            return 'left';
		        }
		    })
		</script>

	</body>


</html>
