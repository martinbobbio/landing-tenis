<?php


$usuario = $_POST['usuario']; 
$password = $_POST['password']; 

if($usuario == "Martin" && $password == 1234){
	$respuesta['mensaje'] = $_POST['usuario'] . ' <img src="img/pagina/Martin.jpg"class="img-circle" width=30px heigth=30px>'; 
	$respuesta['resultado'] = 1;
}else if($usuario == "Nico" && $password == 1234){
	$respuesta['mensaje'] = $_POST['usuario'] . ' <img src="img/pagina/Nico.jpg"class="img-circle" width=25px heigth=25px>'; 
	$respuesta['resultado'] = 1;}
else if($usuario == "Iara" && $password == 1234){
	$respuesta['mensaje'] = $_POST['usuario'] . ' <img src="img/pagina/Iara.jpg"class="img-circle" width=20px heigth=20px>'; 
	$respuesta['resultado'] = 1;}
else{
	$respuesta['mensaje'] =  '<p class="text-danger" style="font-size:20px;">El usuario o contraseña no son validos</p>';
	$respuesta['resultado'] = 0;
}

$respuesta['perfil'] = '<p><span class="text-info">Usuario:</span> '.$_POST['usuario'].'</p> <p><span class="text-info">Contraseña:</span> ****</p><p><span class="text-info">Foto:</span><br><br> <img src="img/pagina/'.$_POST['usuario'].'.jpg" class="img-responsive" </p>';
echo json_encode($respuesta);  


?>