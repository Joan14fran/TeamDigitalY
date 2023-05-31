<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista Cliente</title>


    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/global.js"></script>
    <script src="./js/main.js" ></script>
	
	<link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/cliente.css">
    <link rel="stylesheet" href="css/msg.css" />

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

		<!-- Page content -->
		<section class="full-box page-content">
			<nav class="full-box navbar-info">
				<a href="#" class="float-left show-nav-lateral">
					<i class="fas fa-exchange-alt"></i>
				</a>
				<a href="/actualizarDatos">
					<i class="fas fa-user-cog"></i>
				</a>
				<a href="/verLogin1" class="btn-exit-system">
					<i class="fas fa-power-off"></i>
				</a>
			</nav>

			<!-- Page header -->
			<div class="full-box page-header">
				<h3 class="text-left">
					<i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE TUS RESERVAS
				</h3>
				<p class="text-justify">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit nostrum rerum animi natus beatae ex. Culpa blanditiis tempore amet alias placeat, obcaecati quaerat ullam, sunt est, odio aut veniam ratione.
				</p>
			</div>
			
			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a href="" data-toggle="modal" data-target="#myModal"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVA RESERVA</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content -->
			<div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm" id="id_table">
						<thead>
							<tr class="text-center roboto-medium">
								<th>#</th>
								<th>Direccion</th>
								<th>Email</th>
								<th>Estado</th>
								<th>Fecha Inicio</th>
								<th>Fecha Recollecion</th>
								<th>Telefono</th>
								<th>Localidad</th>
								<th>IdUsuario</th>
								<th>Tipo Reserva</th>
								<th>Editar</th>
								<th>Cambair estado</th>
                                <th>Actualizar estado</th>
							</tr>
						</thead>
					</table>
				</div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="myModalLabel">Formulario de registro</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
				  <div class="login-content">
                   <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"  method="post">
                    <div class="panel-group" id="steps">
                        <!-- Step 1 -->
                                <div class="panel-body">
                                    <div class="form-row">
                                        <div class="form-group col">
                                            <label>Direccion</label>
                                            <input class="form-control" id="id_reg_direccion" name="direccion" placeholder="Ingrese direccion: " type="text"/>
                                        </div>
                                        <div class="form-group col">
                                            <label>Email</label>
                                            <input  class="form-control" id="id_reg_email" name="email" placeholder="Ingrese email: " type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col">
                                            <label>Fecha Inicio</label>
                                            <input class="form-control" id="id_reg_fechaIn" name="fechaInicioVisible" placeholder="Ingrese fecha Inicio: " type="date"  min="2022-10-10"/>
                                            <input type="hidden" id="id_reg_fechaIn_hidden" name="fechaInicio" value="">
                                        </div>
                                        <div class="form-group col">
                                            <label>Fecha Recoleccion</label>
                                            <input class="form-control" id="id_reg_fechaReco" name="fechaRecoleccion" placeholder="Ingrese fecha Recoleccion: " type="date" />
                                            <span id="error_fecha_recoleccion" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col">
                                            <label>Telefono</label>
                                            <input class="form-control" id="id_reg_telefono" name="telefono" placeholder="Ingrese telefono: " type="text"/>
                                        </div>
                                        <div class="form-group col">
                                            <label>Usuario</label>
                                            <select class="form"  id="id_reg_usuario" name="usuario">
                                                <option value=" "><-Seleccione-></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col">
                                            <label>Localidad</label>
                                            <select   class="form"  id="id_reg_localidad" name="localidad">
                                                <option value=" "><-Seleccione-></option>
                                            </select>
                                        </div>
                                        <div class="form-group col">
                                            <label>Tipo Reserva</label>
                                            <select class="form"  id="id_reg_tipoReserva" name="tipoReserva">
                                                <option value=" "><-Seleccione-></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div id="packing_inputs">
                                        <div class="form-group">
                                          <label>Cantidad Destinatario</label>
                                          <input class="form-control" id="id_reg_cantidadD" placeholder="Ingrese cantidad destinatario: " name="cantidadDestinatario" type="text"/>
                                        </div>
                                        <div class="form-group">
                                          <label>Direccion Destinatario</label>
                                          <input class="form-control" id="id_reg_direccionD"  placeholder="Ingrese direccion destinatario:" name="direccionDestinatario" type="text"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombre Destinatario</label>
                                            <input class="form-control" id="id_reg_nombreDes"  placeholder="Ingrese nombre destinatario: " name="nombreDestinatario" type="text"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Observacion</label>
                                            <textarea class="form-control" id="id_reg_observacion" placeholder="Ingrese observacion" name="observacion"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Cantidad Entrada</label>
                                            <input class="form-control" id="id_reg_cantidadEntrada"  name="cantidadEntrada" type="text" value="0" readonly>
                                        </div>
                                        <div class="form-group col">
                                            <label>Fecha Entrada</label>
                                            <input class="form-control" id="id_reg_fechaEntrada" name="fechaEntrada1" placeholder="Ingrese fecha entrada: " type="date" />
                                            <input type="hidden" id="id_reg_fechaEntrada_hiden" name="fechaEntrega" value="">
                                        </div>
                                    </div>
                                    <div id="alquiler_inputs">
                                        <div class="form-group">
                                          <label>Cantidad Implementos</label>
                                          <input class="form-control" id="id_reg_cantidadI" placeholder="Ingrese cantidad implementos: " name="cantidadImplementos" type="text"/>
                                        </div>
                                        <div class="form-group">
                                          <label>Descripcion</label>
                                          <textarea class="form-control" id="id_reg_descripcion" placeholder="Ingrese descripcion: " name="descripcion"></textarea>
                                        </div>
                                        <div class="form-group col">
                                            <label>Implementos</label>
                                            <select class="form"  id="id_reg_implentos" name="implemento">
                                                <option value=" "><-Seleccione-></option>
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <div class="col-lg-9 col-lg-offset-3">
                                            <button type="button" class="btn btn-success" id="id_btn_registra">Registrar</button>
                                            <button type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">Cancelar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
				</div>
                   
                </div>
              </div>
            </div>
          </div>
        </section>
      </main>


      <script type="text/javascript">

// Obtiene la fecha de hoy en formato ISO
var today = new Date().toISOString().substr(0, 10);

// Establece la fecha predeterminada en el campo de fecha visible
$("#id_reg_fechaEntrada").val(today);

// Establece el valor del campo de fecha oculto en el mismo valor que el campo de fecha visible
$("#id_reg_fechaEntrada_hiden").val(today);

// Deshabilita la entrada de usuario en el campo de fecha visible
$("#id_reg_fechaEntrada").prop('disabled', true);



// Obtiene la fecha de hoy en formato ISO
var today = new Date().toISOString().substr(0, 10);

// Establece la fecha predeterminada en el campo de fecha visible
$("#id_reg_fechaIn").val(today);

// Establece el valor del campo de fecha oculto en el mismo valor que el campo de fecha visible
$("#id_reg_fechaIn_hidden").val(today);

// Deshabilita la entrada de usuario en el campo de fecha visible
$("#id_reg_fechaIn").prop('disabled', true);

/*Mas campos*/
$(document).ready(function() {
  // Esconde los inputs adicionales al cargar la página
  $("#packing_inputs").hide();
  $("#alquiler_inputs").hide();

  // Agrega el evento onChange al campo "Tipo Reserva"
  $("#id_reg_tipoReserva").change(function() {
    // Obtiene el valor seleccionado
    var tipo_reserva = $(this).val();

    // Oculta todos los inputs adicionales
    $("#packing_inputs").hide();
    $("#alquiler_inputs").hide();

    // Muestra los inputs adicionales relevantes según el valor seleccionado
    if (tipo_reserva == "1") {
      $("#packing_inputs").show();
    } else if (tipo_reserva == "2") {
      $("#alquiler_inputs").show();
    }
  });
});
/*Mas campos*/

    $(document).ready(function() {
      // Obtener el nombre de usuario de la sesión
      var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';
    
      // Mostrar el nombre de usuario en la página
      $('#usuario-nombre').text(usuarioNombre);
      $('#usuario-nombre1').text(usuarioNombre);
    
    
    });

    $(document).ready(function() {
  function listarDastos() {
    var idUsuario = '<%= session.getAttribute("idUsuario") %>'; //obtener el ID del usuario de la sesión
    if (idUsuario) { //verificar que el ID existe
      $.ajax({
        url: "/listarReservasPorUsuario?idUsuario=" + idUsuario, //incluimos el ID del usuario en la URL
        type: "GET",
        success: function(lista) {
          console.log(lista); // imprime los datos recibidos en la consola del navegador
          $('#id_table').DataTable().clear();
          $('#id_table').DataTable().destroy();
          $('#id_table').DataTable({
            dom: 'Bfrtip',
            buttons: [
              'excel', 'pdf'
            ],
            data: lista,
            ordering: true,
            processing: true,
            pageLength: 5,
            lengthChange: false,
            columns:[
              {data: "idReserva"},
              {data: "direccion"},
              {data: "email"},
              {data: "estado"},
              {data: "fechaInicio"},
              {data: "fechaRecoleccion"},
              {data: "telefono"},
              {data: "usuario.nombre"},
              {data: "localidad.nombre"},
              {data: "tipoReserva.nombre"},
              {data: function(row, type, val, meta){
                var salida='<button type="button" style="width: 40px" class="btn btn-success btn-sm" onclick="editar(\''+row.idReserva + '\',\'' + row.direccion +'\',\'' + row.email  +'\',\'' + row.fechaInicio + '\',\'' + row.fechaRecoleccion + '\',\'' +  row.telefono + '\',\'' + row.usuario.idUsuario + '\',\'' + row.localidad.idLocalidad + '\',\'' + row.tipoReserva.idTipoReserva + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
                return salida;
              },className:'text-center'}, 
              {data: function(row, type, val, meta){
                var salida='<button type="button" style="width: 50px" class="btn btn-warning btn-sm" onclick="actualizarEstado(\''+row.idReserva +'\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE5D5;</i></button>';
                return salida;
              },className:'text-center'},
              {data: function(row, type, val, meta){
                var salida='<button type="button" style="width: 50px" class="btn btn-warning btn-sm" onclick="actualizarEstadoEntregado(\''+row.idReserva +'\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE5D5;</i></button>';
                return salida;
              },className:'text-center'},   
            ]
          });
        }
      });
    }
  }

  listarDastos();





/*Eliminar*/
/*Listar Foraneas*/
$.getJSON("listaLocalidadC", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
		$("#id_act_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaTipoReservaC", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
		$("#id_act_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaUsuarioC", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
		$("#id_act_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaImplemetnosRC", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_implentos").append("<option value="+item.idImplemento +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Limpiar Formulario*/
function limpiarFormulario(){
    $('#id_reg_direccion').val('');
    $('#id_reg_email').val('');
    $('#id_reg_fechaIn').val('');
    $('#id_reg_fechaReco').val('');
    $('#id_reg_telefono').val('');
    $('#id_reg_usuario').val('');
    $('#id_reg_localidad').val('');
    $('#id_reg_tipoReserva').val('');
}
/*Limpiar Formulario*/
/* Agregar Reserva */
/* Agregar Reserva */
$("#id_btn_registra").click(function() {
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if (validator.isValid()) {
    var fechaRecoleccion = $("#id_reg_fechaReco").val();
    $.ajax({
        type: "GET",
        url: "buscarPorFechaRecoleccionC",
        data: { fechaRecoleccion: fechaRecoleccion },
        success: function(data) {
            if (data.length > 0) {
                $('#error_fecha_recoleccion').text('Ya existe una reserva con esta fecha de recolección');
            } else {
                $.ajax({
                    type: "POST",
                    url: "agregaReservaC",
                    data: $('#id_form_registra').serialize(),
                    success: function(data) {
                        if (data.idReserva) {
                            // Se creó la reserva exitosamente, ahora se puede crear el Packing o el Alquiler
                            var tipoReserva = $("#id_reg_tipoReserva").val();
                            var reservaData = $('#id_form_registra').serialize();
                            reservaData += '&idReserva=' + data.idReserva; // Agregamos el id de la reserva al objeto que se envía al servidor
                            if (tipoReserva === "1") {
                                $.ajax({
                                    type: "POST",
                                    url: "insertarPackingRC",
                                    data: reservaData, // Enviamos el objeto modificado
                                    success: function(data) {
                                        // Aquí puedes hacer algo con la respuesta, como mostrar un mensaje de éxito
                                    },
                                    error: function() {
                                        // Aquí puedes hacer algo en caso de error, como mostrar un mensaje de error
                                    }
                                });
                            } else if (tipoReserva === "2") {
                                $.ajax({
                                    type: "POST",
                                    url: "insertarAlquilerRC",
                                    data: reservaData, // Enviamos el objeto modificado
                                    success: function(data) {
                                        // Aquí puedes hacer algo con la respuesta, como mostrar un mensaje de éxito
                                    },
                                    error: function() {
                                        // Aquí puedes hacer algo en caso de error, como mostrar un mensaje de error
                                    }
                                });
                            }
                            listarDastos(data.lista);
                            $('#id_div_modal_registra').modal("hide");
                            mostrarMensaje(data.mensaje);
                            limpiarFormulario();
                            validator.resetForm();
                        } else {
                            // No se pudo crear la reserva, mostrar un mensaje de error o hacer algo en consecuencia
                        }
                    },
                    error: function() {
                        mostrarMensaje(MSG_ERROR);
                    }
                });
            }
        },
        error: function() {
            mostrarMensaje(MSG_ERROR);
        }
    });
}

});

/*Agregar Reserva*/

$(document).ready(function() {
    $.ajax({
        url: "/actualizar-reserva-entregada-desde-packingC/" + idReserva,
        type: "POST",
        success: function(response) {
            // manejar la respuesta exitosa
        },
        error: function(xhr, status, error) {
            // manejar el error
        }
    });
});




/*Traer datos seleccionados*/
function editar(id,direccion,email,fechaInicio,fechaRecoleccion,telefono,idUsuario,idLocalidad,idTipoReserva){
    $('#id_ID').val(id);
    $('#id_act_direccion').val(direccion);
    $('#id_act_email').val(email);
    $('#id_act_fechaIn').val(fechaInicio);
    $('#id_act_fechaReco').val(fechaRecoleccion);
    $('#id_act_telefono').val(telefono);
    $('#id_act_usuario').val(idUsuario);
    $('#id_act_localidad').val(idLocalidad);
    $('#id_act_tipoReserva').val(idTipoReserva);
    $('#id_div_modal_actualiza').modal("show");
}
/*Traer datos seleccionados*/
/*Actualizar*/
$("#id_btn_actualiza").click(function(){
    var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "actualizarReservaC",
            data: $('#id_form_actualiza').serialize(),
            success: function(data){
                listarDastos(data.lista);
                $('#id_div_modal_actualiza').modal("hide");
                mostrarMensaje(data.mensaje);
            },
            error: function(){
                mostrarMensaje(MSG_ERROR);
            }
        });
    }
});
/*Actualizar*/

/*IOnsertar Packing
$("#id_btn_registra").click(function(){
        $.ajax({
            type: "POST",
            url: "insertarPackingR",
            data: $('#id_form_registra').serialize(),
            success: function(data){
                $('#id_div_modal_registra').modal("hide");
                mostrarMensaje(data.mensaje);
                limpiarFormulario();
                validator.resetForm();
            },
            error: function(){
            }
        });
    });*/

/*Insertar Alquiler
$("#id_btn_registra").click(function(){
        $.ajax({
            type: "POST",
            url: "insertarAlquilerR",
            data: $('#id_form_registra').serialize(),
            success: function(data){
                $('#id_div_modal_registra').modal("hide");
                mostrarMensaje(data.mensaje);
                limpiarFormulario();
                validator.resetForm();
            },
            error: function(){
            }
        });
});*/

});
/*Eliminar*/

function accionActualizarEstadoEntregado(id){
    $.ajax({
        type: "POST",
        url:  "actualizarEstadoEntregadoC",
        data: {"id":id},
        success: function(data){
            listarDastos(data.lista);
            mostrarMensaje(data.mensaje);
        },
        error: function(){
            mostrarMensaje(MSG_ERROR);
        }
    });
}

function actualizarEstadoEntregado(id){
    mostrarMensajeConfirmacion(MSG_ACTUALIZAR_ENTREADO,accionActualizarEstadoEntregado,null,id);
}

function accionActualizarEstado(id){
    $.ajax({
        type: "POST",
        url:  "actualizarEstadoC",
        data: {"id":id},
        success: function(data){
            listarDastos(data.lista);
            mostrarMensaje(data.mensaje);
        },
        error: function(){
            mostrarMensaje(MSG_ERROR);
        }
    });
}

function actualizarEstado(id){
    mostrarMensajeConfirmacion(MSG_ACTUALIZAR,accionActualizarEstado,null,id);
}


</script>
<script type="text/javascript">
    $('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"direccion":{
            	selector : '#id_reg_direccion',
                validators: {
                	notEmpty: {
                        message: 'La direccion esobligatorio'
                    },
                }
            },
            "email": {
        		selector : '#id_reg_email',
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    },
                }
            },
            "fechaInicio": {
                selector: "#id_reg_fechaIn",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "fechaRecoleccion":{
                selector: "#id_reg_fechaReco",
                validators:{
                    notEmpty: {
                        message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY',
                        // Agrega un método personalizado para validar la fecha ingresada
                        custom: {
                            message: 'La fecha de recolección no puede ser posterior a 30 días a partir de la fecha actual',
                            // La función validate es la función que se llamará para validar la fecha
                            validate: function() {
                                // Obtiene la fecha ingresada
                                var fechaRecoleccion = moment($("#id_reg_fechaReco").val(), 'DD/MM/YYYY');
                                // Obtiene la fecha actual más 30 días
                                var fechaMaxima = moment().add(30, 'days');
            
                                // Verifica si la fecha ingresada es posterior a la fecha límite de 30 días
                                if (fechaRecoleccion.isAfter(fechaMaxima)) {
                                    return false;
                                }
                                return true;
                            }
                        }
                    }
                }
            },
            "telefono": {
        		selector : '#id_reg_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'el telefono es 10 d�gitos'
                    },
                }
            },
            "usuario.nombre": {
        		selector : '#id_reg_usuario',
                validators: {
                	notEmpty: {
                        message: 'El usuario esobligatorio'
                    },
                }
            },
            "localidad.nombre": {
        		selector : '#id_reg_localidad',
                validators: {
                	notEmpty: {
                        message: 'La localidad es obligatorio'
                    },
                }
            },
            "tipoReserva.nombre": {
        		selector : '#id_reg_tipoReserva',
                validators: {
                	notEmpty: {
                        message: 'Tipo Reserva es obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
<script type="text/javascript">
    $('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"direccion":{
            	selector : '#id_act_direccion',
                validators: {
                	notEmpty: {
                        message: 'La direccion esobligatorio'
                    },
                }
            },
            "email": {
        		selector : '#id_act_email',
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    },
                }
            },
            "fechaInicio": {
                selector: "#id_act_fechaIn",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "fechaRecoleccion":{
            	 selector: "#id_act_fechaReco",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "telefono": {
        		selector : '#id_act_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'el telefono es 10 d�gitos'
                    },
                }
            },
            "usuario.nombre": {
        		selector : '#id_act_usuario',
                validators: {
                	notEmpty: {
                        message: 'El usuario esobligatorio'
                    },
                }
            },
            "localidad.nombre": {
        		selector : '#id_act_localidad',
                validators: {
                	notEmpty: {
                        message: 'La localidad es obligatorio'
                    },
                }
            },
            "tipoReserva.nombre": {
        		selector : '#id_act_tipoReserva',
                validators: {
                	notEmpty: {
                        message: 'Tipo Reserva es obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>

<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">

<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>


<link rel="stylesheet" href="./css/sweetalert2.min.css">
<script src="./js/sweetalert2.min.js"></script>


</body>
</html>