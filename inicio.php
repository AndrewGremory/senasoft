<?php 
  include('funcion.php'); 
  $miconexion=conectar_bd('', 'senasoft'); 
  $resultado=consulta($miconexion,"select * from especialidad"); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="estilos.css"/>
     <!-- Bootstrap core CSS -->
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <title>Inicio |</title>
</head>
<body>
<<<<<<< HEAD
    
<div class="pos-f-t ">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4 ">
      <h4 class="text-white">Collapsed content</h4>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark justify-content-end" >
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon "></span>
    </button>
  </nav>
</div>

    <div style="padding-left:16px">
    <button class="button" style="vertical-align:middle"><span>Agregar Servicio </span></button><hr>
=======
   
<?php  
   include('nabvar.php');
?>
    <div style="padding-left:16px  ">
    <a class="button" style="vertical-align:middle" href="registrar_especialidad.php"><span>Registrar Especialidad </span></a><hr>
   
>>>>>>> a7f43c1987cf22d7b594e67c52e54e7be1c83ad7
    <div class="contenido">
      
        <center><div class="contenido-b">
        <?php while ($row = $resultado->fetch_array(MYSQLI_ASSOC))
              { 
              
                ?>

        <button class="button" style="vertical-align:middle"><span><?php echo $row['nom_especialidad']; ?> </span></button>
        

        <?php } ?>

                

        </div></center>
    </div>
</body>
</html>
