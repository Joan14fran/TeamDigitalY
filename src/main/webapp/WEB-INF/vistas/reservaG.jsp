<!DOCTYPE html >
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/reservas.css" />
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />
    <title>Reservas</title>
</head>
<body>

    <!--Nav-->
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
    
    <div class="container-xl">
        <div class="table">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Modulo <b>Reservas</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a class="btn btn-success" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE147;</i> <span>Agregar Reserva</span></a>
                            <a class="btn btn-secondary"  id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span>Mostrar y Ajustar Datos</span></a>
                            <input type="text" id="id_txt_filtro" style="width: 30%;" class="form-control" placeholder="Buscar&hellip;">		
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table">
                    <thead>
                        <tr>
                            <th>idReserva</th>
                            <th>Direccion</th>
                            <th>Email</th>
                            <th>Estado</th>
                            <th>Fecha Inicio</th>
                            <th>Fecha Recoleccion</th>
                            <th>Telefono</th>
                            <th>Usuario</th>
                            <th>Localidad</th>
                            <th>Tipo Reserva</th>
                            <th>Actualizar</th>
                            <th>Activar/Cancelar</th>
                        </tr>
                    </thead>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
        </div>
         <!-- Modal de Agregar Cliente -->
         <div class="modal fade" id="id_div_modal_registra" >
            <div class="modal-dialog" style="width: 60%">
        
                <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header" style="padding: 35px 50px">
                    Registro de Reserva
                </div>
                <div class="modal-body" style="padding: 20px 10px;">
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
                                                    <input class="form-control" id="id_reg_telefono" name="telefono" type="text"/>
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
                                            <div id="inputs-tipo-reserva-1" style="display:none">
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label>Cantidad Destinatario</label>
                                                        <input class="form-control" id="id_reg_cantidadD" name="cantidadDestinatario" placeholder="Ingrese cantidad destinatario: " type="number"/>
                                                    </div>
                                                    <div class="form-group col">
                                                        <label>Direccion Destinatario</label>
                                                        <input  class="form-control" id="id_reg_direccionD" name="direccionDestinatario" placeholder="Ingrese direccion destinatario: " type="text"/>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label>Nombre Destinatario</label>
                                                        <input class="form-control" id="id_reg_nombreDes" name="nombreDestinatario" placeholder="Ingrese nombre destinatario: " type="text"/>
                                                    </div>
                                                    <div class="form-group col">
                                                        <label>Observacio</label>
                                                        <textarea  class="form-control" id="id_reg_observacion" name="observacion" placeholder="Ingrese observacion: "></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="inputs-tipo-reserva-2" style="display:none">
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label>Cantidad Implementos</label>
                                                        <input class="form-control" id="id_reg_cantidadI" name="cantidadImplementos" placeholder="Ingrese cantidad implemntos: " type="number"/>
                                                    </div>
                                                    <div class="form-group col">
                                                        <label>Descripcion</label>
                                                        <textarea  class="form-control" id="id_reg_descripcion" name="descripcion" placeholder="Ingrese descirpcion: "></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group col">
                                                    <label>Implemtos</label>
                                                    <select class="form"  id="id_reg_implentos" name="implementos">
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

                <!-- Modal de Actualizar Cliente -->
                <div class="modal fade" id="id_div_modal_actualiza" >
                    <div class="modal-dialog" style="width: 60%">
                
                        <div class="modal-content">
                        <div class="modal-header" style="padding: 35px 50px">
                            Actualiza reserva
                        </div>
                        <div class="modal-body" style="padding: 20px 10px;">
                                <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudCliente" class="form"     method="post">
                                    <div class="panel-group" id="steps">
                                        <!-- Step 1 -->
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <label>ID</label>
                                                        <input class="form-control" id="id_ID" readonly="readonly" name="idReserva" type="text" maxlength="8"/>
                                                     </div>
                                                    <div class="form-group col">
                                                        <label>Direccion</label>
                                                        <input class="form-control" id="id_act_direccion" name="direccion" placeholder="Ingrese direccion: " type="text"/>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Email</label>
                                                            <input  class="form-control" id="id_act_email" name="email" placeholder="Ingrese email: " type="text"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Fecah Inicio</label>
                                                            <input class="form-control" id="id_act_fechaIn" name="fechaInicio" placeholder="Ingrese fecha Inicio: " type="date"  />
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Fecha Recoleccion</label>
                                                            <input  class="form-control" id="id_act_fechaReco" name="fechaRecoleccion" placeholder="Ingrese fecha Recoleccion: " type="date" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Telefono</label>
                                                            <input class="form-control" id="id_act_telefono" name="telefono" type="text"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col">
                                                        <label>Usuario</label>
                                                        <select class="form"  id="id_act_usuario" name="usuario">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Localidad</label>
                                                            <select   class="form"  id="id_act_localidad" name="localidad">
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Tipo Reserva</label>
                                                            <select class="form"  id="id_act_tipoReserva" name="tipoReserva">
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="form-group">
                                                        <div class="col-lg-9 col-lg-offset-3">
                                                            <button type="button" class="btn btn-success" id="id_btn_actualiza">Actualizar</button>
                                                            <input type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">
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



<script type="text/javascript">



// Obtiene la fecha de hoy en formato ISO
var today = new Date().toISOString().substr(0, 10);

// Establece la fecha predeterminada en el campo de fecha visible
$("#id_reg_fechaIn").val(today);

// Establece el valor del campo de fecha oculto en el mismo valor que el campo de fecha visible
$("#id_reg_fechaIn_hidden").val(today);

// Deshabilita la entrada de usuario en el campo de fecha visible
$("#id_reg_fechaIn").prop('disabled', true);



$("#id_reg_tipoReserva").change(function() {
    var tipoReservaSeleccionado = $(this).val();
    if (tipoReservaSeleccionado == "1") {
        $("#inputs-tipo-reserva-1").show();
        $("#inputs-tipo-reserva-2").hide();
    } else if (tipoReservaSeleccionado == "2") {
        $("#inputs-tipo-reserva-1").hide();
        $("#inputs-tipo-reserva-2").show();
    } else {
        $("#inputs-tipo-reserva-1").hide();
        $("#inputs-tipo-reserva-2").hide();
    }
});







    $(document).ready(function() {
      // Obtener el nombre de usuario de la sesión
      var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';
    
      // Mostrar el nombre de usuario en la página
      $('#usuario-nombre').text(usuarioNombre);
      $('#usuario-nombre1').text(usuarioNombre);
    
    
    });

/*Listar Datos*/
function listarDastos(lista){
    $('#id_table').DataTable().clear();
    $('#id_table').DataTable().destroy();
    $('#id_table').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'excel', 'pdf'
        ],
        data: lista,
        searching: false,
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
        ]
    });
}
/*Listar Datos*/
/*Filtrar Datos*/
$("#id_btn_filtrar").click(function(){
    var fil = $("#id_txt_filtro").val();
    $.getJSON("listarReservasG",{"filtro":fil},function(lista){
        listarDastos(lista);
    });
});
/*Filtrar Datos*/

/*Eliminar*/

function accionActualizarEstado(id){
    $.ajax({
        type: "POST",
        url:  "actualizarEstadoG",
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

/*Eliminar*/
/*Listar Foraneas*/
$.getJSON("listaLocalidadG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
		$("#id_act_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaTipoReservaG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
		$("#id_act_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaUsuarioG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
		$("#id_act_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaImplemetnosG", {}, function(data){
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
            url: "buscarPorFechaRecoleccionG",
            data: { fechaRecoleccion: fechaRecoleccion },
            success: function(data) {
                if (data.length > 0) {
                    $('#error_fecha_recoleccion').text('Ya existe una reserva con esta fecha de recolección');
                } else {
                    $.ajax({
                        type: "POST",
                        url: "agregaReservaG",
                        data: $('#id_form_registra').serialize(),
                        success: function(data) {
                            listarDastos(data.lista);
                            $('#id_div_modal_registra').modal("hide");
                            mostrarMensaje(data.mensaje);
                            limpiarFormulario();
                            validator.resetForm();
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
            url: "actualizarReservaG",
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

<script src="/js/main.js" ></script>

</body>
</html>