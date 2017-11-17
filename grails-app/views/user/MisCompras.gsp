<html>
	<head>
		<title>Mis compras</title>
		<meta name="layout" content="main"/>
		<style type="text/css">
			.rowPub:hover{
				cursor: pointer;
			}
			td { text-align: center; } 
			td * { display: inline; }
		</style>
				<g:javascript>
			function goToPublicacion(id){
				window.location = window.location.origin + "/MeliCommerce/publicacion/calificar/" + id
			}
		</g:javascript>
	</head>
	<body>
	<div class="bodygeneral">
		<h1>Mis compras</h1>
		<br>
		<table id="tabla" style="width:100%">
				<thead>
					<tr>
			      		<th>Título</th>
			      		<th>Fecha de publicación</th>
			      		<th>Precio</th>
			      		<th></th>
			      	</tr>
			    </thead>
	    <tbody>
		<g:each var="each" in="${compras}">
			<tr class="Nuevo rowPub" onclick="goToPublicacion(${each.id});">
				<td>${each.titulo}</td>
				<td>${each.fechaPublicacion}</td>
				<td>${each.precio}</td>
				<td><a class="btn btn-primary btn-xl text-uppercase" onclick="javascript:goToPublicacion(${each.id});">Calificar</a></td>
	    	</tr>
		</g:each>
		</tbody>
		</table>
		</div>
	</body>
</html>