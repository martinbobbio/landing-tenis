$("#boton").on("click", function(){
			$.ajax({
			  url: 'formulario.php',
			  type: 'GET',
			  dataType: 'html',
			  success: function(datos) {
					if($("#email").val != null){
					alert ("Falta rellenar el email!");
					}
					$("#form").fadeOut(0);
					$('#salida').html(datos);

			  },
			  error: function(){
					alert("Ouch!!! hubo un error");
			  }
			});
		});