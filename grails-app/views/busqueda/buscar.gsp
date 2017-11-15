<html>
	<head>
		<title>Resultado</title>
		<meta name="layout" content="main" />
	</head>
	<body>
		<h1>Resultado</h1>
		<table>
			<tr>
	      		<th>Semana</th>
	      		<th>Proyecto</th>
	      		<th>%</th>
	      		<th></th>
	      	</tr>
			<g:each var="each" in="${dedicaciones}">
		      	<tr>
					<td>${each.semana}</td>
					<td>${each.proyecto}</td>
					<td>${each.porcentaje}</td>
					<td>${each.persona}</td>
		      	</tr>	
			</g:each>
		</table>
		<g:link action='volver'>Volver</g:link>
	</body>
</html>