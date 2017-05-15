$('form').on("submit", function(evento) {
						var datos_formulario = $(this).serialize();
						$.ajax({
						  url: 'login.php',
						  data: datos_formulario,
						  type: 'POST',
						  dataType: 'json',
						  success: function(datos) {
	
									if(datos.resultado == 1){
										$('#respuesta').html(datos.mensaje);
										$('#formularioLogueo').fadeOut(0);
										$('#usuario').html(datos.perfil);
										$('#tituloPerfil').text("Perfil");
							
									}else{
										$('#errorLogin').html(datos.mensaje);
									}
						  }
								
						});
						
						$(this).each(function(){
							this.reset();
						})
						return false;
					  });