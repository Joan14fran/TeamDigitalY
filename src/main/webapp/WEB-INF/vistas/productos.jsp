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
    <link rel="stylesheet" href="css/productos.css" />
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />
    <title>Productos</title>
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
                        <a href="/verProductos" class="nav-btn-submenu"><i class="fas fa-solid fa-file-signature fa-fw"></i> &nbsp; Contratos </a>
                        <ul>
                            <li>
                                <a href="/verContratos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Contratos</a>
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

      <div class="container-xl" >
        <div class="table">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Modulo <b>Productos</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a class="btn btn-success" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE147;</i> <span>Agregar</span></a>
                            <a class="btn btn-secondary"  id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span>Ajustar Datos</span></a>
                            <input type="text" id="id_txt_filtro" style="width: 30%;" class="form-control" placeholder="Buscar&hellip;">		
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table">
                    <thead>
                        <tr>
                            <th>idProducto</th>
                            <th>Nombre</th>
                            <th>Inventario</th>
                            <th>Categoria</th>
                            <th>Tipo Producto</th>
                            <th>Actualizar</th>
                            <th>Eliminar</th>
                            <th>Refrescar</th>
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
                    Registro de Productos
                </div>
                <div class="modal-body" style="padding: 20px 10px;">
                        <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"  method="post">
                            <div class="panel-group" id="steps">
                                <!-- Step 1 -->
                                        <div class="panel-body">
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Nombre</label>
                                                    <input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                                                </div>
                                                <div class="form-group col">
                                                    <div class="form-group col">
                                                        <label>Inventario</label>
                                                        <select class="form"  id="id_reg_inventario" name="inventario">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <div class="form-group col">
                                                        <label>Categoria</label>
                                                        <select class="form"  id="id_reg_categoria" name="categoria">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                </div>
                                            
                                                <div class="form-group col">
                                                    <div class="form-group col">
                                                        <label>Tipo Producto</label>
                                                        <select class="form"  id="id_reg_tipoProducto" name="tipoProducto">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
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
                                                        <input class="form-control" id="id_ID" readonly="readonly" name="idProducto" type="text" maxlength="8"/>
                                                     </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Nombre</label>
                                                            <input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <div class="form-group col">
                                                                <label>Inventario</label>
                                                                <select class="form"  id="id_act_inventario" name="inventario">
                                                                    <option value=" "><-Seleccione-></option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <div class="form-group col">
                                                                <label>Categoria</label>
                                                                <select class="form"  id="id_act_categoria" name="categoria">
                                                                    <option value=" "><-Seleccione-></option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    
                                                        <div class="form-group col">
                                                            <div class="form-group col">
                                                                <label>Tipo Producto</label>
                                                                <select class="form"  id="id_act_tipoProducto" name="tipoProducto">
                                                                    <option value=" "><-Seleccione-></option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
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
            {data: "idProducto"},
            {data: "nombre"},
            {data: "inventario.idInventario"},
            {data: "categoria.nombre"},
            {data: "tipoProducto.marca"},
            {data: function(row, type, val, meta){
				var salida='<button type="button" style="width: 40px" class="btn btn-success btn-sm" onclick="editar(\''+row.idProducto + '\',\'' + row.nombre +'\',\'' + row.inventario.idInventario + '\',\'' + row.categoria.idCategoria + '\',\'' + row.tipoProducto.idTipoProducto + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
				return salida;
			},className:'text-center'},	
			{data: function(row, type, val, meta){
			    var salida='<button type="button" style="width: 40px" class="btn btn-danger btn-sm" onclick="eliminar(\''+row.idProducto +'\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE5C9;</i></button>';
				return salida;
			},className:'text-center'},
            {data: function(row, type, val, meta){
			    var salida='<button type="button" style="width: 50px" class="btn btn-info btn-sm" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE5D5;</i></button>';
				return salida;
			},className:'text-center'},
            
        ]
        });
    }

    $("#id_btn_filtrar").click(function(){
       var fil = $("#id_txt_filtro").val();
       $.getJSON("filtrarProductos",{"filtro":fil},function(lista){
           listarDatos(lista);
       });
    });

    $.getJSON("listaTipoProducto", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_tipoProducto").append("<option value="+item.idTipoProducto +">"+ item.marca +"</option>");
		$("#id_act_tipoProducto").append("<option value="+item.idTipoProducto +">"+ item.marca +"</option>");
	});
    });
    $.getJSON("listaCategoria", {}, function(data){
    	$.each(data, function(i,item){
    		$("#id_reg_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
    		$("#id_act_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
    	});
    });
    $.getJSON("listaInventario", {}, function(data){
    	$.each(data, function(i,item){
    		$("#id_reg_inventario").append("<option value="+item.idInventario +">"+ item.idInventario +"</option>");
    		$("#id_act_inventario").append("<option value="+item.idInventario +">"+ item.idInventario +"</option>");
    	});
    });

    function limpiarFormulario(){
        $('#id_reg_nombre').val('');
        $('#id_reg_inventario').val('');
        $('#id_reg_categoria').val('');
        $('#id_reg_tipoProducto').val('');
    }

    $("#id_btn_registra").click(function(){
        var validator = $('#id_form_registra').data('bootstrapValidator');
        validator.validate();

        if(validator.isValid()){
            $.ajax({
                type: "POST",
                url: "registrarProductos",
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

    function editar(id, nombre,idInventario,idCategoria,idTipoProducto){
        $('#id_ID').val(id);
        $('#id_act_nombre').val(nombre);
        $('#id_act_inventario').val(idInventario);
        $('#id_act_categoria').val(idCategoria);
        $('#id_act_tipoProducto').val(idTipoProducto);
        $('#id_div_modal_actualiza').modal("show");
    }

    $("#id_btn_actualiza").click(function(){
        var validator = $('#id_form_actualiza').data('bootstrapValidator');
        validator.validate();

        if(validator.isValid()){
            $.ajax({
                type: "POST",
                url: "actualizarProductos",
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

    function accionEliminar(id){
    $.ajax({
        type: "POST",
        url:  "eliminarProducto",
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

/*$("#pills-home-tab").click(function() {
    $("#datos_personales_form").show();
    $("#datos_laborales_form").hide(); })

    $("#pills-profile-tab").click(function() {
    $("#datos_laborales_form").show();
    $("#datos_personales_form").hide();
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
        	"nombre":{
            	selector : '#id_reg_nombre',
                validators: {
                	notEmpty: {
                        message: 'La nombre es obligatorio'
                    },
                }
            },
            "inventario.cantidad": {
        		selector : '#id_reg_inventario',
                validators: {
                	notEmpty: {
                        message: 'El inventario esobligatorio'
                    },
                }
            },
            "categoria.nombre": {
        		selector : '#id_reg_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria es obligatorio'
                    },
                }
            },
            "tipoProducto.marca": {
        		selector : '#id_reg_tipoProducto',
                validators: {
                	notEmpty: {
                        message: 'Tipo Producto es obligatorio'
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
        	"nombre":{
            	selector : '#id_act_nombre',
                validators: {
                	notEmpty: {
                        message: 'La nombre es obligatorio'
                    },
                }
            },
            "inventario.cantidad": {
        		selector : '#id_act_inventario',
                validators: {
                	notEmpty: {
                        message: 'El inventario esobligatorio'
                    },
                }
            },
            "categoria.nombre": {
        		selector : '#id_act_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria es obligatorio'
                    },
                }
            },
            "tipoProducto.marca": {
        		selector : '#id_act_tipoProducto',
                validators: {
                	notEmpty: {
                        message: 'Tipo Producto es obligatorio'
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