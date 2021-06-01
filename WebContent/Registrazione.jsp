<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	padding: 10px;
	background: #f1f1f1;
}

/* Header/Blog Title */
.header {
	padding: 30px;
	text-align: center;
	background: white;
}

#pulsantee {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 20px Arial, Helvetica, sans-serif;
	color: white;
	padding: 10px 20px;
	border: solid 1px #333;
	background: #333;
}

.header h1 {
	font-size: 50px;
}

/* Style the top navigation bar */
.topnav {
	overflow: hidden;
	background-color: #333;
}

/* Style the topnav links */
.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
	float: left;
	width: 75%;
}

/* Right column */
.rightcolumn {
	float: left;
	width: 25%;
	background-color: #f1f1f1;
	padding-left: 10px;
}

/* Fake image */
.img {
	background-color: white;
	width: 100%;
	padding: 10px;
}

/* Add a card effect for articles */
.card {
	background-color: white;
	padding: 20px;
	margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: #800000;
	padding: 10px 40px;
	border: solid 1px #0076a3;
	background: white;
}
/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
	margin-top: 20px;
}

.logo {
	float: left;
	width: 2%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
}

@media only screen and (max-width: 600px) {
	.leftcolumn, .rightcolumn {
		width: 100%;
		padding: 0;
		display: block;
	}
	.topnav a {
		float: none;
		width: 100%;
		display: block;
	}
	.logo {
		width: 80%;
		display: block;
	}
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img">
				<a title="Clicca per andare alla home" href="HomePage.jsp"><img
					src="images/logo.png" alt="logo" style="height: 120px;"></a>
			</div>
		</div>
		<h1>
			<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>
		</h1>
		<p Style="color: #800000">Sito di e-commerce incentrato sulle
			specialita' gastronomiche del sud Italia.</p>
	</div>

	<div class="topnav">
		<div class="topnav" style="float: left;">

			<form action="ServletHomePage" method="get">

				<button id="pulsantee" type="submit">HomePage</button>
				<input type="hidden" name="home" value="home">
			</form>
		</div>
		<div class="topnav" style="float: left;">

			<form action="ServletHomePage" method="get">

				<button id="pulsantee" type="submit">Catalogo</button>
				<input type="hidden" name="home" value="catal">

			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Chi Siamo</button>
				<input type="hidden" name="home" value="chisiamo">
			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Contatti</button>
				<input type="hidden" name="home" value="contatti">
			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Recensioni</button>
				<input type="hidden" name="home" value="recensione">
			</form>
		</div>


		<div class="topnav" style="float: left;">&emsp; &emsp; &emsp;

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp;&emsp; &emsp; &emsp; &emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>

		<div class="topnav" style="float: left;">

			<form action="LoginServlet" method="get">
				<button id="pulsantee" type="submit">Login</button>
			</form>
		</div>


	</div>

	<script>
		function validateusername() {
			var validusername = /^[A-Za-z]+$/;
			var username = document.getElementById("user");
			if (username.value.match(validusername)) {
				return true;
			} else {
				
				username.focus;
				return false;
			}
		}
		function validatecap() {
			var valicap=/^\d{5}$/;
			var postalCode=document.getElementById("postalcode");
			if(postalCode.value.match(valicap)) {
				return true;
			} else {
				postalCode.focus;
				return false;
			}
		}
		function validaphonenumber() {
			var input = document.getElementById("phone");
			var phoneno = /^\d{10}$/;
			if (input.value.match(phoneno)) {
				return true;
			} else {
				input.focus;
				return false;
			}
		}
		function validateEmail() {
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var uemail = document.getElementById("email");
			if (uemail.value.match(mailformat)) {
				return true;
			} else {
				uemail.focus();
				return false;
			}
		}
		
		function myfunction(regform) {
			if (validateusername()) {
				if (validateEmail()) {
					if(validatecap() ){
					if (validaphonenumber()) {
						regform.submit;
					} else {
						alert("Telefono inserito non giusta");
					}
				} else {
					alert("Cap non giusto");
				}
			} else {
				alert("Email non giusta");
			}
				else{
					alert("Username non giusto");
				}
			}
			
		}
	</script>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">

				<form action="RegistrazioneServlet" method="post" name="regform"
					onsubmit="event.preventDefault(); myfunction(this)">

					<fieldset>

						<legend>
							<b Style="color: #800000">Dati Utente </b>
						</legend>

						<p align="center" Style="color: #800000">
							Inserire Nome : <input type="text" name="nome"
								placeholder="Rebecca" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Inserire Cognome : <input type="text" name="cognome"
								placeholder="Di Matteo" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Codice Fiscale : <input type="text" name="cf"
								placeholder="RDM00AOG1" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Email : <input type="email" id="email" name="email"
								placeholder="beccadimatteo@gmail.com" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Cellulare : <input type="tel" id="phone" name="cell"
								placeholder="3894685921" />
						</p>

						<p align="center" Style="color: #800000">
							Inserire nome utente : <input type="text" id="user"
								name="username" placeholder="becca12" /><br>
						</p>
						<p align="center" Style="color: #800000">
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





					<fieldset>
						<legend>
							<b Style="color: #800000">Indirizzo </b>
						</legend>
						<p align="center" Style="color: #800000">
							Inserire via : <input type="text" name="via"
								placeholder="Alcide De Gasperi" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Inserire Cap : <input type="text" name="cap" id="postalcod"
								placeholder="84084" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Città: <input type="text" name="citta"
								placeholder="Fisciano" />
						</p>
					</fieldset>





					<fieldset>
						<legend>
							<b Style="color: #800000">Metodo Pagamento</b>
						</legend>
						<p align="center" Style="color: #800000">
							Inserire Iban : <input type="text" name="iban"
								placeholder="IT567HN3456777" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Tipologia Carta : <input type="radio" name="tipo" id="mastercard"
								value="MasterCard"> <label for="mastecard">MasterCard</label>
							<input type="radio" name="tipo" id="visa" value="Visa"> <label
								for="visa">Visa</label>

						</p>
						<p align="center" Style="color: #800000">
							Nominativo Intestatario: <input type="text" name="nominativo"
								placeholder="Rebecca Di Matteo" />
						</p>


					</fieldset>
					<p align="right">
						<button id="pulsante" type="submit">Registrati</button>

					</p>



				</form>



			</div>
		</div>

		<div class="rightcolumn">
			<div class="card">
				<h2 Style="color: #800000">Gestisci</h2>

				<button onclick="location.href='mioprofilo.jsp'" id="pulsante"
					type="submit">Vai al mio profilo</button>
				<br> <br>

				<button onclick="location.href='mioordini.jsp'" id="pulsante"
					type="submit">I miei ordini</button>
				<br> <br>


			</div>

		</div>
	</div>

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">Pagamenti e metodi di
				Spedizione</button>
			<input type="hidden" name="home" value="pagmet"><br> <br>
		</form>
		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">Chi Siamo</button>
			<input type="hidden" name="home" value="chisiamo"><br> <br>
		</form>
		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">Contatti</button>
			<input type="hidden" name="home" value="contatti">
		</form>
	</div>

</body>
</html>