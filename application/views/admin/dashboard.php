
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
		Inicio
		<small>Moda & Estilo</small>	
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3><?php echo $cantVentas;?></h3>

                <p>Ventas</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="<?php echo base_url()."movimientos/ventas"?>" class="small-box-footer">Ver ventas <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3><?php echo $cantCategorias;?></h3>

                <p>Categorias</p>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="<?php echo base_url()."mantenimiento/categorias"?>" class="small-box-footer">Ver categorias <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3><?php echo $cantUsuarios;?></h3>

                <p>Usuarios</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="<?php echo base_url()."administrador/usuarios"?>" class="small-box-footer">Ver usuarios <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
                <h3><?php echo $cantProductos;?></h3>

                <p>Productos</p>
            </div>
            <div class="icon">
                <i class="ion ion-pie-graph"></i>
            </div>
            <a href="<?php echo base_url()."mantenimiento/productos"?>" class="small-box-footer">Ver productos <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
</div>
<!-- /.row -->


<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->