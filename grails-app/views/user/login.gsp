<html>
	<head>
		<title>MeliCommerce</title>
		<meta name="layout" content="main"/>
	</head>
	
	<body class="bodygeneral">
		${flash.message}
		<g:form action="home" class="container-fluid" >
		<br><br><br><br><br><br>
			<div align=center>
				<label>Username:</label> <input type="text" name="userName"> <br>
				<label>Passoword:</label> <input type="password" name="password"> <br>
				<label>&nbsp;</label> <input type="submit" value="Login">
			</div>
		</g:form>
	</body>
</html>