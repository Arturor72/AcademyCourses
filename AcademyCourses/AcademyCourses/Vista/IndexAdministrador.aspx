﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexAdministrador.aspx.cs" Inherits="AcademyCourses.IndexAdministrador" %>

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



		<!--/MENU-->
		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				


				<!--/.LISTA DE MENU-->				
				<ul class="nav nav-list">
					

					<!--/.CURSOS-->	
					<li>
						<a href="#" class="dropdown-toggle">
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
							
							<h2 >Cursos - Listar</h2>
						</li>
					</ul>
	
				</div>

				<div class="page-content">
					<div class="row-fluid">
						<div class="span12">
							
                            
                            <!--INICIO HOJA-->
                            <div style="overflow:scroll">
                              <form id="form1" runat="server">
                                  


                                     <asp:GridView ID="gvCursos" PageSize="5" class="table-striped table-bordered table-hover" Width="1000px" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="C_Curso" DataSourceID="SqlDataSource1" >
                                         <Columns>
                                             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                             <asp:BoundField DataField="C_Curso" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="C_Curso" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                                             <asp:BoundField DataField="C_Modulo" HeaderText="Modulo" SortExpression="C_Modulo" ItemStyle-HorizontalAlign="Center" ></asp:BoundField>
                                             <asp:BoundField DataField="C_Categoria" HeaderText="Categoria" SortExpression="C_Categoria" ItemStyle-HorizontalAlign="Center" ></asp:BoundField>
                                             <asp:BoundField DataField="C_Profesor" HeaderText="Profesor" SortExpression="C_Profesor" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                                             <asp:BoundField DataField="C_Horario" HeaderText="Horario" SortExpression="C_Horario" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                                             <asp:BoundField DataField="C_CursoR" HeaderText="Curso Requisito" SortExpression="C_CursoR" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                                             <asp:BoundField DataField="Descripcion" HeaderText="Nombre" SortExpression="Descripcion" />
                                             <asp:BoundField DataField="Requisitos" HeaderText="Requisitos" SortExpression="Requisitos" />
                                             <asp:BoundField DataField="Objetivo" HeaderText="Objetivo" SortExpression="Objetivo" />
                                             <asp:BoundField DataField="Temario" HeaderText="Temario" SortExpression="Temario" ItemStyle-Width="500px" ItemStyle-HorizontalAlign="Justify" ></asp:BoundField>
                                             <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" ItemStyle-HorizontalAlign="Center" ></asp:BoundField>
                                             <asp:BoundField DataField="NumeroHoras" HeaderText="Numero de Horas" SortExpression="NumeroHoras" ItemStyle-HorizontalAlign="Center" ></asp:BoundField>
                                             <asp:BoundField DataField="FechaInicio" HeaderText="Fecha de Inicio" SortExpression="FechaInicio" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}"></asp:BoundField>
                                             <asp:BoundField DataField="FechaFin" HeaderText="Fecha de Fin" SortExpression="FechaFin" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}"></asp:BoundField>
                                             <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" ItemStyle-HorizontalAlign="Center" ></asp:BoundField>
                                         </Columns>
                                     </asp:GridView>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAcademyConnectionString5 %>" DeleteCommand="usp_EliminarCursoGV" DeleteCommandType="StoredProcedure" SelectCommand="usp_ListarCurso" SelectCommandType="StoredProcedure" UpdateCommand="usp_ModificarCursoGV" UpdateCommandType="StoredProcedure">
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
                                             <asp:Parameter Name="Estado" Type="String" />
                                         </UpdateParameters>
                                     </asp:SqlDataSource>

                                  
                                  

                              </form>
                            </div>
                              

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
