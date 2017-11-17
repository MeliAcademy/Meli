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
		</div>
	</body>
</html>