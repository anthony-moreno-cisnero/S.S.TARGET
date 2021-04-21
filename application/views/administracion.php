<?php 
	$this->load->view('head');
	$this->load->view('sidenavPush');
?>
<div id="main"> <!-- cotenedor de las cards -->
	<div id="btnMenuBar" class="containerBtn" onclick="myFunction(this)">
		<div class="bar1"></div>
		<div class="bar2"></div>
		<div class="bar3"></div>
	</div>
</div>
<div class="card container">
	<div class="card-body">
		<ol>
			<li>los Registros de empleados que salieron despues de las 23:59 pasan a status historico y salen de la pantalla principal</li>
			<li>Se deben poder registar un segundo ingreso pero solo si en el anterior fue registrada la salida</li>
			<li>Validar los formularios html/javascript/php</li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ol>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {

		$('#btnAdmin').addClass('text-white'); // Coloca blanco el boton del menu
	});
	
</script>
<?php 
	$this->load->view('footer');
?>