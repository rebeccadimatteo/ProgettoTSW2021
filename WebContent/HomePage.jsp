<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>
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

#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: #800000;
	padding: 10px 20px;
	border: solid 1px #0076a3;
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

.logo {
	float: left;
	width: 2%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
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


		<%
			if (request.getSession().getAttribute("utente") != null) {
		%>
		<div class="topnav" style="float: left;">&emsp; &emsp; &emsp;

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;</div>
		<div class="topnav" style="float: left;">

			<form action="LoginServlet" method="post">
				<button id="pulsantee" type="submit">Logout</button>
				<input type="hidden" name="azione" value="autentico">
			</form>
		</div>
		<%
			} else {
		%>
		<div class="topnav" style="float: left;">&emsp; &emsp; &emsp;

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp;&emsp;</div>

		<div class="topnav" style="float: left;">

			<form action="LoginServlet" method="get">
				<button id="pulsantee" type="submit">Login</button>
			</form>
		</div>
		<div class="topnav" style="float: left;">
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
				<h1 Style="color: #800000">Campania</h1>
				<p align="left">
					<font face="WildWest" size="5">Costiera Amalfitana:</font><br />
				<div class="img">
					<img src="images/costieracilentana.jpg" style="height: 300px;">
				</div>
				<pre>
				La Costiera Amalfitana e' un tratto di 50 chilometri di costa
				a sud della Penisola Sorrentina, nella regione Campania. Famosa
				meta per le vacanze, e' caratterizzata da ripide scogliere e da una
				costa frastagliata costellata di piccole spiagge e villaggi di
				pescatori color pastello. La strada costiera tra la citta' portuale
				di Salerno e il costone roccioso di Sorrento si snoda tra ville
				sontuose, vigneti terrazzati e limoneti a picco sul mare.</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Calabria</h1>
				<p align="left">
					<font face="WildWest" size="5">Paesaggio Calabrese:</font><br />
				<div class="img">
					<img src="images/calabria.jpg" style="height: 300px;">
				</div>
				<pre>
				La Calabria ultimo lembo di terra della penisola italiana, che si protende nel cuore del Mar Mediterrraneo, e' bagnata, ai lati, da due mari il Tirreno e lo Jonio, mentre la "punta dello stivale"" si affaccia sullo Stretto di Messina. Il territorio della Calabria, offre coste uniche, lunghissime, dalle bianchissime e grandi spiagge che si alternano a piccole insenature di scogli e sabbia e ad alte scogliere a strapiombo sul mare.</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Puglia</h1>
				<p align="left">
					<font face="WildWest" size="5">Paesaggio Pugliese:</font><br />
				<div class="img">
					<img src="images/puglia.jpg" style="height: 300px;">
				</div>
				<pre>
				La Puglia e' uno scrigno d'arte, storia e natura. E' la terra del sole e dell'ospitalita', situata nel lembo sudorientale d'Italia, in una posizione strategica nel cuore del Mediterraneo. ... Due mari da sogno abbracciano la Puglia.
				</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Basilicata</h1>
				<p align="left">
					<font face="WildWest" size="5">Paesaggio Lucano</font><br />
				<div class="img">
					<img src="images/bas.jpg" style="height: 300px;">
				</div>
				<pre>
				La Basilicata, comunemente detta anche Lucania, e' una Regione del Sud Italia affacciata sul Mar Ionio a sud-est e sul Mar Tirreno a sud-ovest. Il capoluogo della regione e' Potenza e che, con Matera, costituiscono le uniche due province.
				</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Sicilia</h1>
				<p align="left">
					<font face="WildWest" size="5">Paesaggio Siciliano</font><br />
				<div class="img">
					<img src="images/sic.jpg" style="height: 300px;">
				</div>
				<pre>
				La Sicilia e' la piu' grande isola d'Italia e del Mediterraneo. Di forma triangolare, e' bagnata a nord dal Mar Tirreno, a ovest dal Canale di Sicilia, a sud dal Mar di Sicilia, a est dal Mar Ionio e a nord-est dallo stretto di Messina che la separa dalla Calabria.
				</pre>
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
			<button id="pulsantee" type="submit" >Chi Siamo</button>
			<input type="hidden" name="home" value="chisiamo"><br> <br>
			 </form>
		
		<form action="ServletHomePage" method="get">
			<button id="pulsantee" type="submit">Contatti</button>
			<input type="hidden" name="home" value="contatti">
		</form>
	</div>

</body>
</html>
