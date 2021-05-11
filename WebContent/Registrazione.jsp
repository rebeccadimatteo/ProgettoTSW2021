<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrazione</title>
</head>
<body>

	<form action="RegistrazioneServlet" method="post">

		<fieldset>

			<legend>
				<b>Dati Utente </b>
			</legend>

			<p align="center">
				Inserire Nome : <input type="text" name="nome" placeholder="Rebecca" /><br>
			</p>
			<p align="center">
				Inserire Cognome : <input type="text" name="cognome"
					placeholder="Di Matteo" />
			</p>
			<p align="center">
				Inserire Codice Fiscale : <input type="text" name="cf"
					placeholder="RDM00AOG1" />
			</p>
			<p align="center">
				Inserire Email : <input type="email" name="email"
					placeholder="beccadimatteo@gmail.com" />
			</p>
			<p align="center">
				Inserire Cellulare : <input type="tel" name="cell"
					placeholder="3894685921" />
			</p>
			<p align="center">
				Inserire nome utente : <input type="text" name="username"
					placeholder="becca12" /><br>
			</p>
			<p align="center">
				Inserire password : <input type="password" name="pwsd"
					placeholder="**********" />
			</p>
			<p align="right">
				<input type="submit" value="Registrati">
			</p>



		</fieldset>
		<%
			String errore = (String) request.getAttribute("errore");
		%>
       <h4><%= errore %> </h4>

	</form>


</body>
</html>