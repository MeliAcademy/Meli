<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="MeliCommerce"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${assetPath(src: 'agency.min.css')}">
		<link rel="stylesheet" href="${assetPath(src: 'bootstrap.min.css')}">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">
		<g:layoutHead/>
	</head>
	<body id="page-top">
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar-shrink" id="mainNav">
	      <div class="container">
	        <a class="navbar-brand js-scroll-trigger" href="/MeliCommerce/user/index">MeliCommerce</a>
	        <div class="collapse navbar-collapse" id="navbarResponsive">
	          <ul class="navbar-nav text-uppercase ml-auto">
	            <li class="nav-item" style="width:500px;">
	            	<g:form controller="publicacion" action="buscarPorTitulo" method="get" style="margin-top:9px;;display:flex;flex-direction:row;align-items: center;flex-wrap: nowrap;">
						<input type="text" name="titulo" required style="margin-right:10px;width:400px;">
						<input type="submit" class="nav-link js-scroll-trigger btn btn-primary" value="BUSCAR" style="padding:5px!important">
					</g:form>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link js-scroll-trigger" href="../publicacion/crearPublicacion.gsp">PUBLICAR</a>
	            </li>
	            <li class="nav-item">
		            <g:if test="${session.user==null}">
						<a class="nav-link js-scroll-trigger" href="../user/login.gsp">LOGIN</a>
					</g:if>
		            <g:else>
						<a class="nav-link js-scroll-trigger" href="../user/profile.gsp">${session.user}</a>
					</g:else>
	            </li>
	          </ul>
	        </div>
	      </div>
	    </nav>
	    <g:layoutBody/>	
    </body>
</html>
