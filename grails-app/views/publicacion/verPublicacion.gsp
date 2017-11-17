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
		</g:javascript>
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
	        </div>
		</div>
	</body>
</html>