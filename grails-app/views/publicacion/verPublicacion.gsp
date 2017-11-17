<html>
	<head>
		<title>${publicacion.titulo}</title>
		<meta name="layout" content="main"/>
		<g:javascript>
			function comprar(){
				if("${session.user}" != ""){
					location.href = "${createLink(action: 'resultadoComprar', controller: 'publicacion', params: [publicacion: publicacion.id])}";
				}else{
					alert('Primero debes loguearte')
				}	
			}
			
			function goToPreguntas(){
				location.href = "${createLink(action: 'resultadoBusqueda', controller: 'pregunta', params: [publicacion: publicacion.id])}";
			}
		</g:javascript>
		<style type="text/css">
			.classa:hover{
				cursor: pointer;
			}
			.classa { color: #fed136!important; text-decoration: underline!important; }
		</style>
	</head>
	
	<body>
		<div class="bodygeneral">
			<div class="text-center">
	          <div class="col-md-4" style="max-width: 100%!important">
	            <h4 class="service-heading">${publicacion.titulo}</h4>
	            <p class="text-muted">${publicacion.descripcion}</p>
	          </div>
	          <div class="col-md-4" style="max-width: 100%!important">
	            <h4 class="service-heading">$${publicacion.precio}</h4>
	            <a class="btn btn-primary btn-xl text-uppercase" onclick="javascript:comprar();">Comprar</a>				
	          </div>
	          <br>
	          <div class="text-center"><br><br>
			<p class="text-muted"> Queres hacer una pregunta? 
			Hazlo <a onclick="javascript:goToPreguntas();">aqui</a> </p>
			</div>
	        </div>
	        
		</div>
		
		
	</body>
</html>