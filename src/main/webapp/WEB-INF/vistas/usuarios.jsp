<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/usuarios.css" />
	<link rel="stylesheet" href="/css/normalize.css">
	<link rel="stylesheet" href="/css/all.css">
	<link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/msg.css" />

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/global.js"></script>

    <title>Usuarios</title>
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
                            <a href="" class="nav-btn-submenu"><i class="fas fa-solid fa-file-signature fa-fw"></i> &nbsp; Contratos </a>
                            <ul>
                                <li>
                                    <a href="/verContratos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Contratos</a>
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
                            <h2><b>Usuarios</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a class="btn btn-success" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE147;</i> <span>Agregar Usuario</span></a>
                            <a class="btn btn-secondary"  id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span>Mostrar y Ajustar Datos</span></a>
                            <input type="text" id="id_txt_filtro" style="width: 20%;" class="form-control" placeholder="Buscar&hellip;">		
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table">
                    <thead>
                        <tr>
                          <th>Id Usaurio</th>
                          <th>Nombre</th>
                          <th>Apellido</th>
                          <th>Documento</th>
                          <th>Email</th>
                          <th class="estado">Estado</th>
                          <th>Rol</th>
                          <th>Actualizar</th>
                          <th>Cambiar Estado</th>
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
                Registro de Usaurio
            </div>
            <div class="modal-body" style="padding: 20px 10px;">
                    <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaUsuarios" class="form"    method="post">
                        <div class="panel-group" id="steps">
                            <!-- Step 1 -->
                                    <div class="panel-body">
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Nombre</label>
                                                <input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                                            </div>
                                            <div class="form-group col">
                                                <label>Apellido</label>
                                                <input class="form-control" id="id_reg_apellido" name="apellido" placeholder="Ingrese apellido: " type="text" />
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Documento</label>
                                                <input class="form-control" id="id_reg_documento" name="documento" placeholder="Ingrese documento: " type="text"/>
                                            </div>
                                            <div class="form-group col">
                                              <label for="departamento">Clave:</label>
                                              <input type="password" class="form-control password1" id="id_reg_contraseña" name="contrasena" placeholder="Ingrese contraseña: " />
                                              <span class="fa fa-fw fa-eye password-icon show-password"></span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Email</label>
                                                <input  class="form-control" id="id_reg_email" name="email" placeholder="Ingrese email: " type="text"/>
                                            </div>
                                        </div>
                                        <div class="form-group col">
                                            <label>Rol</label>
                                            <select class="form"  id="id_reg_rol" name="rol">
                                                <option value=" "> -Seleccione- </option>
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
                      Actualiza Cliente
                  </div>
                  <div class="modal-body" style="padding: 20px 10px;">
                          <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaUsuarios" class="form"  method="post">
                              <div class="panel-group" id="steps">
                                  <!-- Step 1 -->
                                          <div class="panel-body">
                                            <div class="form-group">
                                              <label>ID</label>
                                              <input class="form-control" id="id_ID" readonly="readonly" name="idUsuario" type="text" maxlength="8"/>
                                           </div>
                                            <div class="form-row ">
                                              <div class="form-group col">
                                                  <label>Nombre</label>
                                                  <input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                                              </div>
                                              <div class="form-group col">
                                                  <label>Apellido</label>
                                                  <input class="form-control" id="id_act_apellido" name="apellido" placeholder="Ingrese apellido: " type="text" />
                                              </div>
                                          </div>
                                          <br>
                                          <div class="form-row">
                                              <div class="form-group col">
                                                  <label>Documento</label>
                                                  <input class="form-control" id="id_act_documento" name="documento" placeholder="Ingrese documento: " type="text"/>
                                              </div>
                                              <div class="form-group col">
                                                  <label>Contraseña</label>
                                                  <input class="form-control password1" id="id_act_contraseña" name="contrasena" placeholder="Ingrese contraseña: " type="password"  readonly="readonly"/>
                                                  <span class="fa fa-fw fa-eye-slash password-icon show-password"></span>
                                              </div>
                                          </div>
                                          <div class="form-row align-items-center">
                                              <div class="form-group col">
                                                  <label>Email</label>
                                                  <input  class="form-control" id="id_act_email" name="email" placeholder="Ingrese email: " type="text"/>
                                              </div>
                                          </div>
                                          <div class="form-group col">
                                                  <label>Rol</label>
                                                  <select class="form"  id="id_act_rol" name="rol">
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

      $.getJSON("listaRol", {}, function(data){
        $.each(data, function(i,item){
          $("#id_reg_rol").append("<option value="+item.idRol+">"+ item.nombre + "</option>");
          $("#id_act_rol").append("<option value="+item.idRol+">"+ item.nombre + "</option>");
        });
      });

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
			    ordering: true,
			    processing: true,
			    pageLength: 5,
			    lengthChange: false,
          columns:[
            {data: "idUsuario"},
            {data: "nombre"},
            {data: "apellido"},
            {data: "documento"},
            {data: "email"},
            {data: 'estado', width: "20%"},
            {data: "rol.nombre"},
            {data: function(row, type, val, meta){
					  var salida='<button type="button" style="width: 40px" class="btn btn-success btn-sm" onclick="editar(\''+row.idUsuario + '\',\''+row.nombre + '\',\'' +row.apellido + '\',\''+row.documento + '\',\''+row.contrasena + '\',\'' +row.email + '\', \''+ row.estado + '\',\''+ row.rol.idRol + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
					  return salida;
				    },className:'text-center'},	
				    {data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 50px" class="btn btn-warning btn-sm" onclick="cambiarEstado(\'' + row.idUsuario + '\')"><i class="material-icons" data-toggle="tooltip" title="Cambiar">&#xE14B;</i></button>';
					  return salida;
				    },className:'text-center'},
                    
          ],
          createdRow: function(row, data, dataIndex) {
            // Obtenemos el estado de la fila actual
            var estado = data.estado;
            // Creamos una clase CSS basada en el estado
            var clase = '';
            if (estado === 'Activo') {
              clase = 'estado-activo';
              icono_clase = 'fa-check-circle';
            } else if (estado === 'Bloqueado') {
              clase = 'estado-bloqueado';
              icono_clase = 'fa-ban';
            }
            // Agregamos la clase CSS al texto y al icono
            var celda = $(row).find('td:eq(5)');
            celda.addClass(clase);
            var texto = celda.text();
            celda.empty();
            celda.append('<span class="estado-icono"><i class="fas ' + icono_clase + '"></i></span>');
            celda.append('<span class="estado-texto ' + (clase === 'estado-bloqueado' ? 'estado-texto-bloqueado' : '') + '">' + texto + '</span>');
          }
        });
      }
      /*Listar Datos*/
      /*Filtrar Datos*/
      $("#id_btn_filtrar").click(function(){
        var fil=$("#id_txt_filtro").val();
        $.getJSON("listarUsaurios",{"filtro":fil},function(lista){
          listarDatos(lista);
        });
      });
      /*Filtrar Datos*/
      

      /*Eliminar*/
      function accionEliminar(id){
        $.ajax({
          type: "POST",
          url: "eliminarUsaurios",
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
        mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
      }
      /*Eliminar*/
      /*Cambiar Estado*/
      function accionCambiarEstado(idUsuario){
        $.ajax({
          type: "POST",
          url: "cambiarEstado",
          data: {"id":idUsuario},
          success: function(data){
            listarDatos(data.lista);
            mostrarMensaje(data.mensaje);
          },
          error: function(){
            mostrarMensaje(MSG_ERROR);
          }
        });
      }
      /*Cambiar Estado*/
      function cambiarEstado(idUsuario){
          mostrarMensajeConfirmacion(MSG_CAMBIAR_ESTADO, accionCambiarEstado, null, idUsuario);
      }
      /*Cambiar Estado*/
      function actualizarFila(usuario){
          var fila = $("#" + usuario.idUsuario);
          fila.find(".estado").text(usuario.estado);
      }
      /*Cambiar Estado*/
      /*Limpiar Formulario*/
      function limpiarFormulario(){
        $('#id_reg_nombre').val('');
        $('#id_reg_apellido').val('');
        $('#id_reg_documento').val('');
        $('#id_reg_contraseña').val('');
        $('#id_reg_email').val('');
        $('#id_reg_estado').val('');
        $('#id_reg_rol').val('');
      }
      /*Limpiar Formulario*/
      /*Agregar*/
      $("#id_btn_registra").click(function(){
        var validator = $('#id_form_registra').data('bootstrapValidator');
        validator.validate();

        if(validator.isValid()){
          $.ajax({
            type: "POST",
            url: "insertarUsuarios",
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

      /*Agregar*/

      /*Editar*/
      function editar(id,nombre,apellido,documento,contrasena,email,estado,idRol){
        $('#id_ID').val(id);
        $('#id_act_nombre').val(nombre);
        $('#id_act_apellido').val(apellido);
        $('#id_act_documento').val(documento);
        $('#id_act_contraseña').val(contrasena);
        $('#id_act_email').val(email);
        $('#id_act_estado').val(estado);
        $('#id_act_rol').val(idRol);
        $('#id_div_modal_actualiza').modal("show");
      }
      $("#id_btn_actualiza").click(function(){
        var validator = $('#id_form_actualiza').data('bootstrapValidator');
        validator.validate();
        if(validator.isValid()){
          $.ajax({
            type: "POST",
            url: "actualizaUsuario",
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
      /*Editar*/

      window.addEventListener("load", function() {

      // icono para mostrar contraseña
      showPassword = document.querySelector('.show-password');
      showPassword.addEventListener('click', () => {
      
          // elementos input de tipo clave
          password1 = document.querySelector('.password1');
          password2 = document.querySelector('.password2');
      
          if ( password1.type === "text" ) {
              password1.type = "password"
              password2.type = "password"
              showPassword.classList.remove('fa-eye-slash');
          } else {
              password1.type = "text"
              password2.type = "text"
              showPassword.classList.toggle("fa-eye-slash");
          }
        });
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
        	"nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "apellido": {
              selector : '#id_reg_apellido',
                validators: {
                    notEmpty: {
                        message: 'El apellido es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El apellido es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "documento": {
              selector: "#id_reg_documento",
                validators:{
                    notEmpty: {
                         message: 'El documento es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{6,10}$/,
                        message: 'el documento es de 6 a 10'
                    },
                }
            },
            "contrasena": {
              selector : '#id_reg_contraseña',
                validators: {
                	notEmpty: {
                        message: 'La contraseña es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[$@!%?&.]).{6,12}$/,
                        message: 'Incluya Mayuscula,Minuscula,Numeros y Signos'
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
            "estado": {
              selector : '#id_reg_estado',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
            "rol.idRol": {
        		selector : '#id_reg_rol',
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
        	"nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "apellido": {
              selector : '#id_act_apellido',
                validators: {
                    notEmpty: {
                        message: 'El apellido es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El apellido es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "documento": {
              selector: "#id_act_documento",
                validators:{
                    notEmpty: {
                         message: 'El documento es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{6,10}$/,
                        message: 'el documento es de 6 a 10'
                    },
                }
            },
            "contrasena": {
              selector : '#id_act_contraseña',
                validators: {
                	notEmpty: {
                        message: 'La contraseña es un campo obligatorio'
                    },
                    /*regexp: {
                        regexp: /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[$@!%?&.]).{6,12}$/,
                        message: 'La contraseña es debil'
                    },*/
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
            "estado": {
              selector : '#id_act_estado',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
            "rol.idRol": {
        		selector : '#id_act_rol',
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
