<html>
	<head>
	  	<title>Resultado</title>
		<meta name="layout" content="main"/>
		<g:javascript>
			function goToInicio(){
				window.location = "/MeliCommerce/user/index"
			}
		</g:javascript>
	</head>
	<body>
		<div class="bodygeneral">
			<div align=center>
				<g:if test="${resultado == true}">
				     <div id="resultadoTrue" style="text-align:center">
						<h1>El producto se ha comprado correctamente!</h1>
						<br>
						<div>
							<a class="btn btn-primary btn-xl text-uppercase" onclick="javascript:goToInicio();">Ir a inicio</a>
						</div>
					</div>
				</g:if>
				<g:else>
				     <div id="resultadoFalse" style="text-align:center">
						<h1>Oops! Hubo un error al comprar, intentelo nuevamente</h1>
						<p>${resultadoRazon}</p>
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