<html>
	<head>
		<title>ENTRE A LA HOME</title>
	</head>
	
	<body>
	<g:form controller="publicacion" action="buscarPorTitulo" style="padding-left:220px" method="get">
		<div style="padding-left:200px">
			<input type="text" name="titulo">
			<label>&nbsp;</label> <input type="submit" value="Buscar">
		</div>
	</g:form>
	<g:form action="logout" style="padding-left:220px">
		<div style="padding-left: 200px">
			 <label>&nbsp;</label> <input type="submit" value="Logout">
		</div>
	</g:form>
	<br>
	<br>
</body>
</html>