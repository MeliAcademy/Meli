<html>
	<head>
	  <title>Resultado</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<h1>Resultado</h1>
		<br>
		<table>
			<tr>
	      		<th>Título</th>
	      		<th>Fecha de publicación</th>
	      		<th></th>
	      	</tr>
			<g:each var="each" in="${publicaciones}">
		      	<tr>
					<td>${each.titulo}</td>
					<td>${each.fechaPublicacion}</td>
		      	</tr>	
			</g:each>
		</table>
		<br><br>
		<g:link action='volver'>Volver</g:link>
	</body>
</html>