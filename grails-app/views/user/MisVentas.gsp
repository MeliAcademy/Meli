<html>
	<head>
		<title>Mis publicaciones</title>
		<meta name="layout" content="main"/>
		<style type="text/css">
			.rowPub:hover{
				cursor: pointer;
			}
			td { text-align: center; } 
			td * { display: inline; }
		</style>
	</head>
	<body>
	<div class="bodygeneral">
		<h1>Mis ventas</h1>
		<br>
		<table id="tabla" style="width:100%">
				<thead>
					<tr>
			      		<th>Título</th>
			      		<th>Fecha de publicación</th>
			      		<th>Precio</th>
			      		
			      	</tr>
			    </thead>
	    <tbody>
		<g:each var="each" in="${ventas}">
			<tr class="Nuevo rowPub" onclick="goToPublicacion(${each.id});">
					<td>${each.titulo}</td>
					<td>${each.fechaPublicacion}</td>
					<td>${each.precio}</td>
		    </tr>
		</g:each>
		</tbody>
		</table>
		</div>
	</body>
</html>