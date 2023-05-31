<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/bootstrap-material-design.min.css">
    <link rel="stylesheet" href="./css/all.css">
    <link rel="stylesheet" href="./css/sweetalert2.min.css">
    <script src="./js/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="./css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="./css/cliente.css">
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
					<img src="./assets/avatar/userAvatar.avif" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
						<span id="usuario-nombre"></span> <br><small class="roboto-condensed-light">Vista Cliente</small>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="/vistaPersona"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-users fa-fw"></i> &nbsp; Reservas <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="/vistaPersona"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Reserva</a>
								</li>
								<li>
									<a href="/vistaPersona"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de clientes</a>
								</li>
							</ul>
						</li>
					</ul>
				</nav>
            </div>
        </section>
        <section class="full-box page-content">
            <nav class="full-box navbar-info">
                <a href="#" class="float-left show-nav-lateral">
                    <i class="fas fa-exchange-alt"></i>
                </a>
                <a href="/actualizarDatos">
                    <i class="fas fa-user-cog"></i>
                </a>
                <a href="#" class="btn-exit-system">
                    <i class="fas fa-power-off"></i>
                </a>
            </nav>
            <div class="full-box page-header">
				<h3 class="text-left">
					<i class="fas fa-sync-alt fa-fw"></i> &nbsp; ACTUALIZAR INFORMACION
				</h3>
				<p class="text-justify">
					No podras editar tus datos hasta que confirmes que eres tu :).
				</p>
			</div>
			
			
			<!-- Content -->
			<div class="container-fluid" id="form-actualizar-datos" method="post" action="/actualizarDatos">
				<form action="" class="form-neon" autocomplete="off">
					<fieldset>
						<legend><i class="far fa-address-card"></i> &nbsp; Información personal</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="usuario_dni" class="bmd-label-floating">Nombres</label>
										<input type="text" pattern="[0-9-]{1,20}" class="form-control" name="usuario_dni" id="usuario_dni" maxlength="20" value="${usuario.nombre}" disabled>
									</div>
								</div>
								
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="usuario_nombre" class="bmd-label-floating">Apellidos</label>
										<input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,35}" class="form-control" name="usuario_nombre" id="usuario_nombre" maxlength="35" value="${usuario.apellido}" disabled>
									</div>
								</div>
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="usuario_apellido" class="bmd-label-floating">Documento</label>
										<input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,35}" class="form-control" name="usuario_apellido" id="usuario_apellido" maxlength="35" value="${usuario.documento}" disabled>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_telefono" class="bmd-label-floating">Email</label>
										<input type="text" pattern="[0-9()+]{1,20}" class="form-control" name="usuario_telefono" id="usuario_telefono" maxlength="20" value="${usuario.email}" disabled>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_direccion" class="bmd-label-floating">Estado en el Sistema</label>
										<input type="text" pattern="[a-zA-Z0-99áéíóúÁÉÍÓÚñÑ()# ]{1,190}" class="form-control" name="usuario_direccion" id="usuario_direccion" maxlength="190" disabled value="${usuario.estado}">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-user-lock"></i> &nbsp; Información de la cuenta</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_usuario" class="bmd-label-floating">Correo electronico</label>
										<input type="text" pattern="[a-zA-Z0-9]{1,35}" class="form-control" name="usuario_usuario" id="usuario_usuario" maxlength="35" value="${usuario.email}" disabled>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_email" class="bmd-label-floating">Contraseña</label>
										<input type="password" class="form-control" name="usuario_email" id="usuario_email" maxlength="70" value="${usuario.contrasena}" disabled>
									</div>
								</div>
								<div class="col-12">
									<legend style="margin-top: 40px;"><i class="fas fa-lock"></i> &nbsp; Nueva contraseña</legend>
									<p>Para actualizar la contraseña de esta cuenta ingrese una nueva y vuelva a escribirla. En caso que no desee actualizarla debe dejar vacíos los dos campos de las contraseñas.</p>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_clave_nueva_1" class="bmd-label-floating">Contraseña</label>
										<input type="password" class="form-control" name="usuario_clave_nueva_1" id="usuario_clave_nueva_1" maxlength="200">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_clave_nueva_2" class="bmd-label-floating">Repetir contraseña</label>
										<input type="password" class="form-control" name="usuario_clave_nueva_2" id="usuario_clave_nueva_2" maxlength="200">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-medal"></i> &nbsp; Tus privilegios</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12">
									<p><span class="badge badge-dark">Registrar y Actualizar</span> Tu rol es <b>Cliente</b> asi que solo puedes, crear <b>Reservas</b>, visualizar tus <B>Reservas</B>, Actualizar tus <b>Reservas</b> y actualizar tus <b>Datos</b></p>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<p class="text-center">Para poder guardar los cambios en esta cuenta debe de ingresar su nombre de usuario y contraseña</p>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_admin" class="bmd-label-floating">Nombre de usuario</label>
										<input type="text" pattern="[a-zA-Z0-9]{1,35}" class="form-control" name="usuario_admin" id="usuario_admin" maxlength="35">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="clave_admin" class="bmd-label-floating">Contraseña</label>
										<input type="password" class="form-control" name="clave_admin" id="clave_admin" maxlength="200">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<p class="text-center" style="margin-top: 40px;">
						<button type="submit" class="btn btn-raised btn-success btn-sm"><i class="fas fa-sync-alt"></i> &nbsp; ACTUALIZAR</button>
					</p>
				</form>
			</div>
			

		</section>
	</main>

    
	<!-- jQuery V3.4.1 -->
	<script src="./js/jquery-3.4.1.min.js" ></script>
	<script src="./js/popper.min.js" ></script>
	<script src="./js/bootstrap.min.js" ></script>
	<script src="./js/jquery.mCustomScrollbar.concat.min.js" ></script>
	<script src="./js/bootstrap-material-design.min.js" ></script>
	<script>$
    (document).ready(function() { $('body').bootstrapMaterialDesign(); });

    $(document).ready(function() {
    // Obtener el nombre de usuario de la sesión
    var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';
  
    // Mostrar el nombre de usuario en la página
    $('#usuario-nombre').text(usuarioNombre);
    $('#usuario-nombre1').text(usuarioNombre);


});
// Obtener el formulario y agregarle un evento submit
$("#form-actualizar-datos").submit(function(e) {
  e.preventDefault(); // Evitar que el formulario se envíe de manera convencional

  // Obtener los valores de los campos
  var nombre = $("#usuario_nombre").val();
  var apellido = $("#usuario_apellido").val();
  var documento = $("#usuario_documento").val();
  var email = $("#usuario_email").val();
  var estado = $("#usuario_estado").val();
  var claveNueva1 = $("#usuario_clave_nueva_1").val();
  var claveNueva2 = $("#usuario_clave_nueva_2").val();

  // Crear un objeto con los datos a enviar
  var datos = {
    nombre: nombre,
    apellido: apellido,
    documento: documento,
    email: email,
    estado: estado,
    claveNueva1: claveNueva1,
    claveNueva2: claveNueva2
  };

  // Enviar la petición al servidor usando AJAX
  $.ajax({
    type: "POST",
    url: "/actualizarDatos",
    data: datos,
    success: function(response) {
      // Si la petición fue exitosa, mostrar un mensaje de éxito y recargar la página
      alert("Los datos se han actualizado correctamente.");
      location.reload();
    },
    error: function(xhr, status, error) {
      // Si hubo un error, mostrar el mensaje de error
      alert("Hubo un error al actualizar los datos: " + error);
    }
  });
});

    </script>

	<script src="./js/main.js" ></script>
</body>
</html>