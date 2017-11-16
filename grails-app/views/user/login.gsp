<html>
	<head>
	  <title>MeliCommerce</title>
	  <meta name="layout" content="main"/>
	</head>
	
	<body>
		<div class="bodygeneral">
		    ${flash.message}
			<g:form action="home" class="container-fluid">
				<div align=center>
					<label>Username:</label> <input type="text" name="userName"> <br>
					<label>Passoword:</label> <input type="password" name="password"> <br>
					<label>&nbsp;</label> <input type="submit" value="Login">
				</div>
			</g:form>
		</div>
	</body>
</html>