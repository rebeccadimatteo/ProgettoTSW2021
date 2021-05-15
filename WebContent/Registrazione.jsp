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




		</fieldset>
		<%
			String errore = (String) request.getAttribute("errore");
			if (errore == null) {
				errore = "";
			}
		%>
		<h4><%=errore%>
		</h4>


		<legend>
			<b>Indirizzo </b>
		</legend>


		<fieldset>
			<p align="center">
				Inserire via : <input type="text" name="via"
					placeholder="Alcide De Gasperi" /><br>
			</p>
			<p align="center">
				Inserire Cap : <input type="text" name="cap" placeholder="84084" />
			</p>
			<p align="center">
				Inserire Città: <input type="text" name="citta"
					placeholder="Fisciano" />
			</p>
		</fieldset>


		<legend>
			<b>Metodo Pagamento</b>
		</legend>


		<fieldset>
			<p align="center">
				Inserire Iban : <input type="text" name="iban"
					placeholder="IT567HN3456777" /><br>
			</p>
			<p align="center">
				Tipologia Carta : <input type="radio" name="tipo" id="mastercard"
					value="MasterCard"> <label for="mastecard">MasterCard</label>
				<input type="radio" name="tipo" id="visa" value="Visa"> <label
					for="visa">Visa</label>

			</p>
			<p align="center">
				Nominativo Intestatario: <input type="text" name="nominativo"
					placeholder="Rebecca Di Matteo" />
			</p>


		</fieldset>
		<p align="right">
			<input type="submit" value="Registrati">
		</p>



	</form>



</body>
</html>