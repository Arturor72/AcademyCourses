<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Administrador.aspx.cs" Inherits="AcademyCourses.Vista.Registro_Administrador" %>

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
	<style type="text/css">
        .auto-style6 {
            width: 130px;
        }
        .auto-style7 {
            width: 131px;
        }
    </style>
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
													        <i class="icon-group blue"></i>
													        Nuevo administrador 
												        </h4>

												        <div class="space-6"></div>
												
													        <fieldset>
														        <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox1" class="span12" placeholder="Nombre" runat="server"></asp:TextBox>
															        </span>
														        </label>

														        <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox2" class="span12" placeholder="Apellido paterrno" runat="server"></asp:TextBox>
															        </span>
														        </label>

														        <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox3" class="span12" placeholder="Apellido materrno" runat="server"></asp:TextBox>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                         <select id="selectbasic" name="selectbasic" class="input-medium">
															              <option>Femenino</option>
															              <option>Masculino</option>
															            </select>
															        </span>
														        </label>

                                                                <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox4" class="span12" placeholder="Código de trabajador" runat="server"></asp:TextBox>
															        </span>
														        </label>
                                                                                            
                                                        
														        <label>
															        <span class="block input-icon input-icon-right">
																        <input type="email" class="span12" placeholder="Correo" />
																        <i class="icon-envelope"></i>
															        </span>
														        </label>

														        <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox5" class="span12" placeholder="Usuario" runat="server"></asp:TextBox>
																        <i class="icon-user"></i>
															        </span>
														        </label>

														        <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox6" type="password" class="span12" placeholder="Contraseña" runat="server"></asp:TextBox>
																        <i class="icon-lock"></i>
															        </span>
														        </label>



														        <label>
															        <span class="block input-icon input-icon-right">
                                                                        <asp:TextBox ID="TextBox7" type="password" class="span12" placeholder="Reescriba Contraseña" runat="server"></asp:TextBox>
																        <i class="icon-retweet"></i>
															        </span>
														        </label>


														        <div class="space-24"></div>

														        <div class="clearfix">
															        <button type="reset" class="width-30 pull-left btn btn-small">
																        <i class="icon-refresh"></i>
																        Borrar
															        </button>
                                                                    <asp:Button ID="Button3" runat="server" Text="Registrarse" class="width-65 pull-right btn btn-small btn-success"/>
														        </div>
													        </fieldset>
												        </div>

											        <div class="toolbar center">
												        <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
													        <i class="icon-arrow-left"></i>
													        Regresar
												        </a>
											        </div>
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
