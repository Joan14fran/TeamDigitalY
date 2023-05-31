<!DOCTYPE html>
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
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/alquiler.css" />
    <link rel="stylesheet" href="/css/normalize.css">
	<link rel="stylesheet" href="/css/all.css">
	<link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />
    <title>Alquiler</title>
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
                        <a href="/verAlquiler" class="nav-btn-submenu"><i class="fas fa-solid fa-file-signature fa-fw"></i> &nbsp; Contratos </a>
                        <ul><i class=""></i>
                            <li>
                                <a href="/verContratos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Contratos</a>
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
        </nav>
    
    
    <div class="container-xl">
        <div class="table">
            <div class="table-wrapper">			
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-3">
                            <h2 class="text-center">Modulo <b>Alquiler</b></h2>		
                        </div>
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <div class="col-sm-8">
                            <a class="btn btn-secondary"><i class="material-icons">&#xE2C4;</i> <span>Generar PDF Estadistico</span></a>
                            <a class="btn btn-success" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE147;</i> <span>Agregar Alquiler</span></a>
                        </div>	
                       
                    </div>
                </div>
                <table class="table table-bordered" id="id_table">
                    <thead>
                        <tr>
                            <th>idAlquiler</th>
                            <th>Cantidad</th>
                            <th>Descipcion</th>
                            <th>Implemento</th>
                            <th>id Reserva</th>
                            <th>Actualizar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>      
                    </tbody>
                </table>
            </div>
        </div>        
    </div>     
        <!-- Modal de Agregar Cliente -->
        <div class="modal fade" id="id_div_modal_registra" >
            <div class="modal-dialog" style="width: 60%">
        
                <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header" style="padding: 35px 50px">
                    Registro de Alquiler
                </div>
                <div class="modal-body" style="padding: 20px 10px;">
                        <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"    method="post">
                            <div class="panel-group" id="steps">
                                <!-- Step 1 -->
                                        <div class="panel-body">
                                            <div class="form-group col">
                                                <label>Cantidad</label>
                                                <input  class="form-control" id="id_reg_cantidad" name="cantidadImplementos" placeholder="Ingrese cantidad: " type="number"/>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Descipcion</label>
                                                    <input  class="form-control" id="id_reg_descripcion" name="descripcion" placeholder="Ingrese descripcion: " type="text"/>
                                                </div>
                                                <div class="form-group col">
                                                    <label>Implementos</label>
                                                    <select  class="form"  id="id_reg_implemento" placeholder="-Seleccione- " name="Implemento">
                                                        <option value=" "><-Seleccione-></option>
                                                    </select>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <div class="form-group col">
                                                    <label>Reserva</label>
                                                    <select  class="form" id="id_reg_reserva"  placeholder="-Seleccione- " name="reserva" >
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
                            Actualiza Cliente
                        </div>
                        <div class="modal-body" style="padding: 20px 10px;">
                                <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudCliente" class="form" method="post">
                                    <div class="panel-group" id="steps">
                                        <!-- Step 1 -->
                                                <div class="panel-body">
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>ID</label>
                                                            <input  class="form-control" id="id_ID" readonly="readonly" name="idAlquiler" type="text" />
                                                         </div>
                                                        <div class="form-group col">
                                                            <label>Cantidad</label>
                                                            <input class="form-control" id="id_act_cantidad" name="cantidadImplementos" placeholder="Ingrese cantidad: " type="number"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Descipcion</label>
                                                            <input  class="form-control" id="id_act_descripcion" name="descripcion" placeholder="Ingrese descripcion: " type="text"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Implementos</label>
                                                            <select class="form"  id="id_act_implemento" placeholder="-Seleccione- " name="Implemento">
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="form-group">
                                                        <div class="form-group col">
                                                            <label>Reserva</label>
                                                            <select style="width: 100%;"  class="form" id="id_act_reserva"  placeholder="-Seleccione-" name="reserva" >
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
                </div>
            </section>



<script type="text/javascript">

$(document).ready(function() {
  // Obtener el nombre de usuario de la sesión
  var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';

  // Mostrar el nombre de usuario en la página
  $('#usuario-nombre').text(usuarioNombre);
  $('#usuario-nombre1').text(usuarioNombre);


});


$(document).ready( function listarDatos(lista) {
     $('#id_table').DataTable().clear();
     $('#id_table').DataTable().destroy();
     $('#id_table').DataTable({
        dom: 'Bfrtip',
        buttons: [
             'excel', 'pdf'
        ],
        mData:lista,
        sAjaxSource: "/listarAlquiler",
        sAjaxDataProp: "",
        pageLength: 5,
		lengthChange: false,
        aoColumns:[
            {mData: "idAlquiler"},
            {mData:"cantidadImplementos"},
            {mData:"descripcion"},
            {mData:"implemento.nombre"},
            {mData:"reserva.idReserva"},
            {mData: function(row, type, val, meta){
		    	var salida='<button type="button" style="width: 40px" class="btn btn-success btn-sm" onclick="editar(\''+row.idAlquiler + '\',\'' + row.cantidadImplementos +'\',\'' + row.descripcion  +'\',\'' + row.implemento.idImplemento + '\',\'' + row.reserva.idReserva + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
		    	return salida;
                var salida='<button type="button" style="width: 50px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idAlquiler + '\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE14B;</i></button>';
		    	return salida;
		    },className:'text-center'},	
		    {mData: function(row, type, val, meta){
		        var salida='<button type="button" style="width: 50px" class="btn btn-danger disabled btn-sm" onclick="eliminar(\'' + row.idAlquiler + '\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE14B;</i></button>';
		    	return salida;
		    },className:'text-center'},	
        ]
        
	 });

     
$.getJSON("listaImplementos", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_implemento").append("<option value="+item.idImplemento +">"+ item.nombre +"</option>");
		$("#id_act_implemento").append("<option value="+item.idImplemento +">"+ item.nombre +"</option>");
	});
});

$.getJSON("listaReserva", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_reserva").append("<option value="+item.idReserva +">"+ item.idReserva +"</option>");
		$("#id_act_reserva").append("<option value="+item.idReserva +">"+ item.idReserva +"</option>");
	});
});


function limpiarFormulario(){
    $('#id_reg_cantidad').val('');
    $('#id_reg_descripcion').val('');
    $('#id_reg_implemento').val('');
    $('#id_reg_reserva').val('');
}

$('#id_btn_registra').click(function(){
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "registrarAlquiler",
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


$("#id_btn_actualiza").click(function(){
    var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "actualizarAlquiler",
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


});
function accionEliminar(id){
    $.ajax({
        type: "POST",
        url: "eliminarAlquiler",
        data: {"id":id},
        success:function(mData){
            listarDatos(mData.lista);
            mostrarMensaje(mData.mensaje);
        },
        error: function(){
            mostrarMensaje(MSG_ERROR);
        }
    });
}

function eliminar(id){
    mostrarMensajeConfirmacion(MSG_ELIMINAR,accionEliminar,null,id);
}

function editar(id,cantidadImplementos,descripcion,idImplemento,idReserva){
    $('#id_ID').val(id);
    $('#id_act_cantidad').val(cantidadImplementos);
    $('#id_act_descripcion').val(descripcion);
    $('#id_act_implemento').val(idImplemento);
    $('#id_act_reserva').val(idReserva);
    $('#id_div_modal_actualiza').modal("show");
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
        	"cantidadImplementos":{
                selector: "#id_reg_cantidad",
                validators:{
                    notEmpty: {
                         message: 'La cantidad es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{1,100}$/,
                        message: 'el documento es de 6 a 10'
                    },
                }
            },
            "descripcion": {
        		selector : '#id_reg_descripcion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
                    },
                }
            },
            "implemento.idImplemento":{
            	selector : '#id_reg_implemento',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
                    },
                }
            },
            "reserva.idReserva": {
        		selector : '#id_reg_reserva',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
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
        	"cantidadImplementos":{
                selector: "#id_act_cantidad",
                validators:{
                    notEmpty: {
                         message: 'La cantidad es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{1,100}$/,
                        message: 'el documento es de 6 a 10'
                    },
                }
            },
            "descripcion": {
        		selector : '#id_act_descripcion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
                    },
                }
            },
            "implemento.idImplemento":{
            	selector : '#id_act_implemento',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
                    },
                }
            },
            "reserva.idReserva": {
        		selector : '#id_act_reserva',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
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