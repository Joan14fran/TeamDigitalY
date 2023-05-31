<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario</title>
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
    <link rel="stylesheet" href="css/inventario.css" />
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
                            <a href="" class="nav-btn-submenu"><i class="fas fa-solid fa-file-signature fa-fw"></i> &nbsp; Contratos </a>
                            <ul>
                                <li>
                                    <a href="/verContratos"><i class="fas fa-solid fa-arrow-right fa-fw"></i> &nbsp; Ver Contratos</a>
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
                            <h2>Modulo <b>Inventario</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table">
                    <thead>
                      <tr>
                        <th>Id Inventario</th>
                        <th>Cantidad</th>
                        <th>Fecha Ingreso</th>
                      </tr>
                    </thead>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
        </div>

    </div>
  </section>
    <script type="text/javascript">


$(document).ready(function() {
  function listarDatos() {
  $.ajax({
    url: '/listaInventarioI', // aquí debes colocar la URL que corresponde a la petición en tu controlador
    type: 'GET',
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
        columns:[
          {data: "idInventario"},
          {data: "cantidad"},
          {data: "fechaIngreso"},	
        ]
      });

      // imprime la estructura de la tabla en la consola del navegador
      var columns = $('#id_table').DataTable().settings().init().columns;
      console.log(columns);

      // imprime los datos de la tabla en la consola del navegador
      var tableData = $('#id_table').DataTable().rows().data().toArray();
      console.log(tableData);
    }
  });
  }

  listarDatos();
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