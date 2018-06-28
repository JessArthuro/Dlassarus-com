<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>D'Lassarus -- Sistema de Venta</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<link rel="stylesheet" href="<?php echo base_url();?>assets/template/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" href="<?php echo base_url();?>assets/template/jquery-ui/jquery-ui.css">

	<link rel="stylesheet" href="<?php echo base_url();?>assets/template/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/template/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/template/dist/css/skins/_all-skins.min.css">

	<link rel="stylesheet" href="<?php echo base_url();?>assets/template/Ionicons/css/ionicons.min.css">

	 <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/template/datatables.net-bs/css/dataTables.bootstrap.min.css">

  <link rel="stylesheet" href="<?php echo base_url();?>assets/template/dataTables-export/css/buttons.dataTables.min.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<!-- Site wrapper -->		
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="../../index2.html" class="logo">
				<!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>D</b>L</span>
				<!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>D'LASSARUS</b></span>
			</a>

			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button -->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								
									<span class="hidden-xs"><?php echo $this->session->userdata("nombre") ?></span>
									<span class="hidden-xs"><?php echo $this->session->userdata("paterno") ?></span>
									<span class="hidden-xs"><?php echo $this->session->userdata("materno") ?></span>
							</a>
							<ul class="dropdown-menu">
								<li class="user-body">
									<div class="row">
										<div class="col-xs-12 text-center">
											<a href="<?php echo base_url(); ?>auth/logout">Cerrar Sesion</a>
										</div>

									</div>
								</li>
							</ul>	
						</li>
					</ul>
				</div>
			</nav>
		</header>
