<html>
	<head>
		<title>Publique sus articulos</title>
		<meta name="layout" content="main"/>
	</head>
	
	<body>
		<div class="bodygeneral">
			<g:form controller="publicacion" action="resultadoCrear" method="POST">
				<div align=center>
					<h1>Comenzá ahora: publicá un producto</h1>
					<br>
					<br>
					 <label>Titulo:</label> <input type="text" name="titulo" required> <br>
					 <label>Descripcion:</label> <input type="text" name="descripcion" style="width: 250px;" required> <br>
					 <label>Precio:</label> <input type="text" name="precio" required> <br>
					 <label>Estado:</label> <select name="esPublicacionSinUso" required>
					   <option value=false >Es usado</option> 
					   <option value=true selected>Es nuevo</option>
					 </select>
					 <br>
 					 <label>Categoria:</label> <select name="categoria" required>
	 					 <g:each var="each" in="${categorias}">
	 					 	<option value="${each.id}" selected>${each.nombre}</option>
	 					 </g:each>
					 </select><br><br>
					 <label>&nbsp;</label> <input class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" type="submit" value="Publicar">
				</div>
			</g:form>
		</div>
	</body>
</html>