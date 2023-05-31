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
    <script src="/js/main.js" ></script>
    <title>Reservas</title>
</head>
<body>

    <!--Nav-->
    <section class="full-box nav-lateral">
        <div class="full-box nav-lateral-bg show-nav-lateral"></div>
        <div class="full-box nav-lateral-content">
            <figure class="full-box nav-lateral-avatar">
                <i class="far fa-times-circle show-nav-lateral"></i>
                <img src="/assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
                <figcaption class="roboto-medium text-center">
                    <span id="usuario-nombre"></span>  <br><small class="roboto-condensed-light">  Vista Administrador</small>
                </figcaption>
            </figure>
            <div class="full-box nav-lateral-bar"></div>
            <nav class="full-box nav-lateral-menu">
                <ul>
                    <li>
                        <a href="/vistaAdmin"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Inicio</a>
                    </li>

                    <li>
                        <a href="/verProductos" class="nav-btn-submenu"><i class="fas fa-boxes fa-fw"></i> &nbsp; Productos </a>
                        <ul>
                            <li>
                                <a href="/verProductos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Producto</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="/verProveedores" class="nav-btn-submenu"><i class="fas fa-handshake fa-fw"></i> &nbsp; Proveedores</a>
                        <ul>
                            <li>
                                <a href="/verProveedores"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Proveedor</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="/verAlquiler" class="nav-btn-submenu"><i class="fas fa-truck fa-fw"></i> &nbsp; Alquileres </a>
                        <ul><i class=""></i>
                            <li>
                                <a href="/verAlquiler"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Alquiler</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="/verPacking" class="nav-btn-submenu"><i class="fas fa-solid fa-pallet fa-fw"></i> &nbsp; Packing </a>
                        <ul>
                            <li>
                                <a href="/verPacking"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Packing</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="nav-btn-submenu"><i class="fas fa-users fa-fw"></i> &nbsp; Usuarios </a>
                        <ul>
                            <li>
                                <a href="/verUsuarios"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Usaurios</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="nav-btn-submenu"><i class="fas fa-solid fa-file-signature fa-fw"></i> &nbsp; Contratos </a>
                        <ul>
                            <li>
                                <a href="/verContratos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Contratos</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="nav-btn-submenu"><i class="fas fa-truck fa-fw"></i> &nbsp; Despachos </a>
                        <ul>
                            <li>
                                <a href="/verDespachos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Despachos</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="nav-btn-submenu"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Invetarios </a>
                        <ul>
                            <li>
                                <a href="/verInventario"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Inventarios</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </section>
<!--Nav-->

<!-- content -->
    <section class="full-box page-content">
        <nav class="full-box navbar-info">
            <a href="#" class="float-left show-nav-lateral">
                <i class="fas fa-exchange-alt"></i>
            </a>
            <a href="">
                <i class="fas fa-user-cog"></i>
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
                            <!--<th>Actualizar Estado</th>-->
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
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Packing</a></h4>
                                        </div>
                                        <div id="stepOne" class="panel-collapse collapse in">
                                            <div id="packing_inputs">
                                                <div class="form-group">
                                                  <label>Cantidad Destinatario</label>
                                                  <input class="form-control" id="id_reg_cantidadD" name="cantidadDestinatario" type="text" pattern="[0-9]+" title="Por favor, ingrese solo números en este campo." />
                                                </div>
                                                <div class="form-group">
                                                  <label>Direccion Destinatario</label>
                                                  <input class="form-control" id="id_reg_direccionD" name="direccionDestinatario" type="text" pattern="[A-Za-z0-9\s]+" title="Por favor, diligencie la direccion. " />
                                                </div>
                                                <div class="form-group">
                                                    <label>Nombre Destinatario</label>
                                                    <input class="form-control" id="id_reg_nombreDes" name="nombreDestinatario" type="text" pattern="[A-Za-z-\s]+" title="Por favor, ingrese solo letras en este campo." />
                                                </div>
                                                <div class="form-group">
                                                    <label>Observacion</label>
                                                    <textarea class="form-control" id="id_reg_observacion" name="observacion" pattern="[A-Za-z0-9\s.,;:!?'()-]+" title="Por favor, ingrese una obdeervacion." ></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Cantidad Entrada</label>
                                                    <input class="form-control" id="id_reg_cantidadEntrada" name="cantidadEntrada" type="text" value="0" readonly>
                                                </div>
                                                <div class="form-group col">
                                                    <label>Fecha Entrada</label>
                                                    <input class="form-control" id="id_reg_fechaEntrada" name="fechaEntrada1" placeholder="Ingrese fecha entrada: " type="date" />
                                                    <input type="hidden" id="id_reg_fechaEntrada_hiden" name="fechaEntrega" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepTwo">Datos de Alquiler</a></h4>
                                        </div>
                                        <div id="stepTwo" class="panel-collapse collapse in">
                                            <div id="alquiler_inputs">
                                                <div class="form-group">
                                                  <label>Cantidad Implementos</label>
                                                  <input class="form-control" id="id_reg_cantidadI" name="cantidadImplementos" type="text"/>
                                                </div>
                                                <div class="form-group">
                                                  <label>Descripcion</label>
                                                  <textarea class="form-control" id="id_reg_descripcion" name="descripcion"></textarea>
                                                </div>
                                                <div class="form-group col">
                                                    <label>Implementos</label>
                                                    <select class="form"  id="id_reg_implentos" name="implemento">
                                                        <option value=" "><-Seleccione-></option>
                                                    </select>
                                                </div>
                                            </div>
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
            {data: "idReserva", width: "5%"},
            {data: "direccion"},
            {data: "email"},
            { data: "estado", width: "40%", createdCell: function(cell, cellData, rowData, rowIndex, colIndex) {
              var icon = '';
              var color = '';
              if (cellData === 'Cancelada') {
                color = 'red';
                icon = '<i class="fas fa-times-circle"></i>';
              } else if (cellData === 'Activa') {
                color = 'green';
                icon = '<i class="fas fa-check-circle"></i>';
              }
              $(cell).html('<span class="estado-texto">' + cellData + '</span>' + '<span class="estado-icono">' + icon + '</span>');
              $(cell).css('color', color);
            }},
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
            /*{data: function(row, type, val, meta){
			    var salida='<button type="button" style="width: 50px" class="btn btn-warning btn-sm" onclick="actualizarEstadoEntregado(\''+row.idReserva +'\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE5D5;</i></button>';
				return salida;
			},className:'text-center'},	*/
        ]
    });
}
/*Listar Datos*/
/*Filtrar Datos*/
$("#id_btn_filtrar").click(function(){
    var fil = $("#id_txt_filtro").val();
    $.getJSON("listarReservas",{"filtro":fil},function(lista){
        listarDastos(lista);
    });
});
/*Filtrar Datos*/

/*Eliminar*/

function accionActualizarEstadoEntregado(id){
    $.ajax({
        type: "POST",
        url:  "actualizarEstadoEntregado",
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
        url:  "actualizarEstado",
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
$.getJSON("listaLocalidad", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
		$("#id_act_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaTipoReserva", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
		$("#id_act_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaUsuario", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
		$("#id_act_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaImplemetnosR", {}, function(data){
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
        url: "buscarPorFechaRecoleccion",
        data: { fechaRecoleccion: fechaRecoleccion },
        success: function(data) {
            if (data.length > 0) {
                $('#error_fecha_recoleccion').text('Ya existe una reserva con esta fecha de recolección');
            } else {
                $.ajax({
                    type: "POST",
                    url: "agregaReserva",
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
                                    url: "insertarPackingR",
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
                                    url: "insertarAlquilerR",
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
        url: "/actualizar-reserva-entregada-desde-packing/" + idReserva,
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
            url: "actualizarReserva",
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



</body>
</html>