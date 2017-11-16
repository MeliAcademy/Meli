<html>
	<head>
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
			<table style="width:100%">
				<tr>
		      		<th>Título</th>
		      		<th>Fecha de publicación</th>
		      		<th>Precio</th>
		      		<th>Usado</th>
		      	</tr>
				<g:each var="each" in="${publicaciones}">
			      	<tr class="rowPub" onclick="goToPublicacion(${each.id});">
						<td>${each.titulo}</td>
						<td>${each.fechaPublicacion}</td>
						<td>${each.precio}</td>
						<td>${each.esPublicacionSinUso}</td>
			      	</tr>	
				</g:each>
			</table>
			<br><br>
		</div>
	</body>
</html>