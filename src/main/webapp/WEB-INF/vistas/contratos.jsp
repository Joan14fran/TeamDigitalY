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
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/contratos.css" />
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />
    <title>Contratos</title>
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
                            <h2>Modulo <b>Contratos</b></h2>
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
                            <th>idContrato</th>
                            <th>Detalle</th>
                            <th>Fecha Inicio</th>
                            <th>Fecha Fin</th>
                            <th>Alquiler</th>
                            <th>Proveedor</th>
                            <th>Tipo Contrato</th>
                            <th>Actualizar</th>
                            <th>Bloquear</th>
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
                Registro de Contrato
            </div>
            <div class="modal-body" style="padding: 20px 10px;">
                    <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaUsuarios" class="form"    method="post">
                        <div class="panel-group" id="steps">
                            <!-- Step 1 -->
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label>Detalle</label>
                                            <textarea class="form-control" id="id_reg_detalle" name="detalle" placeholder="Ingrese detalle: " ></textarea>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Fecha Inicio</label>
                                                <input class="form-control" id="id_reg_fechaIn" name="fechaInicio" type="date" disabled readonly />
                                                <input type="hidden" name="fechaInicio" id="fechaInicio" />
                                            </div>
                                            <div class="form-group col">
                                                <label>Fecha Fin</label>
                                                <input class="form-control" id="id_reg_fechaFin" name="fechaFin" placeholder="Ingrese fecha Fin: " type="date"/>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Alquiler</label>
                                                <select class="form"  id="id_reg_alquiler" name="alquiler">
                                                    <option value=" "> -Seleccione- </option>
                                                </select>
                                            </div>
                                            <div class="form-group col">
                                                <label>Proveedor</label>
                                                <select class="form"  id="id_reg_proveedor" name="proveedor">
                                                    <option value=" "> -Seleccione- </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Tipo Contrato</label>
                                                <select  style="width: 100%;" class="form"  id="id_reg_tipoContr" name="tipContrato">
                                                    <option value=" "> -Seleccione- </option>
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
                        Actualiza Contrato
                    </div>
                    <div class="modal-body" style="padding: 20px 10px;">
                            <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaUsuarios" class="form"  method="post">
                                <div class="panel-group" id="steps">
                                    <!-- Step 1 -->
                                            <div class="panel-body">
                                              <div class="form-row">
                                                <div class="form-group col">
                                                   <label>ID</label>
                                                   <input class="form-control" id="id_ID" readonly="readonly" name="idContrato" type="text" maxlength="8"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Detalle</label>
                                                    <textarea class="form-control" id="id_act_detalle" name="detalle" placeholder="Ingrese detalle: " ></textarea>
                                                </div>
                                              </div>
                                              <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Fecha Inicio</label>
                                                    <input class="form-control" id="id_act_fechaIn" name="fechaInicio" placeholder="Ingrese fecha Inicio: " type="date" />
                                                </div>
                                                <div class="form-group col">
                                                    <label>Fecha Fin</label>
                                                    <input class="form-control" id="id_act_fechaFin" name="fechaFin" placeholder="Ingrese fecha Fin: " type="date"/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Alquiler</label>
                                                    <select class="form"  id="id_act_alquiler" name="alquiler">
                                                        <option value=" "> -Seleccione- </option>
                                                    </select>
                                                </div>
                                                <div class="form-group col">
                                                    <label>Proveedor</label>
                                                    <select class="form"  id="id_act_proveedor" name="proveedor">
                                                        <option value=" "> -Seleccione- </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Tipo Contrato</label>
                                                    <select  style="width: 100%;" class="form"  id="id_act_tipoContr" name="tipContrato">
                                                        <option value=" "> -Seleccione- </option>
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
        $(document).ready(function() {
      // Obtener el nombre de usuario de la sesión
      var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';
    
      // Mostrar el nombre de usuario en la página
      $('#usuario-nombre').text(usuarioNombre);
      $('#usuario-nombre1').text(usuarioNombre);
    
    
    });
      </script>

<script type="text/javascript">
    $(document).ready(function() {
  // Obtener el nombre de usuario de la sesión
  var usuarioNombre = '<%= session.getAttribute("usuarioNombre") %>';

  // Mostrar el nombre de usuario en la página
  $('#usuario-nombre').text(usuarioNombre);
  $('#usuario-nombre1').text(usuarioNombre);


});

$(document).ready(function() {
  // Obtener la fecha actual en formato ISO
  var today = new Date().toISOString().substr(0, 10);
  
  // Asignar la fecha actual al campo de fecha de inicio
  $('#id_reg_fechaIn').val(today);
  
  // Asignar la fecha actual al campo oculto de fecha de inicio
  $('#fechaInicio').val(today);
  
  // Manejar el evento de envío del formulario
  $('#id_form_registra').submit(function() {
    // Actualizar el valor del campo oculto con la fecha actual
    $('#fechaInicio').val(today);
    return true; // Permitir el envío del formulario
  });
});
    

      $.getJSON("listaProveedor", {}, function(data){
        $.each(data, function(i,item){
          $("#id_reg_proveedor").append("<option value="+item.idProveedor+">"+ item.nombre + "</option>");
          $("#id_act_proveedor").append("<option value="+item.idProveedor+">"+ item.nombre + "</option>");
        });
      });

      $.getJSON("listaAlquiler", {}, function(data){
        $.each(data, function(i,item){
          $("#id_reg_alquiler").append("<option value="+item.idAlquiler+">"+ item.idAlquiler + "</option>");
          $("#id_act_alquiler").append("<option value="+item.idAlquiler+">"+ item.idAlquiler + "</option>");
        });
      });
      
      $.getJSON("listaTipoContrat", {}, function(data){
        $.each(data, function(i,item){
          $("#id_reg_tipoContr").append("<option value="+item.idTipocontrato+">"+ item.nombre + "</option>");
          $("#id_act_tipoContr").append("<option value="+item.idTipocontrato+">"+ item.nombre + "</option>");
        });
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
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
            columns:[
                {data: "idContrato"},
                {data: "detalle"},
                {data: "fechaInicio"},
                {data: "fechaFin"},
                {data: "alquiler.cantidadImplementos"},
                {data: "proveedor.nombre"},
                {data: "tipContrato.nombre"},
                {data: function(row, type, val, meta){
				  var salida='<button type="button" style="width: 40px" class="btn btn-success btn-sm" onclick="editar(\''+row.idContrato + '\',\''+row.detalle + '\',\'' +row.fechaInicio + '\',\''+row.fechaFin + '\',\''+ row.alquiler.idAlquiler + '\',\''+ row.proveedor.idProveedor + '\',\''+ row.tipContrato.idTipocontrato + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
				  return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				  var salida='<button type="button" style="width: 50px" class="btn btn-danger btn-sm" onclick="eliminar()"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE14B;</i></button>';
				  return salida;
				},className:'text-center'},
            ]
        });
    }

    $("#id_btn_filtrar").click(function(){
        var fil = $("#id_txt_filtro").val();
        $.getJSON("filtrarContratos", {"filtro" : fil},function(lista){
            listarDatos(lista);
        });
    });

    function limpiarFormulario(){
        $('#id_reg_detalle').val('');
        $('#id_reg_fechaFin').val('');
        $('#id_reg_alquiler').val('');
        $('#id_reg_proveedor').val('');
        $('#id_reg_tipoContr').val('');
    }

    $("#id_btn_registra").click(function(){
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "crearContrato",
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

    function editar(id, detalle, fechaInicio,fechaFin,idAlquiler,idProveedor,idTipocontrato){
        $('#id_ID').val(id);
        $('#id_act_detalle').val(detalle);
        $('#id_act_fechaIn').val(fechaInicio);
        $('#id_act_fechaFin').val(fechaFin);
        $('#id_act_alquiler').val(idAlquiler);
        $('#id_act_proveedor').val(idProveedor);
        $('#id_act_tipoContr').val(idTipocontrato);
        $('#id_div_modal_actualiza').modal("show");

    }

    $("#id_btn_actualiza").click(function(){
        var validator = $('#id_form_actualiza').data('bootstrapValidator');
        validator.validate();

        if(validator.isValid()){
            $.ajax({
                type: "POST",
                url: "actualzaContrato",
                data: $("#id_form_actualiza").serialize(),
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
        	"detalle": {
        		selector : '#id_reg_detalle',
                validators: {
                    notEmpty: {
                        message: 'El detalle es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El detalle es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
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
            "fechaFin": {
                selector: "#id_reg_fechaFin",
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
            "alquiler.idAlquiler": {
                selector : '#id_reg_alquiler',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
            "proveedor.idProveedor": {
        		selector : '#id_reg_proveedor',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
            "tipContrato.idTipocontrato": {
            	selector : '#id_reg_tipoContr',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
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
        	"detalle": {
        		selector : '#id_act_detalle',
                validators: {
                    notEmpty: {
                        message: 'El detalle es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El detalle es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
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
            "fechaFin": {
                selector: "#id_act_fechaFin",
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
            "alquiler.idAlquiler": {
                selector : '#id_act_alquiler',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
            "proveedor.idProveedor": {
        		selector : '#id_act_proveedor',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
            "tipContrato.idTipocontrato": {
            	selector : '#id_act_tipoContr',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
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