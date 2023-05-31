<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Packing</title>
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
    <link rel="stylesheet" href="css/packing.css" />
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />
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
                        <a href="/verPacking" class="nav-btn-submenu"><i class="fas fa-solid fa-file-signature fa-fw"></i> &nbsp; Contratos </a>
                        <ul>
                            <li>
                                <a href="/verContratos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Contratos</a>
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
                        <a href="" class="nav-btn-submenu"><i class="fas fa-calendar fa-fw"></i> &nbsp; Reservas </a>
                        <ul>
                            <li>
                                <a href="/verReservas"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Reservas</a>
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
                        <h2>Modulo <b>Packing</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a class="btn btn-success" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE147;</i> <span>Agregar Packing</span></a>
                        <a class="btn btn-secondary"  id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span> Ajustar Datos</span></a>
                        <input type="text" id="id_txt_filtro" style="width: 30%;" class="form-control" placeholder="Buscar&hellip;">		
                    </div>
                </div>
            </div>
            <table class="table table-striped" id="id_table">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Cantidad Entrada</th>
                    <th>Cantidad Destinatario</th>
                    <th>Dirección Destinatario</th>
                    <th>Nombre Destinatario</th>
                    <th>Fecha Entrega</th>
                    <th>Observación</th>
                    <th>ID Reserva</th>
                    <th>Actualizar</th>
                    <th>Eliminar</th>
                  </tr>
                </thead>
                <tfoot>
                </tfoot>
            </table>
        </div>
    </div>
    <div class="modal fade" id="id_div_modal_registra" >
      <div class="modal-dialog" style="width: 60%">
  
          <!-- Modal content-->
          <div class="modal-content">
          <div class="modal-header" style="padding: 35px 50px">
              Registro de Packing
          </div>
          <div class="modal-body" style="padding: 20px 10px;">
                  <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"  method="post">
                      <div class="panel-group" id="steps">
                          <!-- Step 1 -->
                                  <div class="panel-body">
                                      <div class="form-row">
                                          <div class="form-group col">
                                              <label>Cantidad Destinatario</label>
                                              <input class="form-control" id="id_reg_canditadD" name="cantidadDestinatario" placeholder="Ingrese cantidad Destinatario: " type="text"/>
                                          </div>
                                          <div class="form-group col">
                                              <label>Cantidad Entrada</label>
                                              <input  class="form-control" id="id_reg_cantidadE" name="cantidadEntrada" placeholder="Ingrese cantidad Entrada: " type="text"/>
                                          </div>
                                      </div>
                                      <div class="form-row">
                                          <div class="form-group col">
                                              <label>Direccion Destinatario</label>
                                              <input  class="form-control" id="id_reg_direccion" name="direccionDestinatario" placeholder="Ingrese direccion Destinatario: " type="text"/>
                                          </div>
                                          <div class="form-group col">
                                              <label>Fecha Entrada</label>
                                              <input class="form-control" id="id_reg_fechaEntra" name="fechaEntrega" placeholder="Ingrese fecha Entrada: " type="date" />
                                              <span id="error_fecha_recoleccion" class="text-danger"></span>
                                          </div>
                                      </div>
                                      <div class="form-row">
                                          <div class="form-group col">
                                              <label>Nombre Destinatario</label>
                                              <input class="form-control" id="id_reg_nombreDes" name="nombreDestinatario" type="text"/>
                                          </div>
                                          <div class="form-group col">
                                              <label>Observacion</label>
                                              <textarea class="form-control" id="id_reg_observacion" name="observacion"></textarea>
                                          </div>
                                      </div>
                                      <div class="form-row">
                                          <div class="form-group col">
                                              <label>Reserva</label>
                                              <select   class="form"  id="id_reg_reserva" name="reserva">
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
                                                    <div class="form-group col">
                                                        <label>ID</label>
                                                        <input  class="form-control" id="id_ID" readonly="readonly" name="idPacking" type="text" />
                                                     </div>
                                                  <div class="form-row">
                                                  <div class="form-group col">
                                                          <label>Cantidad Destinatario</label>
                                                          <input class="form-control" id="id_act_canditadD" name="cantidadDestinatario" placeholder="Ingrese cantidad Destinatario: " type="number"/>
                                                      </div>
                                                      <div class="form-group col">
                                                          <label>Cantidad Entrada</label>
                                                          <input  class="form-control" id="id_act_cantidadE" name="cantidadEntrada" placeholder="Ingrese cantidad Entrada: " type="number"/>
                                                      </div>
                                                  </div>
                                                  <div class="form-row">
                                                      <div class="form-group col">
                                                          <label>Direccion Destinatario</label>
                                                          <input  class="form-control" id="id_act_direccion" name="direccionDestinatario" placeholder="Ingrese direccion Destinatario: " type="text"/>
                                                      </div>
                                                      <div class="form-group col">
                                                          <label>Fecha Entrada</label>
                                                          <input class="form-control" id="id_act_fechaEntra" name="fechaEntrega" placeholder="Ingrese fecha Entrada: " type="date" />
                                                          <span id="error_fecha_recoleccion" class="text-danger"></span>
                                                      </div>
                                                  </div>
                                                  <div class="form-row">
                                                      <div class="form-group col">
                                                          <label>Nombre Destinatario</label>
                                                          <input class="form-control" id="id_act_nombreDes" name="nombreDestinatario" type="text"/>
                                                      </div>
                                                      <div class="form-group col">
                                                          <label>Observacion</label>
                                                          <textarea class="form-control" id="id_act_observacion" name="observacion"></textarea>
                                                      </div>
                                                  </div>
                                                  <div class="form-row">
                                                      <div class="form-group col">
                                                          <label>Reserva</label>
                                                          <select   class="form"  id="id_act_reserva" name="reserva">
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


/* Crear Packing */
$("#id_btn_crear_packing").click(function() {
    var idReserva = $("#id_reg_reserva").val();
    if (idReserva == "") {
        mostrarMensaje("Seleccione una reserva");
        return;
    }

    $.ajax({
        type: "GET",
        url: "reserva/" + idReserva,
        success: function(data) {
            if (data.reserva) {
                $("#id_reg_canditadD").val(data.reserva.cantidadDestinatario);
                $("#id_reg_direccion").val(data.reserva.direccionDestinatario);
                $("#id_reg_nombreDes").val(data.reserva.nombreDestinatario);
                $("#id_reg_observacion").val(data.reserva.observacion);

                // Aquí puedes agregar cualquier otra acción que necesites después de llenar los campos
            } else {
                mostrarMensaje(data.mensaje);
            }
        },
        error: function() {
            mostrarMensaje(MSG_ERROR);
        }
    });
});
/* Crear Packing */


/*Listar Datos*/
function listarDatos(lista){
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
		    processing: false,
		    pageLength: 5,
		    lengthChange: false,
            columns:[
                {data: "idPacking"},
                {data: "cantidadEntrada"},
                {data: "cantidadDestinatario"},
                {data: "direccionDestinatario"},
                {data: "nombreDestinatario"},
                {data: "fechaEntrega"},
                {data: "observacion"},
                {data: "reserva.idReserva"},
                {data: function(row, type, val, meta){
		    	      	var salida='<button type="button" style="width: 40px" class="btn btn-success btn-sm" onclick="editar(\''+row.idPacking + '\',\'' + row.cantidadEntrada +'\',\'' + row.cantidadDestinatario  +'\',\'' + row.direccionDestinatario + '\',\'' + row.fechaEntrega + '\',\'' +  row.nombreDestinatario + '\',\'' + row.observacion + '\',\'' + row.reserva.idReserva + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
		    	      	return salida;
		    	      },className:'text-center'},	
		    	      {data: function(row, type, val, meta){
		    	          var salida='<button type="button" style="width: 50px" class="btn btn-warning btn-sm" disabled onclick="eliminar(\''+row.idPacking +'\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE5D5;</i></button>';
		    	      	return salida;
		    	      },className:'text-center'},	
            ]
        });
      }
/*Listar Datos*/

/*Filtrar Datos*/
$("#id_btn_filtrar").click(function(){
    var fil = $("#id_txt_filtro").val();
    $.getJSON("listarPackingP",{"filtro":fil},function(lista){
      listarDatos(lista);
    });
});
/*Filtrar Datos*/

/*Listar Foraneas*/
$.getJSON("listaReservaP", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_reserva").append("<option value="+item.idReserva +">"+ item.idReserva +"</option>");
		$("#id_act_reserva").append("<option value="+item.idReserva +">"+ item.idReserva +"</option>");
	});
});
/*Listar Foraneas*/
/*Limpiar Formulario*/
function limpiarFormulario(){
    $('#id_reg_canditadD').val('');
    $('#id_reg_cantidadE').val('');
    $('#id_reg_direccion').val('');
    $('#id_reg_fechaEntra').val('');
    $('#id_reg_nombreDes').val('');
    $('#id_reg_observacion').val('');
    $('#id_reg_reserva').val('');
}
/*Limpiar Formulario*/

$("#id_btn_registra").click(function(){
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "insertarPacking",
            data: $('#id_form_registra').serialize(),
            success: function(data){
                listarDatos(data.lista);
                $('#id_div_modal_registra').modal("hide");
                mostrarMensaje(data.mensaje);
                limpiarFormulario();
                validator.resetForm();
            },
            error: function(){
                mostrarMensaje(MSG_ERROR);
            }
        });
    }
});
/*Traer datos seleccionados*/
function editar(id,cantidadEntrada,cantidadDestinatario,direccionDestinatario,fechaEntrega,nombreDestinatario,observacion,idReserva){
    $('#id_ID').val(id);
    $('#id_act_cantidadE').val(cantidadEntrada);
    $('#id_act_canditadD').val(cantidadDestinatario);
    $('#id_act_direccion').val(direccionDestinatario);
    $('#id_act_fechaEntra').val(fechaEntrega);
    $('#id_act_nombreDes').val(nombreDestinatario);
    $('#id_act_observacion').val(observacion);
    $('#id_act_reserva').val(idReserva);
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
            url: "actualizarPacking",
            data: $('#id_form_actualiza').serialize(),
            success: function(data){
                listarDatos(data.lista);
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
function accionEliminar(id){
    $.ajax({
        type: "POST",
        url:  "eliminarPacking",
        data: {"id":id},
        success: function(data){
            listarDatos(data.lista);
            mostrarMensaje(data.mensaje);
        },
        error: function(){
            mostrarMensaje(MSG_ERROR);
        }
    });
}
function eliminar(id){
    mostrarMensajeConfirmacion(MSG_ELIMINAR,accionEliminar,null,id);
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
        	"cantidadDestinatario": {
                selector: "#id_reg_canditadD",
                validators: {
                    notEmpty: {
                        message: "La cantidad entrada es obligatoria"
                    },
                    integer: {
                        message: "La cantidad debe ser un número entero",
                        // El número debe ser entero
                        thousandsSeparator: "",
                        decimalSeparator: "."
                    },
                    greaterThan: {
                        value: 1,
                        inclusive: false,
                        message: "La cantidad debe ser mayor a 1"
                    }
                }
            },
            "cantidadEntrada": {
        		selector: "#id_reg_cantidadE",
                validators: {
                    notEmpty: {
                        message: "La cantidad entrada es obligatoria"
                    },
                    integer: {
                        message: "La cantidad debe ser un número entero",
                        // El número debe ser entero
                        thousandsSeparator: "",
                        decimalSeparator: "."
                    },
                    greaterThan: {
                        value: 1,
                        inclusive: false,
                        message: "La cantidad debe ser mayor a 1"
                    }
                }
            },
            "direccionDestinatario":{
                selector: "#id_reg_direccion",
                validators: {
                    notEmpty: {
                        message: 'La dirección destinatario es obligatoria'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9\s,'N°#()-]*$/,
                        message: 'La dirección destinatario no tiene un formato válido'
                    }
                }
            },
            "fechaEntrega": {
                selector : '#id_reg_fechaEntra',
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
            "nombreDestinatario": {
                selector : '#id_reg_nombreDes',
                validators: {
                    notEmpty: {
                        message: 'Nombre del destinatario es obligatorio'
                    },
                    regexp: {
                        regexp: /^[\p{L}\s]+$/u,
                        message: 'El nombre del destinatario solo debe contener letras y espacios en blanco'
                    }
                }
            },
            "observacion": {
                selector : '#id_reg_observacion',
                validators: {
                    notEmpty: {
                        message: 'La observación es obligatoria'
                    },
                    stringLength: {
                        max: 100,
                        message: 'La observación no puede tener más de 100 caracteres'
                    }
                }
            },
            "reserva.idReserva": {
        		selector : '#id_reg_reserva',
                validators: {
                	notEmpty: {
                        message: 'Reserva es obligatorio'
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
        	"cantidadDestinatario":{
            	selector : '#id_act_canditadD',
                validators: {
                	notEmpty: {
                        message: 'La cantidad entrada es obligatorio'
                    },
                }
            },
            "cantidadEntrada": {
        		selector : '#id_act_cantidadE',
                validators: {
                	notEmpty: {
                        message: 'La cantidad destinatario es obligatorio'
                    },
                }
            },
            "direccionDestinatario":{
            	 selector: "#id_act_direccion",
               validators: {
                	notEmpty: {
                        message: 'La direccion destinatario es obligatorio'
                    },
                }
            },
            "fechaEntrega": {
        		selector : '#id_act_fechaEntra',
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
            "nombreDestinatario": {
        		selector : '#id_act_nombreDes',
                validators: {
                	notEmpty: {
                        message: 'nombre destinatario es obligatorio'
                    },
                }
            },
            "observacion": {
        		selector : '#id_act_observacion',
                validators: {
                	notEmpty: {
                        message: 'Observacion es obligatorio'
                    },
                }
            },
            "reserva.idReserva": {
        		selector : '#id_act_reserva',
                validators: {
                	notEmpty: {
                        message: 'Reserva es obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
    
<script src="/js/main.js" ></script>
</body>
</html>