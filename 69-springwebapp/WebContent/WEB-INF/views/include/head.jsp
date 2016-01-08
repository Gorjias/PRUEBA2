
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    <meta name="keywords" content="">
    <meta name="description" content="">
        <title> Pasteleria America - ADMIN </title>
        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/ace-fonts.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/colorbox.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery.gritter.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery-ui.custom.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fullcalendar.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/datepicker.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/select2.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery-ui.css" />
        

        
        <!--[if lte IE 9]>
            <link rel="stylesheet" href="../assets/admin/css/ace-part2.css" class="ace-main-stylesheet" />
        <![endif]-->

        <!--[if lte IE 9]>
          <link rel="stylesheet" href="../assets/admin/css/ace-ie.css" />
        <![endif]-->
        <!--[if lte IE 8]>
        <script src="../assets/admin/js/html5shiv.js"></script>
        <script src="../assets/admin/js/respond.js"></script>
        <![endif]-->

    
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->
        <div id="navbar" class="navbar navbar-default">
            <script type="text/javascript">
                try{ace.settings.check('navbar' , 'fixed')}catch(e){}
            </script>

            <div class="navbar-container" id="navbar-container">
                <!-- #section:basics/sidebar.mobile.toggle -->
                <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">Toggle sidebar</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>
                </button>

                <!-- /section:basics/sidebar.mobile.toggle -->
                <div class="navbar-header pull-left">
                    <!-- #section:basics/navbar.layout.brand -->

            
					<a href='<c:url value="/about" />' class="navbar-brand" ><i class="ace-icon fa fa-leaf"></i> Pasteleria America ADMIN</a>

                </div>

                <!-- #section:basics/navbar.dropdown -->
                <div class="navbar-buttons navbar-header pull-right" role="navigation">
                    <ul class="nav ace-nav">
                        


                        <li class="purple">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                                <span class="badge badge-important"><?=$contadorLogs?></span>
                            </a>

                            <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                                <li class="dropdown-header">
                                    <i class="ace-icon fa fa-exclamation-triangle"></i>

                                </li>

                                <li class="dropdown-content">
                                    <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                    
                                        <li>
                                            <a href="#" class="clearfix">
                                                <span class="">
                                                    <span class="msg-title">
                                                        <span class="blue"></span>
                                    
                                                    </span>

                                                    <span class="msg-time">
                                                        <i class="ace-icon fa fa-clock-o"></i>
                                                
                                                        <span>a moment ago</span>
                                                
                                                        <span>  </span>
                                                    </span>
                                                </span>
                                            </a>
                                        </li>
                                   

                                    </ul>
                                </li>

                                <li class="dropdown-footer">
									<a href='<c:url value="/lista_mensajes" />'><i class="ace-icon fa fa-arrow-right"></i> Mensajes</a>
                                </li>
                            </ul>
                        </li>





                        <li class="green">


                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                                <span class="badge badge-success">12</span>
                            </a>

                            <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                                <li class="dropdown-header">
                                    <i class="ace-icon fa fa-envelope-o"></i>
                               
                                </li>

                                <li class="dropdown-content">
                                    <ul class="dropdown-menu dropdown-navbar">
                                    
                                    </ul>
                                </li>

                                <li class="dropdown-footer">
                                    <a href='<c:url value="/about" />'><i class="ace-icon fa fa-arrow-right"></i> Mensajes</a>
                                
                                    
                                </li>
                            </ul>
                        </li>
                        <!-- #section:basics/navbar.user_menu -->
                        <li class="light-blue">
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                                <img class="nav-user-photo" src="${pageContext.request.contextPath}/resources/assets/avatars/user.jpg" alt="Jason's Photo" />
                                <span class="user-info"><small>Bienvenido,</small> <?=$userdata['nombre']?></span>
                                <i class="ace-icon fa fa-caret-down"></i>
                            </a>

                            <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">


                                <li>
                                <a href='<c:url value="/perfil" />'><i class="ace-icon fa fa-user"></i> Perfil</a>
                                    
                                </li>

                                <li class="divider"></li>

                                <li>
                                <a href='<c:url value="/logout" />'><i class="ace-icon fa fa-power-off"></i> Desconexion</a>
                                    
                                </li>
                            </ul>
                        </li>

                        <!-- /section:basics/navbar.user_menu -->
                    </ul>
                </div>

                <!-- /section:basics/navbar.dropdown -->
            </div><!-- /.navbar-container -->
        </div>

