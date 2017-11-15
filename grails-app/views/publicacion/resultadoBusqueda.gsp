<html>
	<head>
		<title>Resultado</title>
		<meta name="layout" content="main" />
	</head>
	<body>
		<h1>Resultado</h1>
		<table>
			<tr>
	      		<th>Título</th>
	      		<th>Fecha de publicación</th>
	      		<th></th>
	      	</tr>
			<g:each var="each" in="${publicaciones}">
		      	<tr>
					<td>${each.titulo}</td>
					<td>${each.fechaDePublicacion}</td>
		      	</tr>	
			</g:each>
		</table>
		<g:link action='volver'>Volver</g:link>
	</body>
</html>