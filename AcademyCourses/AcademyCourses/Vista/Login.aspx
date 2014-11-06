<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AcademyCourses.Vista.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  		<title>Academy Courses - Login</title>


		<meta name="description" content="User login page" />

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
	

</head>
<body class="login-layout" >
    <form id="form1" runat="server">
    <div class="main-container container-fluid">
        <div class="main-content">
            <div class="row-fluid">
                <div class="span12">
                    <div class="login-container">
                        <div class="row-fluid">
								<div class="center">
									<h1>
										<i class="icon-desktop"></i>
										<span class="white">Academy Courses</span>
									</h1>
									
								</div>
                            <div class="space-6"></div>
                            <div class="row-fluid">
                                <div class="position-relative">
                                    <div id="login-box" class="login-box visible widget-box no-border">
                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <div class="space-6"></div>
                                                <fieldset>
                                                    <label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox1" class="span12" placeholder="Usuario" runat="server"></asp:TextBox>
																<i class="icon-user"></i>
															</span>
														</label>
                                                    <label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox2" type="password" class="span12" placeholder="Contraseña" runat="server"></asp:TextBox>
																<i class="icon-lock"></i>
															</span>
													</label>
                                                    <div class="space"></div>

                                                    <div class="clearfix">
															<label class="inline">
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
																<span class="lbl"> Recordarme</span>
															</label>
                                                            <asp:Button ID="Button1" runat="server" Text="Entrar" class="width-35 pull-right btn btn-small btn-primary" OnClick="Button1_Click"/>
														</div>
                                                </fieldset>
                                                <div class="space-4"></div>
                                            </div><!--/widget-main-->

                                            <div class="toolbar clearfix">
												<div>
													<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
														<i class="icon-arrow-left"></i>
														Olvidé mi contraseña
													</a>
												</div>

												<div>
													<a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">
														Registrarse
														<i class="icon-arrow-right"></i>
													</a>
												</div>
											</div>


                                        </div><!--/widget-body-->
                                    </div><!--/login-box-->
                                   
                                     <div id="forgot-box" class="forgot-box widget-box no-border">
                                        <div class="widget-body">
                                            <div class="widget-main">
												<h4 class="header red lighter bigger">
													<i class="icon-key"></i>
													Recuperar contraseña
												</h4>

												<div class="space-6"></div>
												<p>
													Ingrese su correo electrónico para recibir las instrucciones:
												</p>

													<fieldset>
														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox3" type="email" class="span12" placeholder="Email" runat="server"></asp:TextBox>
                                                                <i class="icon-envelope"></i>
															</span>
														</label>

														<div class="clearfix">
                                                            <asp:Button ID="Button2" runat="server" class="width-35 pull-right btn btn-small btn-danger" Text="Enviar" />
														</div>
													</fieldset>
											</div><!--/widget-main-->
                                            
                                            <div class="toolbar center">
												<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
													Regresar
													<i class="icon-arrow-right"></i>

												</a>
											</div>
                                        </div><!--/widget-body-->
                                    </div><!--/forgot-box-->

                                    <div id="signup-box" class="signup-box widget-box no-border">
										<div class="widget-body">
											<div class="widget-main">
												<h4 class="header green lighter bigger">
													<i class="icon-group blue"></i>
													Nuevo usuario
												</h4>

												<div class="space-6"></div>
												<p> Ingrese sus datos: </p>
													<fieldset>
														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox4" class="span12" placeholder="Nombre"  runat="server"></asp:TextBox>
															</span>
														</label>

														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox5" class="span12" placeholder="Apellido paterrno" runat="server"></asp:TextBox>
															</span>
														</label>

														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox6" class="span12" placeholder="Apellido materrno" runat="server"></asp:TextBox>
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
																<input type="email" class="span12" placeholder="Correo" />
																<i class="icon-envelope"></i>
															</span>
														</label>

														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox7" class="span12" placeholder="Usuario" runat="server"></asp:TextBox>
																<i class="icon-user"></i>
															</span>
														</label>

														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox8" type="password" class="span12" placeholder="Contraseña" runat="server"></asp:TextBox>
																<i class="icon-lock"></i>
															</span>
														</label>



														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox9" type="password" class="span12" placeholder="Reescriba Contraseña" runat="server"></asp:TextBox>
																<i class="icon-retweet"></i>
															</span>
														</label>



														<label class="control-label" for="selectbasic">Matricula</label>
				<!--/REVISAR, COSTADO-->											 
															    <select id="select1" name="selectbasic" class="input-medium">
															      <option>Curso</option>
															      <option>Modulo</option>
															    </select>
															  

														<label>
															<span class="block input-icon input-icon-right">
																<asp:TextBox ID="TextBox10" class="span12" placeholder="Código curso" runat="server"></asp:TextBox>
															</span>
														</label>


														<label>
															<span class="block input-icon input-icon-right">
                                                                <asp:TextBox ID="TextBox11" class="span12" placeholder="Código recibo" runat="server"></asp:TextBox>
															</span>
														</label>
														<label>
															<input type="checkbox" />
															<span class="lbl">
																Acepto las
																<a href="#">condiciones</a>
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
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>


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
		<script src="assets/js/bootstrap.min.js"></script>

		<!--page specific plugin scripts-->

		<!--ace scripts-->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!--inline scripts related to this page-->

		<script type="text/javascript">
		    function show_box(id) {
		        $('.widget-box.visible').removeClass('visible');
		        $('#' + id).addClass('visible');
		    }
		</script>




</body>
</html>
