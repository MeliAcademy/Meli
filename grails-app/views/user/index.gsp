<html>
	<head>
	  <title>Ingrese a Meli</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	
	<body>
		${flash.message}
		<g:form action="home" class="container-fluid" >
		<br><br><br><br><br><br>
			<div text-align=center align=center>
				<label>Username:</label> <input type="text" name="userName"> <br>
				<label>Passoword:</label> <input type="password" name="password"> <br>
				<label>&nbsp;</label> <input type="submit" value="Login">
			</div>
		</g:form>	
	</body>
</html>