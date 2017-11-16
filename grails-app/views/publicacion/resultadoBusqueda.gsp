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
		      		<th></th>
		      	</tr>
				<g:each var="each" in="${publicaciones}">
					<g:if test="${each.fueVendido == false}">
						<tr>
							<td>${each.titulo}</td>
							<td>${each.fechaPublicacion}</td>
				      	</tr>
					</g:if>
				</g:each>
			</table>
			<br><br>
		</div>
	</body>
</html>