﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmListarCurso.aspx.cs" Inherits="AcademyCourses.frmListarCurso" %>

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
						<a href="indexalumno.html">
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
								    <a href="">
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
							
							<h2 >Inicio</h2>
						</li>
					</ul>
	
				</div>

				<div class="page-content">
					<div class="row-fluid">
						<div class="span12">
							
                            
                            <!--INICIO HOJA-->
                            
                            <table id="tabla" class="table table-striped table-bordered table-hover">
                                <thead>
										<tr>
											<th class="center">
												<label>
													<input type="checkbox" />
													<span class="lbl"></span>
												</label>
											</th>
											<th class="auto-style7">Codigo</th>
											<th class="auto-style7">Nombre</th>
											<th class="auto-style7">Precio</th>
                                            <th class="auto-style7">Fecha inicio</th>
                                            <th class="auto-style6">Fecha fin</th>
                                            <th></th>
										</tr>
									</thead>

                                    <tbody>
                                        
                                        <!--primera fila-->
                                        <tr>
                                            
                                            <td class="center">
												<label>
													<input type="checkbox" />
													<span class="lbl"></span>
												</label>
											</td>

											<td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style6">&nbsp;</td>

											<td class="td-actions">
												<div class="hidden-phone visible-desktop action-buttons">
													<a class="blue" href="#">
														<i class="icon-zoom-in bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="icon-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="icon-trash bigger-130"></i>
													</a>
												</div>
                                            </td>
                                        </tr>
                                        <!--fin primera fila-->


                                        <!--segunda fila-->
                                        <tr>
                                            
                                            <td class="center">
												<label>
													<input type="checkbox" />
													<span class="lbl"></span>
												</label>
											</td>

											<td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style6">&nbsp;</td>

											<td class="td-actions">
												<div class="hidden-phone visible-desktop action-buttons">
													<a class="blue" href="#">
														<i class="icon-zoom-in bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="icon-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="icon-trash bigger-130"></i>
													</a>
												</div>
                                            </td>
                                        </tr>
                                        <!--fin segunda fila-->
                                        

                                        <!--tercera fila-->
                                        <tr>
                                            
                                            <td class="center">
												<label>
													<input type="checkbox" />
													<span class="lbl"></span>
												</label>
											</td>

											<td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td class="auto-style6">&nbsp;</td>

											<td class="td-actions">
												<div class="hidden-phone visible-desktop action-buttons">
													<a class="blue" href="#">
														<i class="icon-zoom-in bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="icon-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="icon-trash bigger-130"></i>
													</a>
												</div>
                                            </td>
                                        </tr>
                                        <!--fin tercera fila-->


                                    </tbody>

                                 
                            </table>


                            
                              <form id="form1" runat="server">
                                  

                                     <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" />

                                  <div style="overflow: scroll">
                                     <asp:GridView ID="gvCursos" runat="server" PageSize="5"  AllowPaging="true" class="table table-striped table-bordered table-hover" OnSelectedIndexChanged="gvCursos_SelectedIndexChanged">  
                                        <pagersettings mode="NumericFirstLast"
                                        firstpagetext="Primera pag"
                                        lastpagetext="Ultima pag"
                                        pagebuttoncount="5"  
                                        position="Bottom"/>

                                     </asp:GridView>
                                  
                                  </div>

                                  
                                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table table-striped table-bordered table-hover" DataKeyNames="C_Curso" DataSourceID="SqlDataSource1" Width="556px">
                                      <Columns>
                                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                          <asp:BoundField DataField="C_Curso" HeaderText="C_Curso" InsertVisible="False" ReadOnly="True" SortExpression="C_Curso" />
                                          <asp:BoundField DataField="C_Modulo" HeaderText="C_Modulo" SortExpression="C_Modulo" />
                                          <asp:BoundField DataField="C_Categoria" HeaderText="C_Categoria" SortExpression="C_Categoria" />
                                          <asp:BoundField DataField="C_Profesor" HeaderText="C_Profesor" SortExpression="C_Profesor" />
                                          <asp:BoundField DataField="C_Horario" HeaderText="C_Horario" SortExpression="C_Horario" />
                                          <asp:BoundField DataField="C_CursoR" HeaderText="C_CursoR" SortExpression="C_CursoR" />
                                          <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                          <asp:BoundField DataField="Requisitos" HeaderText="Requisitos" SortExpression="Requisitos" />
                                          <asp:BoundField DataField="Objetivo" HeaderText="Objetivo" SortExpression="Objetivo" />
                                          <asp:BoundField DataField="Temario" HeaderText="Temario" SortExpression="Temario" />
                                          <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                          <asp:BoundField DataField="NumeroHoras" HeaderText="NumeroHoras" SortExpression="NumeroHoras" />
                                          <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                                          <asp:BoundField DataField="FechaFin" HeaderText="FechaFin" SortExpression="FechaFin" />
                                          <asp:CheckBoxField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                      </Columns>
                                     </asp:GridView>

                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAcademyConnectionString %>" DeleteCommand="usp_EliminarCurso" DeleteCommandType="StoredProcedure" SelectCommand="SELECT * FROM [Curso] ORDER BY [C_Curso]" UpdateCommand="usp_ModificarCurso" UpdateCommandType="StoredProcedure">
                                         <DeleteParameters>
                                             <asp:Parameter Name="C_Curso" Type="Int32" />
                                         </DeleteParameters>
                                         <UpdateParameters>
                                             <asp:Parameter Name="C_Curso" Type="Int32" />
                                             <asp:Parameter Name="C_Modulo" Type="Int32" />
                                             <asp:Parameter Name="C_Categoria" Type="Int32" />
                                             <asp:Parameter Name="C_Profesor" Type="Int32" />
                                             <asp:Parameter Name="C_Horario" Type="Int32" />
                                             <asp:Parameter Name="C_CursoR" Type="Int32" />
                                             <asp:Parameter Name="Descripcion" Type="String" />
                                             <asp:Parameter Name="Requisitos" Type="String" />
                                             <asp:Parameter Name="Objetivo" Type="String" />
                                             <asp:Parameter Name="Temario" Type="String" />
                                             <asp:Parameter Name="Precio" Type="Decimal" />
                                             <asp:Parameter Name="NumeroHoras" Type="Int32" />
                                             <asp:Parameter DbType="Date" Name="FechaInicio" />
                                             <asp:Parameter DbType="Date" Name="FechaFin" />
                                             <asp:Parameter Name="Estado" Type="Boolean" />
                                         </UpdateParameters>
                                     </asp:SqlDataSource>

                              </form>
                              

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
