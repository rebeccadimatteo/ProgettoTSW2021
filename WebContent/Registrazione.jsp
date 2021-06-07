<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	padding: 10px;
	background: #f1f1f1;
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
	border: solid 1px #333;
	background: white;
	-webkit-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-moz-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-o-box-shadow: 5px 5px 10px 0px #3B3B3B;
	box-shadow: 5px 5px 10px 0px #3B3B3B;
}
/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
	margin-top: 20px;
}

/* Header/Blog Title */
.header {
	padding: 30px;
	text-align: center;
	background: white;
	display: flex;
	flex-wrap: wrap;
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
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
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
	.topnav, .topnavLeft, .topnavRight {
		flex-wrap: wrap;
		flex-direction: column;
		text-align: center;
	}
	.logo {
		width: 100%;
		display: block;
	}
}

/* LOGHI FOOTER */
.fa {
	padding: 20px;
	font-size: 30px;
	width: 70px;
	text-align: center;
	text-decoration: none;
	border-radius: 50%;
}

.fa:hover {
	opacity: 0.7;
}

.fa-facebook {
	background: #3B5998;
	color: white;
}

.fa-youtube {
	background: #bb0000;
	color: white;
}

.fa-instagram {
	background: #125688;
	color: white;
}

.fa-twitter {
	background: #55ACEE;
	color: white;
}

.fa-google {
	background: #dd4b39;
	color: white;
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img2">
				<a title="Clicca per andare alla home" href="HomePage.jsp"><img
					src="images/logo.png" alt="logo" style="height: 120px;"></a>
			</div>
		</div>

		<div>
			<h1>
				<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>

			</h1>
			<p Style="color: #800000">Sito di e-commerce incentrato sulle
				specialita' gastronomiche del sud Italia.</p>
		</div>


	</div>
	<div class="topnav"
		style="display: flex; justify-content: space-between;">
		<div class="topnavLeft" style="float: left; display: flex;">

			<form action="ServletHomePage" method="get">

				<button id="pulsantee" type="submit">
					<i style='font-size: 24px' class='fas'>&#xf015;</i>
				</button>
				<input type="hidden" name="home" value="home">
			</form>

			<form action="ServletHomePage" method="get">

				<button id="pulsantee" type="submit">Catalogo</button>
				<input type="hidden" name="home" value="catal">

			</form>

			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Chi Siamo</button>
				<input type="hidden" name="home" value="chisiamo">
			</form>

			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Contatti</button>
				<input type="hidden" name="home" value="contatti">
			</form>


			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Recensioni</button>
				<input type="hidden" name="home" value="recensione">
			</form>
		</div>

		<div class="topnavRight" style="float: right; display: flex;">

			<%
				if (request.getSession().getAttribute("utente") != null) {
			%>



			<form action="LoginServlet" method="post">
				<button id="pulsantee" type="submit">Logout</button>
				<input type="hidden" name="azione" value="autentico">
			</form>
			<%
				} else {
			%>



			<form action="LoginServlet" method="get">
				<button id="pulsantee" type="submit">Login</button>
			</form>
		</div>

		<%
			}
		%>

	</div>
<!-- controlli java script -->
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
					alert("Cap non giusto);
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
							Inserire Email : <input type="email"
								onfocusout="erroreMail(this.value)" id="email" name="email"
								placeholder="beccadimatteo@gmail.com" />
						</p>
						<p align=center Style="color: black; font: bold;">
							<span id=errorMessage> </span>
						</p>
						<!--  controlla con ajak campo email attraverso uan query controlla se presente se lo è segnala a schermo che è presente -->
						<script>
						function erroreMail(stringa){
							
							var campo=document.getElementById("errorMessage");
							if(stringa.length==0){
								return;
							}
							
							var xmlHttpReq=new XMLHttpRequest();
							xmlHttpReq.onreadystatechange=function(){
								if(this.readyState==4 && this.status==200){
									campo.innerHTML=this.response;
									
								}
							}
							xmlHttpReq.open("GET","emailpresente?email="+encodeURIComponent(stringa),true);
							xmlHttpReq.send();
							
						}
						
						</script>
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

			<button id="pulsantee" type="submit">
				Pagamenti e metodi di Spedizione &nbsp;<i style="font-size: 24px"
					class="fa">&#xf09d;</i><i style='font-size: 24px' class='fas'>&#xf0d1;</i>
			</button>
			<input type="hidden" name="home" value="pagmet"><br> <br>
		</form>


		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">Chi Siamo</button>
			<input type="hidden" name="home" value="chisiamo"><br> <br>
		</form>

		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">
				Contatti &nbsp;&nbsp; <i style='font-size: 24px' class='fas'>&#xf095;</i>
			</button>

			<input type="hidden" name="home" value="contatti">
		</form>
		<br> <a href="#" class="fa fa-facebook"></a> <a href="#"
			class="fa fa-google"></a> <a href="#" class="fa fa-twitter"></a> <a
			href="#" class="fa fa-youtube"></a> <a href="#"
			class="fa fa-instagram"></a>
	</div>

</body>
</html>