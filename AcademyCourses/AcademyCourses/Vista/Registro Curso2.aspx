<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro Curso2.aspx.cs" Inherits="AcademyCourses.Vista.Registro_Curso2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
								<img class="nav-user-photo" src="../App_Themes/Tema/assets/avatars/avatar2.png" alt="Jason's Photo" />
								<span class="user-info">
									<small>Bienvenid@</small>
                                    <asp:Label ID="lblBienvenida" runat="server" Text=""></asp:Label>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Perfil
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="Index.aspx">
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



		<!--/MENU-->
		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				


				<!--/.LISTA DE MENU-->				
				<ul class="nav nav-list">
					
					<!--/.INICIO-->	
					<li>
						<a href="IndexAlumno.aspx">
							<i class="icon-home home-icon"></i>
							<span class="menu-text"> Inicio </span>
						</a>
					</li>
					<!--/.FIN INICIO-->	

					<!--/.CURSOS-->	
					<li>
						<a href="" class="dropdown-toggle">
							<i class="icon-desktop"></i>
							<span class="menu-text"> Cursos </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a href="CursosInscritos.aspx" >
									<i class="icon-double-angle-right"></i>

									Inscritos 
									
								</a>

						
							</li>

							<li>
								<a href="MasCursos.aspx">
									<i class="icon-double-angle-right"></i>
									Más cursos
								</a>
							</li>

							<li>
								<a href="Registro Curso2.aspx">
									<i class="icon-double-angle-right"></i>
									Matricula
								</a>
							</li>

							
						</ul>
					</li>					<!--/.FIN CURSOS-->	
	

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
							
							<h2 >Matricula</h2>
						</li>
					</ul>
	
				</div>

				<div class="page-content">
					<div class="row-fluid">
						<div class="span12">
							
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
													        Matricula
												        </h4>

												        <div class="space-6"></div>
												
													   
                                                        <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">Matricula
                                                                        <asp:DropDownList ID="ddlCursoModulo" runat="server" class="span12" OnSelectedIndexChanged="ddlCursoModulo_SelectedIndexChanged">
                                                                            <asp:ListItem Value="0">Curso</asp:ListItem>
                                                                            <asp:ListItem Value="1">Módulo</asp:ListItem>
                                                                    
                                                                        </asp:DropDownList>
															      </div>  
                                                                  <div class="span3"></div>  
 	                                                    </div>

                                                        <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="txtCodigo" class="span12" placeholder="Código" runat="server"></asp:TextBox>
															      
                                                                  </div>  
                                                                  <div class="span3">
                                                                      
                                                                  
                                                                      
                                                                      
                                                                  </div> 
 	                                                    </div>

                                                        <div class="row-fluid">
                                                                  <div class="span3" > 
                                                             
 	                                                              </div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="txtRecibo" class="span12" placeholder="Código recibo" runat="server"></asp:TextBox>
															      </div>  

                                                                  <div class="span3">
                                                                  </div> 
 	                                                    </div>



                                                        <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" class="width-40 pull-right btn btn-small btn-success" OnClick="btnRegistrar_Click"/>
															      </div>  
                                                                  <div class="span3">
                                                                                      

                                                                  </div>  
 	                                                    </div>

                                                                                                                <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                 
															      </div>  
                                                                  <div class="span3">

                                                                  </div>  
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
						</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->

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
	</body>
</html>

