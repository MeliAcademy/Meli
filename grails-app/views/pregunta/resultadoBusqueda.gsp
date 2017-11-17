<html>
	<head>	
	  	<title>Resultado</title>
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
			<h1>Resultado</h1>
			<br>
			
			<table id="tabla" style="width:100%">
				<thead>
					<tr>
			      		<th>Pregunta</th>
			      		<th>Respuesta</th>
			      	</tr>
			    </thead>
			    <tbody>
					<g:each var="each" in="${preguntas}">
							<tr>
								<td>${each.texto}</td>
								<td>${each.respuesta}</td>
					      	</tr>
					</g:each>
				</tbody>
			</table>
			<br><br>
				<g:form controller="pregunta" action="crearPregunta" method="POST">
				<div align=center>
					 <label>Pregunta:</label> <input type="text" name="texto" required> <br>
					 <label>&nbsp;</label> <input class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" type="submit" value="Publicar">
				</div>
			</g:form>
		</div>
	</body>
</html>