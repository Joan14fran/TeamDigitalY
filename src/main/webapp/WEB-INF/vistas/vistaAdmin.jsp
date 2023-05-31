<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil Administrador</title>

  <!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="/css/normalize.css">
	<!-- Bootstrap V4.3 -->
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<!-- Bootstrap Material Design V4.0 -->
	<link rel="stylesheet" href="/css/bootstrap-material-design.min.css">
	<!-- Font Awesome V5.9.0 -->
	<link rel="stylesheet" href="/css/all.css">
	<!-- Sweet Alerts V8.13.0 CSS file -->
	<link rel="stylesheet" href="/css/sweetalert2.min.css">
	<!-- Sweet Alert V8.13.0 JS file-->
	<script src="/js/sweetalert2.min.js" ></script>
	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
	<!-- General Styles -->
	<link rel="stylesheet" href="/css/style.css">
</head>
<body>

  <!-- Main container -->
	<main class="full-box main-container">
		<!-- Nav lateral -->
		<section class="full-box nav-lateral">
			<div class="full-box nav-lateral-bg show-nav-lateral"></div>
			<div class="full-box nav-lateral-content">
				<figure class="full-box nav-lateral-avatar">
					<i class="far fa-times-circle show-nav-lateral"></i>
					<img src="/assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
						<span id="usuario-nombre"></span>  <br>
						<div>
							<div class="circle green"></div>
							<span>Online</span>
						</div>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="/vistaAdmin"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Inicio</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-boxes fa-fw"></i> &nbsp; Productos <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="/verProductos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Producto</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-handshake fa-fw"></i> &nbsp; Proveedores <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="/verProveedores"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Proveedor</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-truck fa-fw"></i> &nbsp; Alquileres <i class="fas fa-chevron-down"></i></a>
							<ul><i class=""></i>
								<li>
									<a href="/verAlquiler"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Alquiler</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-solid fa-pallet fa-fw"></i> &nbsp; Packing <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="/verPacking"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Packing</a>
								</li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</section>

		<!-- content -->
		<section class="full-box page-content">
			<nav class="full-box navbar-info">
				<a href="#" class="float-left show-nav-lateral">
					<i class="fas fa-exchange-alt"></i>
				</a>
				<a href="">
					<i class="fas fa-user-cog"></i>
				</a>
				<a href="/verLogin1" class="btn-exit-system">
					<i class="fas fa-power-off"></i>
				</a>
			</nav>

			<!-- Page header -->

			<div class="full-box page-header">
				<h3 class="text-left">
					<i class="fab fa-dashcube fa-fw"></i> &nbsp; Bievenido  
          
				</h3>
				<p>
					<span id="usuario-nombre1"></span> te damos la bienvanida a las tareas administrativas de Team Digital Yelmos, puedes controlar usuarios, reservas, despachos y entre muchos de los servicios<br>
          Espero que lo pases genial.
				</p>
			</div>
			
			<!-- Content -->
			<div class="full-box tile-container">

				<a href="/verUsuarios" class="tile">
					<div class="tile-tittle">Usuarios</div>
					<div class="tile-icon">
						<i class="fas fa-users fa-fw"></i>
						<p><span id="cantidadUsuarios"></span> Registrados</p>
					</div>
				</a>
				<a href="/verReservas" class="tile">
					<div class="tile-tittle">Reservas</div>
					<div class="tile-icon">
						<i class="fas fa-calendar fa-fw"></i>
						<p><span id="cantidadReservas"></span> Registrados</p>
					</div>
				</a>

				<a href="/verDespachos" class="tile">
					<div class="tile-tittle">Despachos</div>
					<div class="tile-icon">
						<i class="fas fa-truck fa-fw"></i>
						<p><span id="cantidadDespachos"></span> Registrados</p>
					</div>
				</a>

				<a href="/verContratos" class="tile">
					<div class="tile-tittle">Contratos</div>
					<div class="tile-icon">
						<i class="fas fa-sharp fa-solid fa-file-signature fa-fw"></i>
						<p><span id="cantidadContratos"></span> Registrados</p>
					</div>
				</a><i class="fa-solid "></i>

				
				<a href="/verInventario" class="tile">
					<div class="tile-tittle">Inventarios</div>
					<div class="tile-icon">
						<i class="fas fa-clipboard-list fa-fw"></i>
						<p><span id="cantidadInventarios"></span> Registrados</p>
					</div>
				</a>
				
			</div>
			

		</section>
	</main>


  <!-- jQuery V3.4.1 -->
	<script src="/js/jquery-3.4.1.min.js" ></script>
	<!-- popper -->
	<script src="/js/popper.min.js" ></script>
	<!-- Bootstrap V4.3 -->
	<script src="/js/bootstrap.min.js" ></script>
	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="/js/jquery.mCustomScrollbar.concat.min.js" ></script>
	<!-- Bootstrap Material Design V4.0 -->
	<script src="/js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('/body').bootstrapMaterialDesign(); });</script>
	<script src="/js/main.js" ></script>

  <script type="text/javascript">
    $(document).ready(function() {
  // Obtener el nombre de usuario de la sesión
  var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';

  // Mostrar el nombre de usuario en la página
  $('#usuario-nombre').text(usuarioNombre);
  $('#usuario-nombre1').text(usuarioNombre);


});
$(document).ready(function() {
        $.ajax({
            url: "/cantidadUsuarios",
            success: function(data) {
                $("#cantidadUsuarios").text(data);
            }
        });
    });
	$(document).ready(function() {
        $.ajax({
            url: "/cantidadReservas",
            success: function(data) {
                $("#cantidadReservas").text(data);
            }
        });
    });
	$(document).ready(function() {
        $.ajax({
            url: "/cantidadDespachos",
            success: function(data) {
                $("#cantidadDespachos").text(data);
            }
        });
    });
	$(document).ready(function() {
        $.ajax({
            url: "/cantidadInventarios",
            success: function(data) {
                $("#cantidadInventarios").text(data);
            }
        });
    });
	$(document).ready(function() {
        $.ajax({
            url: "/cantidadContratos",
            success: function(data) {
                $("#cantidadContratos").text(data);
            }
        });
    });

	var listItem = document.createElement('li');
var circle = document.createElement('div');
circle.classList.add('circle', 'green');
var text = document.createTextNode('Online');
listItem.appendChild(circle);
listItem.appendChild(text);
var list = document.getElementById('my-list');
list.appendChild(listItem);

  </script>

     

    
</body>
</html>