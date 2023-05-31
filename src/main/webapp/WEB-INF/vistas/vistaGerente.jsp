<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil Gerente</title>
	  <!-- Normalize V8.0.1 -->
	  <link rel="stylesheet" href="/css/normalize.css">
	  <link rel="stylesheet" href="/css/bootstrap.min.css">
	  <link rel="stylesheet" href="/css/bootstrap-material-design.min.css">
	  <link rel="stylesheet" href="/css/all.css">
	  <link rel="stylesheet" href="/css/sweetalert2.min.css">
	  <script src="/js/sweetalert2.min.js" ></script>
	  <link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
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
					<img src="./assets/avatar/gerenteAvatar.png" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
						<span id="usuario-nombre"></span> <br><small class="roboto-condensed-light">Vista Gerente</small>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="/vistaGerente"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-calendar fa-fw"></i> &nbsp; Reservas <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="/verReservasG"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Cliente</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-truck  fa-fw"></i> &nbsp; Despachos <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="/verDespachosG"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar item</a>
								</li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</section>

		<!-- Page content -->
		<section class="full-box page-content">
			<nav class="full-box navbar-info">
				<a href="#" class="float-left show-nav-lateral">
					<i class="fas fa-exchange-alt"></i>
				</a>
				<a href="">
					<i class="fas fa-user-cog"></i>
				</a>
				<a href="/verLogin" class="btn-exit-system">
					<i class="fas fa-power-off"></i>
				</a>
			</nav>

			<!-- Page header -->
			<div class="full-box page-header">
				<h3 class="text-left">
					<i class="fab fa-dashcube fa-fw"></i> &nbsp; DASHBOARD
				</h3>
				<p class="text-justify">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit nostrum rerum animi natus beatae ex. Culpa blanditiis tempore amet alias placeat, obcaecati quaerat ullam, sunt est, odio aut veniam ratione.
				</p>
			</div>
			
			<!-- Content -->
			<div class="full-box tile-container">

				<a href="/verReservasG" class="tile">
					<div class="tile-tittle">Reservas</div>
					<div class="tile-icon">
						<i class="fas fa-calendar fa-fw"></i>
						<p>5 Registrados</p>
					</div>
				</a>

				<a href="/verDespachoG" class="tile">
					<div class="tile-tittle">Despachos</div>
					<div class="tile-icon">
						<i class="fas fa-truck fa-fw"></i>
						<p>9 Registrados</p>
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
      </script>

</body>
</html>