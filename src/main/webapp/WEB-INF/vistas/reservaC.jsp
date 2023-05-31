<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/global.js"></script>

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
</head>
<body>

    <form id="formulario">
		<div>
		  <label for="direccion">Dirección</label>
		  <input type="text" id="direccion" name="direccion" required>
		</div>
		<div>
		  <label for="email">Email</label>
		  <input type="email" id="email" name="email" required>
		</div>
		<div>
		  <label for="fechaInicio">Fecha de inicio</label>
		  <input type="date" id="fechaInicio" name="fechaInicio" required>
		</div>
		<div>
		  <label for="fechaRecoleccion">Fecha de recolección</label>
		  <input type="date" id="fechaRecoleccion" name="fechaRecoleccion" required>
		</div>
		<div>
		  <label for="telefono">Teléfono</label>
		  <input type="tel" id="telefono" name="telefono" required>
		</div>
		<div>
		  <label for="usuario">Usuario</label>
		  <input type="hidden" name="idUsuario" value="${idUsuario}">
		</div>
		<div>
		  <label for="tipoReserva">Tipo de reserva</label>
		  <select id="tipoReserva" name="tipoReserva">
		  </select>
		</div>
		<div>
		  <label for="localidad">Localidad</label>
		  <select id="localidad" name="localidad">
		  </select>
		</div>
		<button type="submit">Enviar</button>
	  </form>
	  
	  

    <script type="text/javascript">

$(document).ready(function() {
  $.getJSON("listaUsuarioC", {}, function(data){
    $.each(data, function(i,item){
      $("#usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
    });
  });

  $.getJSON("listaLocalidadC", {}, function(data){
    $.each(data, function(i,item){
      $("#localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
    });
  });

  $.getJSON("listaTipoReservaC", {}, function(data){
    $.each(data, function(i,item){
      $("#tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
    });
  });

  $("#formulario").submit(function(event) {
    event.preventDefault();
    var form = $(this);
    var url = form.attr("action");
    var data = form.serialize();

    $.ajax({
  type: "POST",
  url: "agregaReservaC",
  data: { 
    direccion: $("#direccion").val(),
    email: $("#email").val(),
    fechaInicio: $("#fechaInicio").val(),
    fechaRecoleccion: $("#fechaRecoleccion").val(),
    telefono: $("#telefono").val(),
    idUsuario: $("#id_usuario").val(),
    idRegTipoReserva: $("#id_reg_tipoReserva").val(),
    idRegLocalidad: $("#id_reg_localidad").val()
  },
  success: function(data) {
    console.log(data);
    alert(data.mensaje);
    if(data.lista) {
      $("#form-reserva")[0].reset(); // resetear campos del formulario
      actualizarTabla(data.lista);
    }
  }
})
  });
});

    

    </script>
</body>
</html>