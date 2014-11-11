﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AcademyCourses.Vista.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Academy Courses</title>
	
	<!-- core CSS -->
    <link href="../App_Themes/Tema/pag_principal/css/bootstrap.min.css" rel="stylesheet">
    <link href="../App_Themes/Tema/pag_principal/css/font-awesome.min.css" rel="stylesheet">
    <link href="../App_Themes/Tema/pag_principal/css/animate.min.css" rel="stylesheet">
    <link href="../App_Themes/Tema/pag_principal/css/prettyPhoto.css" rel="stylesheet">
    <link href="../App_Themes/Tema/pag_principal/css/main.css" rel="stylesheet">
    <link href="../App_Themes/Tema/pag_principal/css/responsive.css" rel="stylesheet">


    <link href="../App_Themes/Tema/pag_principal/css/round-about.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../App_Themes/Tema/pag_principal/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../App_Themes/Tema/pag_principal/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../App_Themes/Tema/pag_principal/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../App_Themes/Tema/pag_principal/images/ico/apple-touch-icon-57-precomposed.png">



<div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="row">
                            <div class="col-lg-10"><h2 style="color:white">Academy Courses</h2></div>
                            <div class="col-lg-2" style="text-align:right; margin-top:8px;">
                                <a  class="btn btn-danger" href="Login.aspx" >Login</a>
                            </div>
                        </div>
                    </div>
                    


                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

</head>







<body class="homepage">


<!--/INICIO SLIDER -->
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            

            <div class="carousel-inner">

               


                <!--/IMAGEN 1 -->
                <div class="item active" style="background-color:#E6E6E6">
                    <div class="container">
                        <div class="row slide-margin">
                            
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1" style="color:black">Aprende a programar fácilmente en una de las mejores plataformas de educación online en español.</h1>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer más</a>
                                </div>
                            </div>



                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="../App_Themes/Tema/pag_principal/images/slider/android.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->
                <!--/FIN IMAGEN 1 -->


                <!--/IMAGEN 2 -->
                <div class="item" style="background-color:#E6E6E6">
                    <div class="container">
                        <div class="row slide-margin">
                            
                            <!--/IMAGEN 1 -->
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1" style="color:black">Aprende a programar fácilmente en una de las mejores plataformas de educación online en español.</h1>
                                    
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                </div>
                            </div>


                            
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="../App_Themes/Tema/pag_principal/images/slider/java.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->
                <!--/FIN IMAGEN 2 -->


                <!--/IMAGEN 3 -->

                <div class="item" style="background-color:#E6E6E6">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1" style="color:black">Aprende a programar fácilmente en una de las mejores plataformas de educación online en español.</h1>
                                    
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="../App_Themes/Tema/pag_principal/images/slider/visual.png" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->

                <!--/FIN IMAGEN 3 -->



            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section><!--/#main-slider-->


    <!--/FIN SLIDER :D-->




    <!--/INICIO CURSOS :D-->
    <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>Cursos</h2>
                <p class="lead">Tenemos varios cursos para ti, de frontend y backend. Todos realizados por expertos en su tema y explicados profesionalmente.</p>
            </div>


            <!--/INICIO BOLITAS :D-->

            <!--IMAGEN 1-->
          <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="http://www.android.com/media/android_vector.jpg" alt="">
                <h3>Android developer
                  
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>

            <!--IMAGEN 2-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/oracle.jpg" alt="">
                <h3>Administración de BD en Oracle
                    
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>

            <!--IMAGEN 3-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/linux.png" alt="">
                <h3>Especialista en Linux
                    
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>


          <!--IMAGEN 4-->
          <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/visual.png" alt="">
                <h3>Visual Basic Developer
               
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>

            <!--IMAGEN 5-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/sql.png" alt="">
                <h3>Data Base Administrador
                 
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>

            <!--IMAGEN 6-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/excel2.png" alt="">
                <h3>Especialista Excel Empresarial 
                   
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>



            <!--IMAGEN 7-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/php.png" alt="">
                <h3>PHP Developer
                   
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>


            <!--IMAGEN 8-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/autocad.png" alt="">
                <h3>AutoCAD 2014
                   
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>

            <!--IMAGEN 9-->
            <div class="col-lg-4 col-sm-6 text-center post-body">
                <img class="img-circle img-responsive img-center" src="../App_Themes/Tema/pag_principal/images/office.png" alt="">
                <h3>Especialista en ofimática
                    
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
        </div>

        <hr>



    </div>

                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#feature-->

        <!--/FIN BOLITAS :D-->






    <script src="../App_Themes/Tema/pag_principal/js/jquery.js"></script>
    <script src="../App_Themes/Tema/pag_principal/js/bootstrap.min.js"></script>
    <script src="../App_Themes/Tema/pag_principal/js/jquery.prettyPhoto.js"></script>
    <script src="../App_Themes/Tema/pag_principal/js/jquery.isotope.min.js"></script>
    <script src="../App_Themes/Tema/pag_principal/js/main.js"></script>
    <script src="../App_Themes/Tema/pag_principal/js/wow.min.js"></script>
</body>
</html>