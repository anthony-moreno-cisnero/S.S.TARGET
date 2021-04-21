<?php 
	$this->load->view('head');
	$this->load->view('sidenavPush');
?>
<!-- Use any element to open the sidenav -->
<div id="main"> <!-- cotenedor de las cards -->
	<div id="btnMenuBar" class="containerBtn" onclick="myFunction(this)">
		<div class="bar1"></div>
		<div class="bar2"></div>
		<div class="bar3"></div>
	</div>
	<div class="row">
		<div class="col-5">
			<div class="card shadow">
				<div class="card-body">
					<table class="table table-borderless table-sm m-0 p-0">
						<tr class="">
							<td width="50%"  class="">
							</td>
							<td class="">
								<form action="" method="POST" style="margin-bottom: 15px;" onsubmit="return false;" id="formSearchId">
									<div class="input-group">
										<input id="searchId" name="searchId" type="text" class="form-control" placeholder="ID" autofocus="">
										<div class="input-group-append">
											<a class="btn border-dark"><img title="Buscar" src="<?= base_url(); ?>public/icon/search.svg" alt="">
											</a>	
										</div>
									</div>
								</form>
							</td>
						</tr>
					</table>
					<div id="save" class="text-right">	
						<form action="" method="POST" onsubmit="return false;" class="" id="formEmpIngVeh">
							<table class="table table-borderless table-sm">
								<tr>
									<td>
										<!-- <label for="nom1">Nombre:</label> -->
										<input type="text" id="nom1" name="nom1" class="form-control" placeholder="Nombre">
									</td>
									<td>
										<!-- <label for="ape1">Apellido:</label> -->
										<input type="text" id="ape1" name="ape1" class="form-control" placeholder="Apellido">
									</td>
								</tr>
								<tr>
									<td>
										<!-- <label for="rut">RUT:</label> -->
										<input type="text" id="rut" name="rut" class="form-control" placeholder="RUT">
									</td>
									<td>
										<!-- <label for="pat">Patente:</label> -->
										<input type="text" id="pat" name="pat" class="form-control" placeholder="Patente">
									</td>
								</tr>
								<tr>
									<td>
										<!-- <label for="emp">Empresa:</label> -->
										<select class="form-control custom-select" id="empresas">
										</select>
									</td>
									<td>
										<!-- <label for="obs">Observaciones</label> -->
										<input type="text" id="obs" name="obs" class="form-control" placeholder="Observación">
									</td>
								</tr>
							</table>
							<hr>
							<button class="btn w3-hover-black" style="border: 1px solid #000; box-shadow: none;">
								Registrar
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-7">
			<div class="card shadow">
				<div class="card-body">
					<table width="100%" class="table table-borderless table-sm">
						<tr class="">
							<td width="30%" class="text-left">
								Fecha del Sistema: 
								<div id="fecsis">
									<?php echo date("d/m/Y H:i:s");  ?>
								</div>
							</td>
							<td width="40%">
							</td>
							<td class="text-right">
								<form action="" method="POST" style="margin-bottom: 15px;" onsubmit="return false;">
									<div class="input-group">
										<input id="searchFiltro" name="searchFiltro" type="text" class="form-control" placeholder="Filtro">
										<div class="input-group-append">
											<button class="btn border-dark" style="outline-style: none;"><img title="Buscar" src="<?= base_url(); ?>public/icon/search.svg" alt=""></button>
										</div>
									</div>
								</form>
							</td>
						</tr>
					</table>
					<table class="table table-sm border-bottom table-hover" style="border-top: solid #fff;">
						<thead>
							<tr class="" style="border-bottom: 2px solid #b80517;">
								<td>ID</td>
								<td>NOMBRE</td>
								<td>RUT</td>
								<td>PATENTE</td>
								<td>ENTRADA</td>
								<td>SALIDA</td>
							</tr>
						</thead>
						<tbody id="datingveh">	
						</tbody>													
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btnEst').addClass('text-white'); // Coloca blanco el boton del menu

		setInterval(function(){  // Actualiza el div con la fecha y hora del sistema
			$('#fecsis').load(' #fecsis');
		}, 1000);

		getDatingveh();
		getEmpresas();
	});
</script>
<?php 
	$this->load->view('footer');
?>