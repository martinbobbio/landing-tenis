$(document).ready(function(){
	
	document.getElementById("ranking").addEventListener("click",refrescar,false);
	document.getElementById("principal").addEventListener("click",refrescar,false);
	document.getElementById("jugadores").addEventListener("click",refrescar,false);
	document.getElementById("resultados").addEventListener("click",refrescar,false);
	document.getElementById("formulario").addEventListener("click",refrescar,false);
	document.getElementById("login").addEventListener("click",refrescar,false);
	
});

function refrescar(e){
	if(e.target==ranking) {
		$("#main").addClass("hidden")
		$("#tabla").fadeIn(750).removeClass("hidden")
		$("#galeria").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").addClass("hidden");
		$("#favorito").addClass("hidden");
		$("#logueo").addClass("hidden");
		}
	if(e.target==principal) {
		$("#tabla").addClass("hidden");
		$("#main").fadeIn(750).removeClass("hidden");
		$("#galeria").addClass("hidden");
		$("#paginas").fadeIn(750).removeClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").addClass("hidden");
		$("#favorito").addClass("hidden");
		$("#logueo").addClass("hidden");
		}
	if(e.target==jugadores) {
		$("#galeria").fadeIn(750).removeClass("hidden");
		$("#main").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#tabla").addClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").addClass("hidden");
		$("#favorito").addClass("hidden");
		$("#logueo").addClass("hidden");
		}
	if(e.target==resultados) {
		$("#galeria").addClass("hidden");
		$("#main").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#tabla").addClass("hidden");
		$("#partidos").fadeIn(750).removeClass("hidden");
		$("#torneos").addClass("hidden");
		$("#favorito").addClass("hidden");
		$("#logueo").addClass("hidden");
		}
	if(e.target==australian || e.target==roland || e.target==wimbledon || e.target==us) {
		$("#galeria").addClass("hidden");
		$("#main").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#tabla").addClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").removeClass("hidden");
		$("#favorito").addClass("hidden");
		$("#logueo").addClass("hidden");
		}
	if(e.target==formulario) {
		$("#galeria").addClass("hidden");
		$("#main").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#tabla").addClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").addClass("hidden");
		$("#favorito").fadeIn(750).removeClass("hidden");
		$("#logueo").addClass("hidden");
		}
	if(e.target==login) {
		$("#galeria").addClass("hidden");
		$("#main").addClass("hidden");
		$("#paginas").addClass("hidden");
		$("#tabla").addClass("hidden");
		$("#partidos").addClass("hidden");
		$("#torneos").addClass("hidden");
		$("#favorito").addClass("hidden");
		$("#logueo").fadeIn(750).removeClass("hidden");
		}
	
	}
	
function doSearch()
		{
			var tableReg = document.getElementById('datos');
			var searchText = document.getElementById('searchTerm').value.toLowerCase();
			var cellsOfRow="";
			var found=false;
			var compareWith="";
 
			// Recorremos todas las filas con contenido de la tabla
			for (var i = 1; i < tableReg.rows.length; i++)
			{
				cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
				found = false;
				// Recorremos todas las celdas
				for (var j = 0; j < cellsOfRow.length && !found; j++)
				{
					compareWith = cellsOfRow[j].innerHTML.toLowerCase();
					// Buscamos el texto en el contenido de la celda
					if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
					{
						found = true;
					}
				}
				if(found)
				{
					tableReg.rows[i].style.display = '';
				} else {
					// si no ha encontrado ninguna coincidencia, esconde la
					// fila de la tabla
					tableReg.rows[i].style.display = 'none';
				}
			}
		}