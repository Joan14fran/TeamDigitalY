<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/footer.css">

      <!-- Vnetana Emergente -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://kit.fontawesome.com/1d159cd404.js" crossorigin="anonymous"></script>
    <!-- Ventana Emergente -->
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
    <title>Inicio de Sesion</title>
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
                    Inicia sesion con tu cuenta
                </p>
                <div id="message" class="message my-3">
                  <span class="message-close">&times;</span>
                  <p id="message-text"></p>
                </div>
                <form  id="login-form">
                    <div class="form-group">
                        <label for="UserName" class="bmd-label-floating"><i class="fas fa-envelope"></i> &nbsp; Email</label>
                        <input type="email" class="form-control" id="username" name="email" pattern="[a-zA-Z0-9-@-.com]{1,35}" maxlength="35">
                    </div>
                    <div class="form-group">
                      <label for="UserPassword" class="bmd-label-floating"><i class="fas fa-key"></i> &nbsp; Contrasena</label>
                      <div class="input-group">
                        <input type="password" class="form-control" id="password" name="password" maxlength="200">
                        <div class="input-group-append">
                          <span class="input-group-text eye-icon"><i class="fa fa-eye-slash" aria-hidden="true"></i></span>
                        </div>
                      </div>
                    </div>
                    <input class="btn-login text-center" type="submit" id="ingresar"></input>
                    <a href="#editEmployeeModal" class="forgot-password-link" data-toggle="modal">Olvidaste tu contrasena?</a>
                    <a href="/verRegistro1" class="create-account-link">Crea una cuenta</a>
                </form>
            </div>
        
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="signup-form">
                        <form action="/examples/actions/confirmation.php" method="post">
                            <h2>Ingresa tu Correo</h2>
                            <p>Vamos a recuperar tu contreseña</p>
                            <hr>
                            <div class="form-group">
                                <input id="email" type="email" class=" form-control form-control-sm" size="64" maxlength="64" required placeholder="username@gmail.com" pattern="+@beststartupever.com"  style="width: 95%;"/>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-danger btn-block" data-dismiss="modal" value="Cancelar">
                                <input type="submit" class="btn btn-danger btn-block" value="Enviar" >
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
      
    

      <!--=============================================
	=            Include JavaScript files           =
	==============================================-->
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
  $('#message').hide();
  $('#login-form').submit(function(e) {
    e.preventDefault();  
    $('#message').hide();
    $.ajax({
      url: '/login',
      type: 'post',
      data: $(this).serialize(),
      success: function(response) {
        if (response.startsWith('/')) {
          window.location.href = response;
        } else {
          $('#message').removeClass('alert-success').addClass('alert-danger').show();
          $('#message-text').text(response);
        }
      },
      error: function(xhr, status, error) {
        var message = xhr.responseText;
        if (message.startsWith('"') && message.endsWith('"')) {
          message = message.substring(1, message.length - 1);
        }
        $('#message').removeClass('alert-success').addClass('alert-danger').show();
        $('#message-text').text(message);
      }
    });
  });
  $('.message-close').click(function() {
    $(this).parent().hide();
  });
});

/*Contraseña*/
const passwordInput = document.getElementById('password');
const eyeIcon = document.querySelector('.eye-icon');

eyeIcon.addEventListener('click', () => {
  if (passwordInput.type === 'password') {
    passwordInput.type = 'text';
    eyeIcon.innerHTML = '<i class="fa fa-eye" aria-hidden="true"></i>';
  } else {
    passwordInput.type = 'password';
    eyeIcon.innerHTML = '<i class="fa fa-eye-slash" aria-hidden="true"></i>';
  }
});

passwordInput.addEventListener('input', () => {
  if (passwordInput.value.length > 0) {
    eyeIcon.style.display = 'block';
  } else {
    eyeIcon.style.display = 'none';
  }
});









    </script>
</body>
</html>