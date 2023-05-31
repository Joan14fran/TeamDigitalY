
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
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
    <link rel="stylesheet" href="css/despachos.css" />
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />
    <title>Despachos</title>
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
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-4">
                            <h2>Modulo <b>Despachos</b></h2>
                        </div>
                        <div class="col-sm-8">			
                            <a href="#" class="btn btn-primary" id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span>Refrescar Datos</span></a>
                            <a href="#" class="btn btn-secondary" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE148;</i> <span>Agregar Despachos</span></a>
                            <input type="text" id="id_txt_filtro" style="width: 38%;" class="form-control" placeholder="Buscar&hellip;">	
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table"> 
                    <thead>
                        <tr>
                            <th>IdDespachos</th>
                            <th>Cantidad Salida</th>
                            <th>Estado</th>
                            <th>Fecha Salida</th>						
                            <th>Packing</th>						
                            <th>Producto</th>
                            <th>Action</th>
                            <th>Action</th>
                            
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
                    Registro de Despachos
                </div>
                <div class="modal-body" style="padding: 20px 10px;">
                        <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"  method="post">
                            <div class="panel-group" id="steps">
                                <!-- Step 1 -->
                                        <div class="panel-body">
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Cantidad</label>
                                                    <input class="form-control" id="id_reg_cantidad" name="cantidadSalida" placeholder="Ingrese cantidad Salida: " type="int"/>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Fecah Salida</label>
                                                    <input class="form-control" id="id_reg_fechaSal" name="fechaSalida" placeholder="Ingrese fecha Inicio: " type="date"  />
                                                </div>
                                            
                                                <div class="form-group col">
                                                    <label>Packing</label>
                                                    <select class="form"  id="id_reg_packing" name="packing">
                                                        <option value=" "><-Seleccione-></option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Producto</label>
                                                <select  style="width: 100%;" class="form"  id="id_reg_producto" name="producto">
                                                    <option value=" "><-Seleccione-></option>
                                                </select>
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
                            Actualiza despacho
                        </div>
                        <div class="modal-body" style="padding: 20px 10px;">
                                <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudCliente" class="form"     method="post">
                                    <div class="panel-group" id="steps">
                                        <!-- Step 1 -->
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <label>ID</label>
                                                        <input class="form-control" id="id_ID" readonly="readonly" name="idDespacho" type="text" maxlength="8"/>
                                                     </div>
                                                     <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Cantidad</label>
                                                            <input class="form-control" id="id_act_cantidad" name="cantidadSalida" placeholder="Ingrese cantidad Salida: " type="int"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Estado</label>
                                                            <input  class="form-control" id="id_act_estado" name="estado" placeholder="Ingrese estado: " type="text"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Fecah Salida</label>
                                                            <input class="form-control" id="id_act_fechaSal" name="fechaSalida" placeholder="Ingrese fecha Inicio: " type="date"  />
                                                        </div>
                                                    
                                                        <div class="form-group col">
                                                            <label>Packing</label>
                                                            <select class="form"  id="id_act_packing" name="packing">
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Producto</label>
                                                        <select  style="width: 100%;" class="form"  id="id_act_producto" name="producto">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
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
    $(document).ready(function() {
  // Obtener el nombre de usuario de la sesión
  var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';

  // Mostrar el nombre de usuario en la página
  $('#usuario-nombre').text(usuarioNombre);
  $('#usuario-nombre1').text(usuarioNombre);


});

    function listarDatos(lista){
        $('#id_table').DataTable().clear();
        $('#id_table').DataTable().destroy();
        $('#id_table').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'excel', 'pdf'
            ],
            data: lista,
            columns:[
                {data: "idDespacho"},
                {data: "cantidadSalida"},
                {data: "estado"},
                {data: "fechaSalida"},
                {data: "packing.fechaEntrega"},
                {data: "producto.nombre"},
                {data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 40px" class="btn btn-warning btn-sm" onclick="editar(\'' + row.idDespacho + '\', \'' + row.cantidadSalida + '\', \'' + row.estado + '\', \'' + row.fechaSalida + '\', \'' + row.packing.idPacking + '\', \'' + row.producto.idProducto + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 50px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idDespacho + '\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE14B;</i></button>';
					return salida;
				},className:'text-center'},	
            ]
        });
    }

    $("#id_btn_filtrar").click(function(){
        var fil = $("#id_txt_filtro").val();
        $.getJSON("filtrarDespachoG",{"filtro": fil},function(lista){
            listarDatos(lista);
        });
    });

    function accionEliminar(id){
    $.ajax({
        type: "POST",
        url:  "eliminarDespachoG",
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
function eliminar(id){
    mostrarMensajeConfirmacion(MSG_ELIMINAR,accionEliminar,null,id);
}

/*Listar Foraneas*/
$.getJSON("listaPackingG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_packing").append("<option value="+item.idPacking +">"+ item.idPacking +"</option>");
		$("#id_act_packing").append("<option value="+item.idPacking +">"+ item.idPacking +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaProductosG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_producto").append("<option value="+item.idProducto +">"+ item.nombre +"</option>");
		$("#id_act_producto").append("<option value="+item.idProducto +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/


function limpiarFormulario(){
    $('#id_reg_cantidad').val('');
    $('#id_reg_estado').val('');
    $('#id_reg_fechaSal').val('');
    $('#id_reg_packing').val('');
    $('#id_reg_producto').val('');
}

$("#id_btn_registra").click(function(){
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "insertarDespachoG",
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

function editar(id,cantidadSalida,estado,fechaSalida,idPacking,idProducto){
    $('#id_ID').val(id);
    $('#id_act_cantidad').val(cantidadSalida);
    $('#id_act_estado').val(estado);
    $('#id_act_fechaSal').val(fechaSalida);
    $('#id_act_packing').val(idPacking);
    $('#id_act_producto').val(idProducto);
    $('#id_div_modal_actualiza').modal("show");
}

$("#id_btn_actualiza").click(function(){
    var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "actualizarDespachoG",
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
        	"cantidadSalida":{
            	selector : '#id_reg_cantidad',
                validators: {
                	notEmpty: {
                        message: 'La cantidad esobligatorio'
                    },
                }
            },
            "estado": {
        		selector : '#id_reg_estado',
                validators: {
                	notEmpty: {
                        message: 'El estado es obligatorio'
                    },
                }
            },
            "fechaSalida":{
            	 selector: "#id_reg_fechaSal",
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
            "packing.nombre": {
        		selector : '#id_reg_packing',
                validators: {
                	notEmpty: {
                        message: 'Packing es obligatorio'
                    },
                }
            },
            "producto.nombre": {
        		selector : '#id_reg_producto',
                validators: {
                	notEmpty: {
                        message: 'Producto es obligatorio'
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
        	"cantidadSalida":{
            	selector : '#id_act_cantidad',
                validators: {
                	notEmpty: {
                        message: 'La cantidad esobligatorio'
                    },
                }
            },
            "estado": {
        		selector : '#id_act_estado',
                validators: {
                	notEmpty: {
                        message: 'El estado es obligatorio'
                    },
                }
            },
            "fechaSalida":{
            	 selector: "#id_act_fechaSal",
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
            "packing.nombre": {
        		selector : '#id_act_packing',
                validators: {
                	notEmpty: {
                        message: 'Packing es obligatorio'
                    },
                }
            },
            "producto.nombre": {
        		selector : '#id_act_producto',
                validators: {
                	notEmpty: {
                        message: 'Producto es obligatorio'
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