<html>
	<head>
	  <title>MeliCommerce</title>
	  <meta name="layout" content="main"/>
	</head>
	
	<body >
      <div class="bodygeneral">
			<div class="text-center">
	          <div class="col-md-4" style="max-width: 100%!important">
	            <h4 class="service-heading">Balance</h4>
	            <p class="text-muted">${usuario.balance}</p>
	          </div>
	        </div>
	      <g:form controller="user" action="logout" method="get" style="text-align:center;">
          	<g:submitButton name="Submit" value="Logout" class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" />
	      </g:form>
	      <br>
	      <g:form controller="user" action="showBuys" method="get" style="text-align:center;">
          	<g:submitButton name="Submit" value="Mis compras" class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" />
	      </g:form>
	      <br>
	      <g:form controller="user" action="showSell" method="get" style="text-align:center;">
          	<g:submitButton name="Submit" value="Mis ventas" class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" />
	      </g:form>
	      <br>
	      <g:form controller="user" action="showPubs" method="get" style="text-align:center;">
          	<g:submitButton name="Submit" value="Mis publicaciones" class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" />
	      </g:form>
      </div>
	</body>
</html>