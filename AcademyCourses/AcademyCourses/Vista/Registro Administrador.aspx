<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro Administrador.aspx.cs" Inherits="AcademyCourses.Vista.Registro_Administrador" %>

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

   <%-- <script type="text/javascript">

        function alertaRegistroAdmin() {
            alert("Administrador registrado satisfactoriamente");
        }

    </script>--%>--%>

    <style type="text/css">
#dialogoverlay{
	display: none;
	opacity: .8;
	position: fixed;
	top: 0px;
	left: 0px;
	background: #FFF;
	width: 100%;
	z-index: 10;
}
#dialogbox{
	display: none;
	position: fixed;
	background: #000;
	border-radius:7px; 
	width:550px;
	z-index: 10;
}
#dialogbox > div{ background:#FFF; margin:8px; }
#dialogbox > div > #dialogboxhead{ background: #666; font-size:19px; padding:10px; color:#CCC; }
#dialogbox > div > #dialogboxbody{ background:#333; padding:20px; color:#FFF; }
#dialogbox > div > #dialogboxfoot{ background: #666; padding:10px; text-align:right; }
</style>

    <script>
        function CustomAlert() {
            this.render = function (dialog) {
                var winW = window.innerWidth;
                var winH = window.innerHeight;
                var dialogoverlay = document.getElementById('dialogoverlay');
                var dialogbox = document.getElementById('dialogbox');
                dialogoverlay.style.display = "block";
                dialogoverlay.style.height = winH + "px";
                dialogbox.style.left = (winW / 2) - (550 * .5) + "px";
                dialogbox.style.top = "100px";
                dialogbox.style.display = "block";
                document.getElementById('dialogboxhead').innerHTML = "Mensaje del Sistema";
                document.getElementById('dialogboxbody').innerHTML = dialog;
                document.getElementById('dialogboxfoot').innerHTML = '<button onclick="Alert.ok()">OK</button>';
            }
            this.ok = function () {
                document.getElementById('dialogbox').style.display = "none";
                document.getElementById('dialogoverlay').style.display = "none";
            }
        }
        var Alert = new CustomAlert();
</script>



	</head>

	<body>
		
<div id="dialogoverlay"></div>
<div id="dialogbox">
  <div>
    <div id="dialogboxhead"></div>
    <div id="dialogboxbody"></div>
    <div id="dialogboxfoot"></div>
  </div>
</div>

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



		
		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				


				<!--/.LISTA DE MENU-->				
				<ul class="nav nav-list">
					
					<!--/.CURSOS-->	
					<li>
						<a href="" class="dropdown-toggle">
							<i class="icon-desktop"></i>
							<span class="menu-text"> Cursos </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							    <li>
								    <a href="IndexAdministrador.aspx">
									    <i class="icon-double-angle-right"></i>
									    Listar  
								    </a>
							     </li>

							     <li>
								    <a href="Registro_Curso.aspx">
									    <i class="icon-double-angle-right"></i>
								        Nuevo curso
								    </a>
							     </li>
                         </ul>
					   </li>
					<!--/.FIN CURSOS-->	


                    <!--/.ADMINISTRADORES-->	
					<li>
						<a href="" class="dropdown-toggle">
							<i class="icon-desktop"></i>
							<span class="menu-text"> Administradores </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							    <li>
								    <a href="Registro Administrador.aspx">
									    <i class="icon-double-angle-right"></i>
									    Nuevo administrador  
								    </a>
							     </li>
                         </ul>
					   </li>
					<!--/.FIN administradores-->

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
							<h2 >Administradores-Nuevo administrador</h2>
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

												        
                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="TextBox1" class="span12" placeholder="Nombre" runat="server"></asp:TextBox>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese nombre" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                  </div>  
 	                                                         </div>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="TextBox2" class="span12" placeholder="Apellido paterrno" runat="server"></asp:TextBox>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese apellido paterno" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                  </div>  
 	                                                         </div>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="TextBox3" class="span12" placeholder="Apellido materrno" runat="server"></asp:TextBox>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese apellido materno" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                  </div>  
 	                                                         </div>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:DropDownList ID="DropDownList1" runat="server" class="span12">
                                                                            <asp:ListItem Value="0">Femenino</asp:ListItem>
                                                                            <asp:ListItem Value="1">Masculino</asp:ListItem>
                                                                        </asp:DropDownList>
															      </div>  
                                                                  <div class="span3"></div>  
 	                                                         </div>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="TextBox4" class="span12" placeholder="Código de trabajador" runat="server"></asp:TextBox>
															      </div>  
                                                                <div class="span3" >
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Ingrese codigo de trabajador" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                  </div>  

 	                                                         </div>

                                                             <div class="row-fluid">
                                                                  <div class="span3" >
                                                                    
                                                                  </div>  
                                                                  <div class="span6">
                                                                        <asp:TextBox ID="TextBox50" class="span12" placeholder="Correo" runat="server"></asp:TextBox>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ingrese correo electrónico" ControlToValidate="TextBox50" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox50" ErrorMessage="Ingrese un correo electrónico valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                                                  </div>  
 	                                                         </div>

                                                        <%--    <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <input type="email" class="span12" placeholder="Correo" />
															      </div>  
                                                                  <div class="span3"></div>  
 	                                                         </div>--%>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <asp:TextBox ID="TextBox5" class="span12" placeholder="Usuario" runat="server"></asp:TextBox>
																            <i class="icon-user"></i>
															            </span>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Ingrese usuario" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                  </div>  
 	                                                         </div>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <asp:TextBox ID="TextBox6" type="password" class="span12" placeholder="Contraseña" runat="server"></asp:TextBox>
																            <i class="icon-lock"></i>
															            </span>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ingrese contraseña" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Las contraseñas no son iguales" ForeColor="Red">*</asp:CompareValidator>
                                                                  </div>  
 	                                                         </div>

                                                            <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <asp:TextBox ID="TextBox7" type="password" class="span12" placeholder="Reescriba Contraseña" runat="server"></asp:TextBox>
																            <i class="icon-retweet"></i>
															            </span>
															      </div>  
                                                                  <div class="span3">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Reeingrese la contraseña" ControlToValidate="TextBox7" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                  </div>  
 	                                                         </div>

                                                             <div class="space-18"></div>

                                                             <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <div class="clearfix">

                                                                        <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Registrarse" class="width-45 pull-right btn btn-small btn-success"/>
														                </div>
															      </div>  
                                                                  <div class="span3"></div>  
 	                                                          </div>

                                                               <div class="row-fluid">
                                                                  <div class="span3" ></div>  
                                                                  <div class="span6">
                                                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
															      </div>  
                                                                  <div class="span3">
                                                                     
                                                                  </div>  
 	                                                          </div>



										              </div><!--/widget-main-->
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
