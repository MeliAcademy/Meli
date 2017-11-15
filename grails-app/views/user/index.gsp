<html>
	<head>
		<meta name="layout" content="main">
		<title>Ingrese a Meli</title>
	<style type="text/css">
		label{
			float: left;
			width: 65px;	
		}
	</style>
	</head>
	<body>
		${flash.message}
		<g:form action="home" style="padding-left:220px">
			<div style="padding-left:200px">
				<label>Username:</label> <input type="text" name="userName"> <br>
				<label>Passoword:</label> <input type="password" name="password"> <br>
				<label>&nbsp;</label> <input type="submit" value="Login">
			</div>
		</g:form>	
	</body>
</html>