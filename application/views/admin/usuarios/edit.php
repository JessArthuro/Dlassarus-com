<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Usuarios
			<small>Editar</small>	
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box box-solid">
			<div class="box-body">
				<div class="row">
					<div class="col-md-12">
						<?php if($this->session->flashdata("error")):?>
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<p><i class="icon fa fa-ban"></i><?php echo $this->session->flashdata("error");?></p>
							</div>
						<?php endif;?>
						<form action="<?php echo base_url();?>administrador/usuarios/update" method="POST">
							<input type="hidden" name="idusuario" value="<?php echo $usuario->id ?>">
							<div class="form-group">
								<label for="nombre">Nombre:</label>
								<input type="text" id="nombre" name="nombre" class="form-control" value="<?php echo $usuario->nombre;?>">
							</div>
							<div class="form-group">
								<label for="paterno">Apellido Paterno:</label>
								<input type="text" id="paterno" name="paterno" class="form-control" value="<?php echo $usuario->paterno;?>">
							</div>
							<div class="form-group">
								<label for="materno">Apellido Materno:</label>
								<input type="text" id="materno" name="materno" class="form-control" value="<?php echo $usuario->materno;?>">
							</div>
							<div class="form-group">
								<label for="telefono">Telefono:</label>
								<input type="text" id="telefono" name="telefono" class="form-control" value="<?php echo $usuario->telefono;?>">
							</div>
							<div class="form-group">
								<label for="email">Email:</label>
								<input type="text" id="email" name="email" class="form-control" value="<?php echo $usuario->email;?>">
							</div>
							<div class="form-group">
								<label for="username">Username:</label>
								<input type="text" id="username" name="username" class="form-control" value="<?php echo $usuario->username;?>">
							</div>
						
							<div class="form-group">
								<label for="rol">Roles:</label>
								<select type="text" id="rol" name="rol" class="form-control">
									<?php foreach($roles as $rol):?>
										<option value="<?php echo $rol->id;?>" <?php echo $rol->id == $usuario->rol_id ? "selected":"";?>><?php echo $rol->nombre;?></option>
									<?php endforeach;?>
								</select>
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn-success" value="Guardar">
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</section>
</div>
