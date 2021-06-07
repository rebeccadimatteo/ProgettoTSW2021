<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js' ></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
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
	display:flex;
	flex-wrap:wrap;
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
	flex-wrap:wrap;
	justify-content :space-between;
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
	padding-left: 20px;
}

.logo {
	float: left;
	width: 20%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
}
.img2 {
	background-color: white;
	width: 100%;
	padding: 10px;
}
/* Fake image */
.img {
	background-color: white;
	width: 100%;
	padding: 10px;
	align: center;
}

/* Add a card effect for articles */
.card {
	background-color: white;
	padding: 60px;
	margin-top: 40px;
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

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
	margin-top: 20px;
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
	
	.topnav,.topnavLeft,.topnavRight {
	flex-wrap:wrap;
	flex-direction:column;
	text-align:center;
	
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
/* VOTAZIONE STELLE */
.star-rating {
	direction: rtl;
	display: block;
	padding: 20px
}

.star-rating input[type=radio] {
	display: none
}

.star-rating label {
	color: #bbb;
	font-size: 18px;
	padding: 0;
	cursor: pointer;
	-webkit-transition: all .3s ease-in-out;
	transition: all .3s ease-in-out
}

.star-rating label:hover, .star-rating label:hover ~ label, .star-rating input[type=radio]:checked 
	~ label {
	color: #f2b600
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
	<div class="topnav" style="display:flex; justify-content:space-between;">
		<div class="topnavLeft" style="float: left; display:flex;">

			<form action="ServletHomePage" method="get">
	<button id="pulsantee" type="submit"> <i style='font-size:24px' class='fas'>&#xf015;</i></button>
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
	
		<div class="topnavRight" style="float: right; display:flex;">
	
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
		
		
			<form action="RegistrazioneServlet" method="get">
				<button id="pulsantee" type="submit">Registrazione</button>
			</form>
		</div>

		<%
			}
		%>

	</div>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<h1 Style="color: #800000" align="center">Vuoi lasciare una
					recensione?</h1>
				<form action="ServletRecensioni" method="post">
					<fieldset>

						<legend>
							<b Style="color: #800000">Inserisci dati per la recensione: </b>
						</legend>
						<p align="left" Style="color: #800000">

							<b>Inserire Nome Utente : </b> <input type="text" name="id"
								placeholder="becca12" /> <br>
						</p>
						<p align="left" Style="color: #800000">
							<b>Inserisci la tua recensione</b>
						<br><br>
							<textarea id="arearec" name="arearec" rows=8 cols=43> </textarea>
							<br>
						</p>
						<div class="star-rating" >
							<input id="star-5" type="radio" name="rating" value="star-5" />
							<label for="star-5" title="5 stars"> <i
								class="active fa fa-star" aria-hidden="true"></i>
							</label> <input id="star-4" type="radio" name="rating" value="star-4" />
							<label for="star-4" title="4 stars"> <i
								class="active fa fa-star" aria-hidden="true"></i>
							</label> <input id="star-3" type="radio" name="rating" value="star-3" />
							<label for="star-3" title="3 stars"> <i
								class="active fa fa-star" aria-hidden="true"></i>
							</label> <input id="star-2" type="radio" name="rating" value="star-2" />
							<label for="star-2" title="2 stars"> <i
								class="active fa fa-star" aria-hidden="true"></i>
							</label> <input id="star-1" type="radio" name="rating" value="star-1" />
							<label for="star-1" title="1 star"> <i
								class="active fa fa-star" aria-hidden="true"></i>
							</label>
						</div>

					</fieldset>
					<p align="right">
						<button id="pulsante" type="submit">Invia</button>
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
		
			<button id="pulsantee" type="submit"> Pagamenti e metodi di
				Spedizione &nbsp;<i style="font-size:24px" class="fa">&#xf09d;</i><i style='font-size:24px' class='fas'>&#xf0d1;</i></button>
			<input type="hidden" name="home" value="pagmet"><br> <br>
		</form>
		
		
		 <form action="ServletHomePage" method="get">  
			<button id="pulsantee" type="submit" >Chi Siamo</button>
			<input type="hidden" name="home" value="chisiamo"><br> <br>
			 </form>
		
		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">Contatti &nbsp;&nbsp; <i style='font-size:24px' class='fas'>&#xf095;</i></button>
		
			<input type="hidden" name="home" value="contatti">
		</form>
		<br>
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>
	</div>

</body>
</html>