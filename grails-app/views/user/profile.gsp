<html>
	<head>
	  <title>MeliCommerce</title>
	  <meta name="layout" content="main"/>
	</head>
	
	<body >
      <div class="bodygeneral">
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
      </div>
	</body>
</html>