<html>
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
	$(function(){
		var $tabla = $('#tabla');
		$('#selectCategory').change(function(){
			var value = $(this).val();
			if (value){
				$('tbody tr.' + value, $tabla).show();
				$('tbody tr:not(.' + value + ')', $tabla).hide();
			}
			else{
				// Se ha seleccionado All
				$('tbody tr', $tabla).show();
			}
		});
	});
	</script>
	
	  	<title>Resultado</title>
		<meta name="layout" content="main"/>
		<style type="text/css">
			.rowPub:hover{
				cursor: pointer;
			}
			td { text-align: center; }
			td * { display: inline; }
		</style>
		<script type="text/javascript">
			function goToPublicacion(id){
				window.location = window.location.origin + "/MeliCommerce/publicacion/verPublicacion/" + id
			}
		</script>
	</head>
	<body>
		<div class="bodygeneral">
			<h1>Resultado</h1>
			<br>
			<div>
			<span>Class:</span> 
			<select id="selectCategory">
			            <option value="">ALL</option>
			            <option value="Nuevo">Nuevo</option>
			            <option value="Usado">Usado</option>
			        </select>
			</div>
			
			<table id="tabla" style="width:100%">
				<thead>
					<tr>
			      		<th>Título</th>
			      		<th>Fecha de publicación</th>
			      		<th>Precio</th>
			      		<th>Usado</th>
			      	</tr>
			    </thead>
			    <tbody>
					<g:each var="each" in="${publicaciones}">
						<g:if test="${each.esPublicacionSinUso == true}">
						<!-- rowPub -->
							<tr class="Nuevo" onclick="goToPublicacion(${each.id});">
								<td>${each.titulo}</td>
								<td>${each.fechaPublicacion}</td>
								<td>${each.precio}</td>
					      	</tr>
						</g:if>
						<g:if test="${each.esPublicacionSinUso == false}">
							<tr class="Usado" onclick="goToPublicacion(${each.id});">
								<td>${each.titulo}</td>
								<td>${each.fechaPublicacion}</td>
								<td>${each.precio}</td>
					      	</tr>
						</g:if>
					</g:each>
				</tbody>
			</table>
			
			<br><br>
		</div>
	</body>
</html>