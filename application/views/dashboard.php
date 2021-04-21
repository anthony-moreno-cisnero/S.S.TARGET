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
	<!-- <div class="row">
		<div class="col-6">
			<div class="card">
				<div class="card-body">
					Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aspernatur, dolorem sint eius facilis eaque placeat assumenda molestiae laborum inventore vitae voluptates nam voluptatibus suscipit nostrum, veritatis a, obcaecati unde atque. lorem*8
				</div>
			</div>
		</div>
		<div class="col-6">
			<div class="card">
				<div class="card-body">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime ex, veniam. Rem incidunt quas dignissimos, officiis. Quae numquam illo nostrum porro unde quam sit, veritatis ratione rem, nam odit iste. lorem*8
				</div>
			</div>
		</div>
	</div> -->
</div>
<script>
	$(document).ready(function() {
		$('#btnHome').addClass('text-white');
	});
</script>
<?php 
	$this->load->view('footer');
?>