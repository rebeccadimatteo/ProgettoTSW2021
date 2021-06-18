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

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
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
/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
	float: left;
	width: 75%;
}

#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: #800000;
	width: 70%;
	padding: 10px 40px;
	border: solid 1px #333;
	background: white;
	-webkit-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-moz-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-o-box-shadow: 5px 5px 10px 0px #3B3B3B;
	box-shadow: 5px 5px 10px 0px #3B3B3B;
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

pre {
	display: block;
	font-family: Arial;
	white-space: pre-line;
	margin: 1em 0;
	text-align: right;
}
/* Right column */
.rightcolumn {
	float: left;
	width: 25%;
	background-color: #f1f1f1;
	padding-left: 20px;
}

.img {
	-webkit-filter: grayscale(100%);
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	-ms-transition: all 1s ease;
	transition: all 1s ease;
}

.img:hover {
	-webkit-filter: grayscale(0%);
}

.card {
	background-color: white;
	padding: 20px;
	margin-top: 20px;
	-webkit-border-radius: 20px;
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
	.rightcolumn {
		text-align: center;
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


.wrapper:hover .btn {
	box-shadow: 0px 45px 20px -30px rgba(0, 0, 0, 0.2);
	transform: translateY(-20px);
}

.pack-section{
  max-width: 960px;
  margin: 0 auto;
}
.pack-grig{
  margin: 20px 0 0 0;
  padding: 0;
  list-style: none;
  display: block;
  text-align: center;
  width: 100%;
  
}
.pack-grig:after{
  clear: both;
}
.pack-grig:after,xop-box:before{
  content: '';
  display: table;
}
.pack-grig li{
  width: 320px;
  height: 328px;
  display: inline-block;
  margin: 20px;
}
.pack-box{
  width: 100%;
  height: 100%;
  position: relative;
  box-shadow: 4px 2px 6px #000;
  border-radius: 10px;
  -webkit-transition: 0.3s ease-in-out;
  -webkit-transform: 0.3s ease-in-out;
   -moz-transition: 0.3s ease-in-out;
  -moz-transform: 0.3s ease-in-out;
  transition: 0.3s ease-in-out;
  transform: 0.3s ease-in-out;
}
.pack-box:hover{
  transform: scale(1.05);
  box-shadow: 6px 3px 10px #000;
}
.pack-img-1{
  background:linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.10)),
  url(images/maratea1.jpg);
  background-size: cover;
}

.pack-img-2{
  background:linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.10)),
  url("images/costieracilentana.jpg");
  background-size: cover;
}
.pack-img-3{
  background:linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.10)),
  url("images/sic.jpg");
  background-size: cover;
}

.pack-img-4{
  background:linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.10)),
  url("images/calabria.jpg");
  background-size: cover;
}

.pack-info{
  position: absolute;
  width: inherit;
  height: inherit;
}
.pack-info h3{
  font-family: sans-serif;
  font-weight: 400;
  color: #fff;
  font-size: 42px;
  margin: 150px 0 0;
  line-height: 1;
}
.pack-info p{
  font-family: sans-serif;
  color: #fff;
}
.pack-info button{
	cursor: pointer;
	width: 100px;
  height: 35px;
  color: #fff;
  font-size: 16px;
  background: green;
  border: none;
  border-radius: 13px;
  box-shadow: 0 2px 3px #000;
  outline: none;
  
}
.pack-info button:hover{
  background: #ff5349;
  font-size: 20px;
   box-shadow: 0 2px 3px #000;
  width: 120px;
}


</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img2">
				<a title="Ciao Amministratore" href="Adminhomepage.jsp"><img
					src="images/logo.png" alt="logo" style="height: 120px;"></a>
			</div>
		</div>

		<div>
			<h1>
				<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>

			</h1>
			<p>Sito di e-commerce incentrato sulle specialita' gastronomiche
				del sud Italia.</p>
		</div>


	</div>

	<div class="topnav"
		style="display: flex; justify-content: space-between;">
		<div class="topnavLeft" style="float: left; display: flex;">
			<h1 style="color: white">Ciao Amministratore!</h1>


		</div>
		<div class="topnavRight" style="float: right; display: flex;">
			<!--  se utente è autentifico esce logout e può accedere  a mio profilo e miei ordini -->
			<%
				if (request.getSession().getAttribute("utente") != null) {
			%>



			<form action="LoginServlet" method="post">
				<button id="pulsantee" type="submit">Logout</button>
				<input type="hidden" name="azione" value="autentico">
			</form>
			<%
				}
			%>
		</div>
	</div>

	<div class="row">
				<div class="leftcolumn">

			<div class="card" style="height:810px" >
			<form action="ServletDati" method="get">
					<!-- inizio card homepage -->
							<div class="pack-section">
		<ul class="pack-grig">
			<li>
				<div class="pack-box pack-img-1">
					<div class="pack-info">
						<h3>Puglia</h3>
						<p>Scoprila per la campagna dal sapore antico e tradizionale. </p>
						<button type="submit">Vedi</button>
					</div>
				</div>
			</li>
			<li>
				<div class="pack-box pack-img-2">
					<div class="pack-info">
						<h3>Campania</h3>
						<p>Una regione molto animata circondata da un ambiente naturale straordinario.</p>
						<button type="submit">Vedi</button>
					</div>
				</div>
			</li>
			<li>
				<div class="pack-box pack-img-3">
					<div class="pack-info">
						<h3>Sicilia</h3>
						<p>La grande isola dell'Italia, una terra sorprendente ricca di storia e tradizioni, in cui arte e cultura si intrecciano.</p>
						<button type="submit">Vedi</button>
					</div>
				</div>
			</li>
			<li>
				<div class="pack-box pack-img-4">
					<div class="pack-info">
						<h3>Calabria</h3>
						<p>Una regione bruciata dal sole con aspre montagne, paesini antichi e una spettacolare costa con molte spiagge rinomate.</p>
					  <button type="submit">Vedi</button>
					 </div>
				</div>
			</li>
		
			
		</ul>
	</div>
	</form>
			</div>

		</div>
		<div class="rightcolumn">
			<div class="card"style="height:810px">
				<h2 Style="color: #800000">Gestisci</h2>

				<form action="ServletAdmin" method="get">
					<button id="pulsante" type="submit">Visualizza HomePage</button>
					<input type="hidden" name="azione" value="homepage"> <br>
					<br>
				</form>
				<form action="ServletAdmin" method="get">
					<button id="pulsante" type="submit">Visualizza Catalogo</button>
					<input type="hidden" name="azione" value="cat"> <br> <br>
				</form>
				<form action="ServletAdmin" method="get">

					<button id="pulsante" type="submit">Aggiungi elemento al
						Catalogo</button>
					<input type="hidden" name="azione" value="aggiungi"> <br>
					<br>
				</form>
				<form action="ServletAdmin" method="get">
					<button id="pulsante" type="submit">Rimuovi elemento dal
						Catalogo</button>
					<input type="hidden" name="azione" value="rimuovi"> <br>
					<br>
				</form>

				<form action="ServletAdmin" method="get">
					<button id="pulsante" type="submit">Modifica elemento dal
						Catalogo</button>
					<input type="hidden" name="azione" value="modifica"> <br>
					<br>
				</form>


				<form action="ServletAdmin" method="get">
					<button id="pulsante" type="submit">Ordini totali
						effettuati dai clienti</button>
					<input type="hidden" name="azione" value="ordini"> <br>
					<br>
				</form>



				<form action="ServletRecensioni" method="get">
					<button id="pulsante" type="submit">Recensioni clienti</button>
					<br> <br>
				</form>

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