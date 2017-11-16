<html>
	<head>
	  	<title>Resultado</title>
		<meta name="layout" content="main"/>
	</head>
	<body>
		<div class="bodygeneral">
			<h1>Resultado</h1>
			<br>
			<table>
				<tr>
		      		<th>Título</th>
		      		<th>Fecha de publicación</th>
		      		<th>Precio</th>
		      	</tr>
				<g:each var="each" in="${publicaciones}">
			      	<tr>
						<td>${each.titulo}</td>
						<td>${each.fechaPublicacion}</td>
						<td>${each.precio}</td>
			      	</tr>	
				</g:each>
			</table>
			<br><br>
		</div>
	</body>
</html>