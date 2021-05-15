<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<form action="LoginServlet" method="post">

		<fieldset>

			<legend>
				<b>Dati Utente </b>
			</legend>

			<p align="center">
				Inserire nome utente : <input type="text" name="username"
					placeholder="becca12" /><br> Inserire password : <input
					type="password" name="pwsd" placeholder="**********" /> <input
					type="submit" value="Accedi">


			</p>


		</fieldset>



	</form>
	<br>
	<p>Non sei Registrato? Clicca il tasto Registra!</p>
	<br>
	<form action="Registrazione.jsp" method="post">
		<input type="submit" value="Registrati" />

	</form>




</body>
</html>