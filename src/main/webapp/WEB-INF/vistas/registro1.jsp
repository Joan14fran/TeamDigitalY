<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>

    <link rel="stylesheet" href="css/signup.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/footer.css">

    <script src="https://kit.fontawesome.com/1d159cd404.js" crossorigin="anonymous"></script>

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
	<!-- Sweet Alert V8.13.0 JS file -->
	<script src="/js/sweetalert2.min.js" ></script>
	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">



    <title>Registro</title>
</head>
<body>
    <header class="header">
        <div class="container logo-nav-container">
          <a href="#" class="logo"><img src="img/Logo Team Digital Yelmos.jpeg" alt=""></a>
          <nav class="main-nav">
            <a href="/verInicio" class="icons-nav">
              <i class="fa-solid fa-house"></i>
            </a>
          </nav>
        </div>
      </header>

    <div class="login-container">
        <div class="login-content">
            <p class="text-center">
                <i class="fas fa-user-circle fa-5x"></i>
            </p>
            <p class="text-center">
                Crea tu cuenta
            </p>
            <div class="alert alert-warning" role="alert" style="display:none;">
              <i class="fas fa-exclamation-triangle"></i>
              <p>La contraseña no coincide</p>
              <button class="close-btn" type="button">&times;</button>
            </div>
            
            <div class="alert alert-success" role="alert" style="display:none;">
              <i class="fas fa-check-circle"></i>
              <p>El usuario ha sido creado correctamente, puedes iniciar sesion!!</p>
              <button class="close-btn" type="button">&times;</button>
            </div>
            
            <div class="alert alert-danger" role="alert" style="display:none;">
              <i class="fas fa-exclamation-circle"></i>
              <p>Ese correo ya se ha registrado en nuestra base de datos</p>
              <button class="close-btn" type="button">&times;</button>
            </div>
            <form id="registro-form">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label class="bmd-label-floating"><i class="fas fa-user"></i> &nbsp; Nombre</label>
                  <input type="text" class="form-control" name="nombre" id="nombre" maxlength="35" pattern="^[a-zA-Z\s]+$" required>
                </div>
                <div class="form-group col-md-6">
                  <label class="bmd-label-floating"><i class="fas fa-user"></i> &nbsp; Apellido</label>
                  <input type="text" class="form-control" name="apellido" id="apellido" maxlength="35" pattern="^[a-zA-ZñÑ\s]+$" title="Ingrese un apellido válido (solo letras o quita las tildes o virgulillas)" required>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label class="bmd-label-floating"><i class="fas fa-envelope"></i> &nbsp; Email</label>
                  <input type="email" class="form-control" name="email" id="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required>
                </div>                
                <div class="form-group col-md-6">
                  <label class="bmd-label-floating"><i class="fas fa-id-card"></i> &nbsp; Número de identificación</label>
                  <input type="text" class="form-control" name="documento" id="documento" maxlength="10" pattern="^[0-9]{6,12}$" title="Ingrese un número de identificación válido (entre 6 y 12 dígitos numéricos)" required>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label class="bmd-label-floating"><i class="fas fa-key"></i> &nbsp; Contraseña</label>
                  <input type="password" class="form-control" id="contrasena" maxlength="200" required>
                  <span class="password-strength"></span>
                </div>
                <div class="form-group col-md-6">
                  <label class="bmd-label-floating"><i class="fas fa-key"></i> &nbsp; Confirmar Contraseña</label>
                  <input type="password" class="form-control" id="confirmar-contrasena" name="confirmar-contrasena" required>
                  <span class="password-match-error"></span>
                </div>
              </div>
              <div class="form-group">
                <input class="btn-login text-center" type="submit" value="Registrarse">
                <a href="/verLogin1" class="create-account-link">Ya tienes cuenta <p style="color: rgb(110, 178, 235);">Click Aqui</p></a>
              </div>
            </form>
        </div>
    </div>



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
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>
	<script src="/js/main.js" ></script>

    <script type="text/javascript">

$(document).ready(function() {
  $('#registro-form').submit(function(event) {
  event.preventDefault(); // Evita que se envíe el formulario

  // Obtener los valores del formulario
  var nombre = $('#nombre').val();
  var apellido = $('#apellido').val();
  var email = $('#email').val();
  var documento = $('#documento').val();
  var contrasena = $('#contrasena').val();
  var confirmarContrasena = $('#confirmar-contrasena').val();

  // Verificar que las contraseñas coincidan
  if (contrasena != confirmarContrasena) {
    $(".alert-warning").addClass("mensaje-activo").show();
    $(".alert-success, .alert-danger").removeClass("mensaje-activo").hide();
    setTimeout(function() {
      $(".alert-warning").removeClass("mensaje-activo").hide();
    }, 10000);
    return;
  }

  // Enviar la petición POST al servidor
  $.ajax({
    url: '/registro', // La URL del endpoint que procesa el formulario
    method: 'POST',
    data: {
      nombre: nombre,
      apellido: apellido,
      email: email,
      documento: documento,
      contrasena: contrasena
    },
    success: function(response) {
      if (response.includes("Email ya registrado en la base de datos")) {
        $(".alert-danger").addClass("mensaje-activo").show();
        $(".alert-success, .alert-warning").removeClass("mensaje-activo").hide();
        setTimeout(function() {
          $(".alert-danger").removeClass("mensaje-activo").hide();
        }, 10000);
      } else {
        $(".alert-success").addClass("mensaje-activo").show();
        $(".alert-warning, .alert-danger").removeClass("mensaje-activo").hide();
        // Resetear el formulario
        $("#registro-form")[0].reset();
        setTimeout(function() {
          $(".alert-success").removeClass("mensaje-activo").hide();
        }, 10000);
      }
    },
    error: function(xhr, status, error) {
      // Mostrar la alerta de error
      $(".alert-danger").addClass("mensaje-activo").show();
      $(".alert-success, .alert-warning").removeClass("mensaje-activo").hide();
      setTimeout(function() {
        $(".alert-danger").removeClass("mensaje-activo").hide();
      }, 10000);
    }
  });
  });
});



/*Fortaleza de la contraseña*/
const passwordInput = document.getElementById('contrasena');
const passwordStrength = document.querySelector('.password-strength');

function checkPasswordStrength() {
  const password = passwordInput.value;
  let strength = '';
  
  if (password.length >= 8 && /\d/.test(password) && /[a-z]/.test(password) && /[A-Z]/.test(password)) {
    strength = 'Fuerte';
    passwordStrength.classList.remove('password-weak', 'password-medium');
    passwordStrength.classList.add('password-strong');
  } else if (password.length >= 6 && /\d/.test(password) && /[a-z]/.test(password)) {
    strength = 'Media';
    passwordStrength.classList.remove('password-weak', 'password-strong');
    passwordStrength.classList.add('password-medium');
  } else {
    strength = 'Vulnerable';
    passwordStrength.classList.remove('password-medium', 'password-strong');
    passwordStrength.classList.add('password-weak');
  }
  
  passwordStrength.textContent = strength;
}

passwordInput.addEventListener('input', checkPasswordStrength);


passwordInput.addEventListener('input', checkPasswordStrength);


/*Confirmar contraseña*/
const confirmPasswordInput = document.getElementById('confirmar-contrasena');
const passwordMatchError = document.querySelector('.password-match-error');

function checkPasswordMatch() {
  const password = passwordInput.value;
  const confirmPassword = confirmPasswordInput.value;
  
  if (password === confirmPassword) {
    passwordMatchError.style.display = 'none';
  } else {
    passwordMatchError.style.display = 'block';
    passwordMatchError.textContent = 'No coinciden';
  }
}

confirmPasswordInput.addEventListener('input', checkPasswordMatch);





    </script>
</body>
</html>