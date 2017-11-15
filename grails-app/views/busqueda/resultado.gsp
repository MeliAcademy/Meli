<html>
	<head>
		<title>Busquedas</title>
		<meta name="layout" content="main" />
	</head>
	<body>
		<formset> 
<%--			<g:form action="buscarPorPersona">--%>
			<g:form name="myForm" url="[controller:'buscarDedicacion']">
			<label for="persona">Persona</label>
			<br>
			<br>
			<g:actionSubmit value="Buscar" action="buscarPorNombre" />
<%--				<g:submitButton name="search" value="Buscar" />--%>
			</g:form> 
		</formset>
		<br>
		<br>
		<g:link controller="buscarDedicacion" action="buscarPorProyecto" params="[proyecto: 'PRY00122-LoJack-Bookar']">Ejemplo Path variables y URLMapping</g:link>
		<br>
		<a href="/Horas/cualquiera/sismael">Ejemplo URLMapping</a>
	</body>
</html>