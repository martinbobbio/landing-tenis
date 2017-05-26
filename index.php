<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>Tenis Mundial</title>

<link rel="stylesheet" type="text/css" href="resets.css">
<link rel="stylesheet" type="text/css" href="estilos.css">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="shortcut icon" href="img/icono.png">

<script src="jquery-1.6.3.min.js"></script>
<script src="scripts.js"></script>

<?php include ("principal.php") ?>

</head>

<body>
	
    <div class="container">
    <br>
    	<header>
        	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
            	<div class="container-fluid">
                	<div class="navbar-header">
                    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#barra">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>       
                        <a href="#" class="navbar-brand" id="principal">Tenis Mundial <span class="glyphicon glyphicon-home"></span></a>
                    </div>
                                 
                    <div class="collapse navbar-collapse" id="barra">
                        	<ul class="nav navbar-nav">
                            	<li><a href="#" id="ranking">Ranking <span class="glyphicon glyphicon-star-empty"></span></a></li>        
                                <li><a href="#" id="jugadores">Jugadores <span class="glyphicon glyphicon-eye-open"></span></a></li>
                                <li><a href="#" id="resultados">Resultados <span class="glyphicon glyphicon-blackboard"></span></a></li>
                                 <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Grand Slams <span class="glyphicon glyphicon-plane"></span><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                	<li><a href="index.php?gs=1" id="australian">Australian Open</a></li>
                                    <li class="divider"></li>
                                    <li><a href="index.php?gs=2" id="roland">Roland Garros</a></li>
                                    <li class="divider"></li>
                                    <li><a href="index.php?gs=3" id="wimbledon">Wimbledon</a></li>
                                    <li class="divider"></li>
                                    <li><a href="index.php?gs=4" id="us">Us Open</a></li>
                                </ul>
                                </li>
                                <li><a href="#" id="formulario">Jugador 2017 <span class="glyphicon glyphicon-gift"></span></a></li>
                                
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                            	<li><a href="#" id="login"><span id="respuesta">Login <span class="glyphicon glyphicon-user"></span></span></a></li>
                            </ul>
                    </div>
                </div>
            </nav>
        </header>

        <div class="main row" id="main">
			<article class="col-sm-8 col-lg-9">
 
            	<?php
				
				$post1 = ($pagina*2)-1;
				$post2 = $post1+1;
				
				$consulta = mysqli_query($conexion,'SELECT * FROM POSTS WHERE ID = '.$post1.' OR ID = '.$post2);
				
				while($resultados = mysqli_fetch_assoc($consulta)){
				
				 ?>
            
				<h3 class="text-primary"><?php echo $resultados['titulo']; ?></h3>
                <img src="img/noticias/<?php echo $resultados['imagen']; ?>" alt=""  class="img-responsive img-rounded"><br>
				<p style="border-bottom:2px solid #000; padding-bottom:20px;"><?php echo $resultados['descripcion']; }?></p>
			
			</article>
		
			<aside class="col-sm-4 col-lg-3 visible-lg visible-sm">
				
                <h2 class="text-success list-group-item">Torneos</h2> 
                
                 <?php
                $consulta = mysqli_query($conexion,'SELECT * FROM TORNEOS ORDER BY TIPO');
                while($resultados = mysqli_fetch_assoc($consulta)){?>
                
                <li class="list-group-item"><span class="badge list-group-item-success"><?php echo $resultados['tipo']; ?></span><a href="#<?php echo $resultados['id']; ?>" data-toggle="modal"><?php echo $resultados['torneo']; ?></a></li>
                
                
                <div class="modal fade" id="<?php echo $resultados['id']; ?>">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h3 class="modal-title"><span class="text-success"><span><?php echo $resultados['torneo']; ?></span> - <b><?php echo $resultados['tipo']; ?></b></span></h3>
                            </div>
                            <div class="modal-body">
                                <img src="img/torneos/<?php echo $resultados['imagen']; ?>" alt="" height="350" width="570">
                                <br><br><p><?php echo $resultados['descripcion']; ?></p>
                            </div>
                        </div>
                    </div>
                </div><?php }?>
                    
			</aside>
		</div>
        
        <div class="table-responsive hidden" id="tabla">
        
        <div style="width:300px" class="center-block">
        	<h2 class="text-primary">Ranking Hombres</h2>
        </div><br>
        
        <span class="text-primary">Busqueda avanzada: </span><input id="searchTerm" type="text" onkeyup="doSearch()" /><br><br>
        
            <table class="table table-bordered table-hover table-striped" id="datos">
                   <tr class="text-center info">
                      <td><b>Ranking</b></td>
                      <td><b>Jugador</b></td>
                      <td><b>Pais</b></td>
                      <td><b>G/P</b></td>
                      <td><b>Puntos</b></td>
                  </tr>
                  
                  <?php
				  
				  	$consulta = mysqli_query($conexion,'SELECT * FROM JUGADORES');
				  	while($resultados = mysqli_fetch_assoc($consulta)){?>
						
				  <tr class="text-center">
                      <td><?php echo $resultados['ranking']; ?></td>
                      <td><?php echo $resultados['jugador']; ?></td>
                      <td><?php echo $resultados['pais']; ?></td>
                      <td><?php echo $resultados['ganados']; ?>G - <?= $resultados['perdidos'] ?>P</td>
                      <td><?php echo $resultados['puntos']; ?></td>
                  </tr>
						<?php } ?>
				   
                   
              </table>
         </div>
         
         
         <div class="row hidden" id="galeria">
         
         <div style="width:300px" class="center-block">
        	<h2 class="text-primary">Jugadores ATP</h2>
        </div><br>
         
         <?php
         
		 $consulta = mysqli_query($conexion,'SELECT * FROM JUGADORES');
		 while($resultados = mysqli_fetch_assoc($consulta)){?>
		 
        	<div class="col-xs-6 col-md-3">
                <div class="thumbnail">
                    <img src="img/jugadores/<?php echo $resultados['imagen']; ?>" alt="" height="300" width="300">
                    <div class="caption visible-lg visible-sm">
                    	<h4 class="text-primary" style="display:inline"><?php echo $resultados['jugador']; ?></h4>
						<img src="img/paises/<?php echo $resultados['pais']; ?>.jpg" width="30px" height="20px">
						<span class="badge list-group-item-danger"> # <?php echo $resultados['ranking']; ?></span>
                        <br><br><p><b>Estadisticas:</b></p>
						 <ul>
      						<li>Pais: <?php echo $resultados['pais']; ?></li>
      						<li>Mano: <?php echo $resultados['mano']; ?></li>
      						<li>Ganados: <?php echo $resultados['ganados']; ?></li>
      						<li>Perdidos: <?php echo $resultados['perdidos']; ?></li>
							<li>Puntos: <?php echo $resultados['puntos']; ?></li>
    					</ul>
                    </div>
                </div>
				
            </div>
		 <?php } ?>
            
            
        </div>
        
        	<div class="col-xs-offset-3" id="paginas">
                <ul class="pagination pagination-lg">
                    <li id="paginaA"><a href="index.php?pag=<?php echo $pagina-1; ?>">&laquo;</a></li> 
                    <li id="pagina1"><a href="index.php">1</a></li> 
                    <li id="pagina2"><a id="p2" href="index.php?pag=2">2</a></li> 
                    <li id="pagina3"><a id="p3" href="index.php?pag=3">3</a></li> 
                    <li id="pagina4"><a id="p4" href="index.php?pag=4">4</a></li> 
                    <li id="paginaS"><a href="index.php?pag=<?php echo $pagina+1; ?>">&raquo;</a></li> 
                </ul>
            </div>
            
        <div class="row hidden" id="partidos">
        	
            <div style="width:300px" class="center-block">
        	<h2 class="text-primary">ATP World Finals</h2>
        </div><br>
            
            <div class="panel panel-info text-center">
                <div class="panel-heading text-center">Final</div>
                <div class="panel-body"><span class="text-danger">Roger Federer</span> <img src="img/paises/suiza.jpg" width="27px" height="18px"> defeats <span class="text-danger">Andy Murray</span> <img src="img/paises/gran bretaña.jpg" width="27px" height="18px"> (76 75)</div>
            </div>
            
            <div class="panel panel-info text-center">
                <div class="panel-heading text-center">Semifinal</div>
                <div class="panel-body"><span class="text-danger">Roger Federer</span> <img src="img/paises/suiza.jpg" width="27px" height="18px"> defeats <span class="text-danger">Novak Djokovic</span> <img src="img/paises/serbia.jpg" width="27px" height="18px"> (62 61)</div>
                <div class="panel-body"><span class="text-danger">Andy Murray</span> <img src="img/paises/gran bretaña.jpg" width="27px" height="18px"> defeats <span class="text-danger">Rafel Nadal</span> <img src="img/paises/españa.jpg" width="27px" height="18px"> (76 46 62)</div>
            </div>
            
            <div class="col-lg-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Grupo I</div>
                    <div class="panel-body"><span class="text-danger">Roger Federer</span> <img src="img/paises/suiza.jpg" width="27px" height="18px"> defeats <span class="text-danger">Milos Raonic</span> <img src="img/paises/canada.jpg" width="27px" height="18px"> (60 64)</div>
                    <div class="panel-body"><span class="text-danger">Roger Federer</span> <img src="img/paises/suiza.jpg" width="27px" height="18px"> defeats <span class="text-danger">Tomas Berdych</span> <img src="img/paises/republica checa.jpg" width="27px" height="18px"> (64 62)</div>
                    <div class="panel-body"><span class="text-danger">Roger Federer</span> <img src="img/paises/suiza.jpg" width="27px" height="18px"> defeats <span class="text-danger">Tomas Berdych</span> <img src="img/paises/españa.jpg" width="27px" height="18px"> (61 64)</div>
                    <div class="panel-body"><span class="text-danger">Rafael Nadal</span> <img src="img/paises/españa.jpg" width="27px" height="18px"> defeats <span class="text-danger">Tomas Berdych</span> <img src="img/paises/republica checa.jpg" width="27px" height="18px"> (76 75)</div>
                    <div class="panel-body"><span class="text-danger">Rafael Nadal</span> <img src="img/paises/españa.jpg" width="27px" height="18px"> defeats <span class="text-danger">Milos Raonic</span> <img src="img/paises/canada.jpg" width="27px" height="18px"> (76 76)</div>
                    <div class="panel-body"><span class="text-danger">Tomas Berdych</span> <img src="img/paises/republica checa.jpg" width="27px" height="18px"> defeats <span class="text-danger">Milos Raonic</span> <img src="img/paises/canada.jpg" width="27px" height="18px"> (64 64)</div>
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Grupo II</div>
                    <div class="panel-body"><span class="text-danger">Andy Murray</span> <img src="img/paises/gran bretaña.jpg" width="27px" height="18px"> defeats <span class="text-danger">Nick Kyrgios</span> <img src="img/paises/australia.jpg" width="27px" height="18px"> (60 64)</div>
                    <div class="panel-body"><span class="text-danger">Andy Murray</span> <img src="img/paises/gran bretaña.jpg" width="27px" height="18px"> defeats <span class="text-danger">Dominic Thiem</span> <img src="img/paises/austria.jpg" width="27px" height="18px"> (64 62)</div>
                    <div class="panel-body"><span class="text-danger">Andy Murray</span> <img src="img/paises/gran bretaña.jpg" width="27px" height="18px"> defeats <span class="text-danger">Novak Djokovic</span> <img src="img/paises/serbia.jpg" width="27px" height="18px"> (61 64)</div>
                    <div class="panel-body"><span class="text-danger">Novak Djokovic</span> <img src="img/paises/serbia.jpg" width="27px" height="18px"> defeats <span class="text-danger">Nick Kyrgios</span> <img src="img/paises/australia.jpg" width="27px" height="18px"> (76 75)</div>
                    <div class="panel-body"><span class="text-danger">Novak Djokovic</span> <img src="img/paises/serbia.jpg" width="27px" height="18px"> defeats <span class="text-danger">Dominic Thiem</span> <img src="img/paises/austria.jpg" width="27px" height="18px"> (76 76)</div>
                    <div class="panel-body"><span class="text-danger">Nick Kyrgios</span> <img src="img/paises/australia.jpg" width="27px" height="18px"> defeats <span class="text-danger">Dominic Thiem</span> <img src="img/paises/austria.jpg" width="27px" height="18px"> (64 64)</div>
                </div>
            </div>
            
        </div>
        
        <div class="row hidden" id="torneos">
        	
            <div style="width:300px" class="center-block">
                <h2 class="text-primary">Grand Slams</h2>
            </div><br>
            
             <?php 
             $consulta = mysqli_query($conexion,'SELECT * FROM GRANDSLAM WHERE ID = '.$torneo);
             while($resultados = mysqli_fetch_assoc($consulta)){
            ?>
            
            
            <div class="col-lg-6" style="height:100px;">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                  </ol>
        
        
                <div class="carousel-inner" role="listbox">
                  <div class="item active">
                    <img src="img/grand slams/<?php echo $resultados['nombre']; ?>1.jpg" alt="" style="display: block;width: 100%;height: 300px;">
                  </div>
              
                  <div class="item">
                    <img src="img/grand slams/<?php echo $resultados['nombre']; ?>2.jpg" alt="" height="200px" style="display: block;width: 100%;height: 300px;">
                  </div>
              
                  <div class="item">
                    <img src="img/grand slams/<?php echo $resultados['nombre']; ?>3.jpg" alt="" height="200px" style="display: block;width: 100%;height: 300px;">
                  </div>
              
                </div>
        
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
            </div>
		</div>
    
        <div class="col-lg-6 visible-lg">
        	<p><?= $resultados['descripcion'] ?></p>
           	<p><b>Caracteristicas: </b></p>
            	<ul>
                	<li><span class="text-success">Torneo: </span><?php echo $resultados['nombre']; ?></li>
                    <li><span class="text-success">Ciudad: </span><?php echo $resultados['ciudad']; ?></li>
                    <li><span class="text-success">Superficie: </span><?php echo $resultados['superficie']; ?></li>
                    <li><span class="text-success">Premio: </span>$<?php echo $resultados['premio']; ?></li>
                </ul>
        </div>
        
        <?php } ?>
    
        </div>
        
        <div class="row hidden" id="favorito">

            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4" id="form">
			
				<div style="width:300px" class="center-block">
					 <h2 class="text-primary">Jugador favorito</h2>
				</div><br>
			
            	<div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" placeholder="Email" id="email">
            	</div>
            
            	<div class="form-group">
                    <label for="opciones">Elige una opcion</label>
                    <select class="form-control">
						<?php 
                        $consulta = mysqli_query($conexion,'SELECT * FROM JUGADORES');
                        while($resultados = mysqli_fetch_assoc($consulta)){
                        ?>
                            <option><?php echo $resultados['jugador']; ?> (<?= $resultados['pais'] ?>)</option>
                        <?php } ?>
                    </select>
            	</div>
            
                <div class="form-group">
                    <label for="mensaje">¿Porque es tu favorito?</label>
                    <textarea class="form-control" placeholder="Dejanos una breve explicacion de porque has elegido a ese jugador"></textarea>
                </div>
                
                <div class="form-group">
					<button class="form-control" id="boton">Enviar</button>
                </div>
				
            </div>
			
			<div id="salida">
			</div>

			
			<script src="jquery-1.12.3.min.js"></script>
			<script src="ajax1.js"></script>
        
        </div>
		
		<div class="row hidden" id="logueo">
			<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div style="width:300px" class="center-block">
					<h2 class="text-primary" id="tituloPerfil">Login</h2>
				</div><br>
				
				<div id="usuario">
				</div>
				
				<form action="#" id="formularioLogueo">
				
					<div class="form-group">
						<label for="usuario">Usuario</label>
						<input type="text" class="form-control" placeholder="Usuario" name="usuario" required>
					</div>
					
					<div class="form-group">
						<label for="contraseña">Contraseña</label>
						<input type="password" class="form-control" placeholder="Contraseña" name="password" required>
					</div>
					
					<div class="form-group">
						<input type="submit" class="form-control">
					</div>
					
					<p id="errorLogin"></p>
				
				</form>
	
				<script src="ajax2.js"></script>
				
			</div>
		</div>
		
		
		<div class="container footer">
        	<span class="text-muted">Copryright - Martin Bobbio - ACM4A</span>
        </div>
    
    <script>
    if(<?php echo $pagina; ?>==1){
		$("#pagina1").addClass("active");
		$("#pagina2").removeClass("active");
		$("#pagina3").removeClass("active");
		$("#pagina4").removeClass("active");
		$("#paginaS").removeClass("hidden");
		$("#paginaA").addClass("hidden");
		}
	if(<?php echo $pagina; ?>==2){
		$("#pagina1").removeClass("active");
		$("#pagina2").addClass("active");
		$("#pagina3").removeClass("active");
		$("#pagina4").removeClass("active");
		}
	if(<?php echo $pagina; ?>==3){
		$("#pagina1").removeClass("active");
		$("#pagina2").removeClass("active");
		$("#pagina3").addClass("active");
		$("#pagina4").removeClass("active");
		}
	if(<?php echo $pagina; ?>==4){
		$("#pagina1").removeClass("active");
		$("#pagina2").removeClass("active");
		$("#pagina3").removeClass("active");
		$("#pagina4").addClass("active");
		$("#paginaS").addClass("hidden");
		$("#paginaA").removeClass("hidden");
		}
	</script>    
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    
</body>
</html>
