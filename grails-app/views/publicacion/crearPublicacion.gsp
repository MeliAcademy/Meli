<html>
	<head>
		<title>Publique sus articulos</title>
		<meta name="layout" content="main"/>
	</head>
	
	<body>
		<div class="bodygeneral">
			<g:form controller="publicacion" action="resultadoCrear" method="POST">
				<div align=center>
					 <label>Titulo:</label> <input type="text" name="titulo" required> <br>
					 <label>Descripcion:</label> <input type="text" name="descripcion" required> <br>
					 <label>Precio:</label> <input type="text" name="precio" required> <br>
					 <label>&nbsp;</label> <input type="submit" value="Publicar">
				</div>
			</g:form>
		</div>
	</body>
</html>