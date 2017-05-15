<?php

	$servidor='localhost';
	$usuario='root';
	$pass='';
	$bd='tenis';
	
	$conexion = mysqli_connect($servidor, $usuario, $pass, $bd);
	mysqli_set_charset($conexion,'utf8');
	
	if (isset($_GET['pag'])) {
		$pagina=$_GET['pag'];
		}else{
			$pagina = 1;
			}

    if (isset($_GET['gs'])) {
		$torneo = $_GET['gs'];
		echo '<script>
		$(document).ready(function(){
		$("body").hide().fadeIn(750);
		$("#galeria").addClass("hidden");
		$("#main").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#tabla").addClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").removeClass("hidden");
		});
		</script>';
		}
		
	if(isset($_GET['form'])){
		echo '<script>
		$(document).ready(function(){
			$("#aviso span").text("Formulario procesado!");
			$("#aviso span").css("border","#900 solid 10px");
			$("#aviso span").css("fontSize","40px");
			$("#aviso span").css("padding","5px");
			$("#aviso span").addClass("text-danger");
			$("#aviso").removeClass("hidden");
			$("#aviso").fadeOut(5000);
		});
		</script>';
		}
		
	?>