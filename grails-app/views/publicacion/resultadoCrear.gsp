<html>
	<head>
	  	<title>Resultado</title>
		<meta name="layout" content="main"/>
		<g:javascript>
			function goToPublicacion(){
				window.location = "/MeliCommerce/publicacion/verPublicacion/" + ${publicacion.id}
			}
		</g:javascript>
	</head>
	<body>
		<div class="bodygeneral">
			<div align=center>
				<g:if test="${resultado == true}">
				     <div id="resultadoTrue" style="text-align:center">
						<h1>La publicacion se ha realizado correctamente!</h1>
						<br>
						<div>
							<a class="btn btn-primary btn-xl text-uppercase" onclick="javascript:goToPublicacion();">Ver la publicación</a>
						</div>
					</div>
				</g:if>
				<g:else>
				     <div id="resultadoFalse" style="text-align:center">
						<h1>Oops! Hubo un error al publicar, intentelo nuevamente</h1>
						<br>
						<div>
							<a class="btn btn-primary btn-xl text-uppercase" href="javascript:history.back()">Volver</a>
						</div>
					</div>
				</g:else>
			</div>
		</div>
	</body>
</html>