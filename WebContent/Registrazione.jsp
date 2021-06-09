<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

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


.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text],input[type=email],input[type=password],input[type=tel]  {
	width: 30%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}



label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img2">
				<a title="Registrati" href="HomePage.jsp"><img
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
<div class="container">
				<form action="RegistrazioneServlet" method="post" name="regform"
					onsubmit="event.preventDefault(); myfunction(this)">

					<fieldset>

						<legend>
							<b Style="color: #800000">Dati Utente </b>
						</legend>

					<br>
					
					<div>  
					<div style="float:left;display: block; width:40%;">
					<label><i style='font-size:24px' class='fas'>&#xf2c1;</i> Nome </label><input type="text" name="nome"
								placeholder="Mario" /><br>
								</div>
						
						<div style="float:center;display: block;">
						<label><i style='font-size:24px' class='fas'>&#xf2c1;</i> Cognome </label><input type="text" name="cognome"
								placeholder="Rossi" />  
						</div>		
								</div>
						<label><i style='font-size:24px' class='far'>&#xf2c2;</i> Codice Fiscale </label><input type="text" name="cf"
								placeholder="CF123400" />
						
						<br>
							<label><i class="material-icons">&#xe0d0;</i> Email </label><input type="email" onfocusout="erroreMail(this.value)" id="email" name="email"
								placeholder="mariorossi@gmail.com" />
						<p align=center style="color: black; font: bold;">
							<span id=errorMessage > </span>
						</p>
						<!--  controlla con ajax campo email attraverso uan query controlla se presente se lo è segnala a schermo che è presente -->
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
						
							<label><i class="material-icons">&#xe0dd;</i> Cellulare </label><input type="tel" id="phone" name="cell"
								placeholder="+(39)3317782165" />
						

						<br>
							<label><i class="material-icons">&#xe7fd;</i> Nome utente </label><input type="text" id="user"
								name="username" placeholder="MarioRossi7" /><br>
						<br>
							<label><i class="material-icons">&#xe0da;</i> Password </label><input type="password" name="pwsd"
								placeholder="**********" />
						
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
								<b Style="color: #800000">Indirizzo di spedizione </b>
							</legend>
							<br> <label><i style='font-size: 24px' class='fas'>&#xf1ad;</i>
								Via</label><input type="text" name="via" placeholder="Alcide De Gasperi" />
							<label> Cap </label> <input type="text" name="cap"
								placeholder="84084" /> <label><i
								style='font-size: 24px' class='fas'>&#xf64f;</i> Città </label><input
								type="text" name="citta" placeholder="Salerno" />
						</fieldset>
						<br>
					<fieldset>


							<legend>
								<b Style="color: #800000">Metodo Pagamento</b>
							</legend>
							<br> <label>IBAN <br> <input type="text"
								name="iban" placeholder="IT567HN3456777" /></label> Tipologia Carta : <br>
							<br> <input type="radio" name="tipo" id="mastercard"
								value="MasterCard"><i style='font-size: 35px'
								class='fab'>&emsp; &emsp; &#xf1f1;</i><br> <input
								type="radio" name="tipo" id="visa" value="Visa"> <i
								style="font-size: 33px" class="fa">&#xf1f0;</i> <label
								for="fname"><i style='font-size: 24px' class='fas'>&#xf2bd;</i>
								Nominativo Intestatario</label><input type="text" name="nominativo"
								placeholder="Mario Rossi" />

						</fieldset>
					<p align="right">
					<button id="pulsante" type="submit">Registrati</button>
				

					</p>

					
					


				</form>
				


</div>
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