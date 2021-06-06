<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
	padding: 10px 40px;
	border: solid 1px #333;
	background: white;
	-webkit-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-moz-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-o-box-shadow: 5px 5px 10px 0px #3B3B3B;
	box-shadow: 5px 5px 10px 0px #3B3B3B;
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
		
	<div class="topnav">
	<h1 >Benvenuto Amministratore!</h1>
	</div>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<h1 Style="color: #800000">Campania</h1>
				<div class="img">
					<img src="images/costieracilentana.jpg" style="height: 300px;">
				</div>
				<p align="right">
					<font face="WildWest" size="5"><i>Costiera Amalfitana</i></font><br />
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
				
				<div class="img">
					<img src="images/calabria.jpg" style="height: 300px;">
				</div>
				<p align="right">
					<font face="WildWest" size="5"><i>Paesaggio Calabrese</i></font><br />
				<pre>
				La Calabria ultimo lembo di terra della penisola italiana, che si protende nel cuore del Mar Mediterrraneo, e' bagnata, ai lati, da due mari il Tirreno e lo Jonio, mentre la "punta dello stivale"" si affaccia sullo Stretto di Messina. Il territorio della Calabria, offre coste uniche, lunghissime, dalle bianchissime e grandi spiagge che si alternano a piccole insenature di scogli e sabbia e ad alte scogliere a strapiombo sul mare.</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Puglia</h1>
				<div class="img">
					<img src="images/puglia.jpg" style="height: 300px;">
				</div>
				<p align="right">
					<font face="WildWest" size="5"><i>Paesaggio Pugliese</i></font><br />
				<pre>
				La Puglia e' uno scrigno d'arte, storia e natura. E' la terra del sole e dell'ospitalita', situata nel lembo sudorientale d'Italia, in una posizione strategica nel cuore del Mediterraneo. ... Due mari da sogno abbracciano la Puglia.
				</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Basilicata</h1>
				
				<div class="img">
					<img src="images/bas.jpg" style="height: 300px;">
				</div>
				<p align="right">
					<font face="WildWest" size="5"><i>Paesaggio Lucano</i></font><br />
				<pre>
				La Basilicata, comunemente detta anche Lucania, e' una Regione del Sud Italia affacciata sul Mar Ionio a sud-est e sul Mar Tirreno a sud-ovest. Il capoluogo della regione e' Potenza e che, con Matera, costituiscono le uniche due province.
				</pre>
			</div>
			<div class="card">
				<h1 Style="color: #800000">Sicilia</h1>
				
				<div class="img">
					<img src="images/sic.jpg" style="height: 300px;">
				</div>
				<p align="right">
					<font face="WildWest" size="5"><i>Paesaggio Siciliano</i></font><br />
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
		<div class="rightcolumn">
			<div class="card">
				<h2 Style="color: #800000">Gestisci</h2>
                <form action="ServletAdmin" method="get">
               
				<button  id="pulsante"
					type="submit">Aggiungi elemento al Catalogo</button>
					 <input type="hidden" name="azione" value="aggiungi">
				<br> <br>
					</form>
				 <form action="ServletAdmin" method="get">
				<button  id="pulsante"
					type="submit">Rimuovi elemento dal Catalogo</button>
					<input type="hidden" name="azione" value="rimuovi">
				<br> <br>
				</form>
			
				<form action="ServletAdmin" method="get">
				<button  id="pulsante"
					type="submit">Modifica elemento dal Catalogo</button>
					<input type="hidden" name="azione" value="modifica">
				<br> <br>
					</form>
				
				<form action="ServletDati" method="get">
				<button  id="pulsante"
					type="submit">Visualizza Catalogo</button>
					<input type="hidden" name="azione" value="admin">
				<br> <br>
				</form>
				<form action="ServletAdmin" method="get">
				<button  id="pulsante"
					type="submit">Ordini totali effettuati dai clienti</button>
					<input type="hidden" name="azione" value="ordini">
				<br> <br>
					</form>
				
				<form action="ServletAdmin" method="get">
				<button  id="pulsante"
					type="submit">Visualizza HomePage</button>
					<input type="hidden" name="azione" value="homepage">
				<br> <br>
					</form>
				
				
				
				
				
				<form action="ServletRecensioni" method="get">
				<button  id="pulsante"
					type="submit">Recensioni clienti</button>
				<br> <br>
                   </form>

			</div>
			
			
		</div>
		
	</div>

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<a href="MetodoSpedizione.jsp" Style="color: #800000">Metodi Di
			Pagamento e tempi di spedizione</a> <br> <a href="ChiSiamo.jsp"
			Style="color: #800000">Chi Siamo</a> <br> <a href="Contatti.jsp"
			Style="color: #800000">Contatti</a> <br>
	</div>
	 <br>
			      <a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>

</body>
</html>