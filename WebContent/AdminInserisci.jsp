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


.header h1 {
	font-size: 50px;
}

/* Header/Blog Title */
.header {
	padding: 30px;
	text-align: center;
	background: white;
	display:flex;
	flex-wrap:wrap;
}


/* Style the top navigation bar */
.topnav {
	overflow: hidden;
	background-color: #333;
}
.img2 {
	background-color: white;
	width: 100%;
	padding: 10px;
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
.logo {
	float: left;
	width: 20%;
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
	<h1>Ciao Amministratore!</h1>
	</div>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				
				<form action="ServletAdmin" method="post">

					<fieldset>

						<legend>
							<b Style="color: #800000">Insersci dati prodotto:</b>
						</legend>

						<p align="center">
						<fieldset>
							<b Style="color: #800000">Inserisci codice prodotto:</b> <input
								type="text" name="cod" placeholder="003" /><br> <br>
							<b Style="color: #800000">Inserisci nome:</b> <input
								type="text" name="nome" placeholder="Formaggio al tartufo" /> <br>
								</fieldset>
							<br>
							<fieldset>
							<b Style="color: #800000">Inserisci descrizione:</b> <input
								type="text" name="descrizione" placeholder="Questo formaggio proviene.."  size="100" /> <br>
							<br>
							</fieldset>
							<fieldset>
							<b Style="color: #800000">Inserisci prezzo:</b> <input
								type="number" name="prezzo"  size="100" /> <br>
							<br>
							<b Style="color: #800000">Inserisci peso:</b> <input
								type="number" name="peso"  size="100" /> <br>
							<br>
							</fieldset>
							<fieldset>
							<b Style="color: #800000">Inserisci codice categoria :</b><br>
							<b Style="color: #800000"> Digita VL per inserire in Vini E Liquori:</b> <br>
							<b Style="color: #800000"> Digita F per inserire inFormaggi:</b><br>
							<b Style="color: #800000"> Digita P per inserire in Pasta:</b><br><input
								type="text" name="codcat"  placeholder="Vl" /> <br>
							<br>
							</fieldset>
							<br>
							<fieldset>
							<b Style="color: #800000">Inserisci stringa image:</b> <input
								type="text" name="image"  placeholder="images/costaAm.jpg" /> <br>
							<br>
							</fieldset>
							



						</p>
						<p align="right">
							<button id="pulsante" type="submit">Aggiungi</button>
							<input type="hidden" name="azionee" value="aggiungi">
						</p>


					</fieldset>



				</form>
			</div>
			
		</div>
		<div class="rightcolumn">
			<div class="card">
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
	</div>

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<a href="MetodoSpedizione.jsp" Style="color: #800000">Metodi Di
			Pagamento e tempi di spedizione</a> <br> <a href="ChiSiamo.jsp"
			Style="color: #800000">Chi Siamo</a> <br> <a href="Contatti.jsp"
			Style="color: #800000">Contatti</a> <br>
			<br>
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>
	</div>
	

</body>
</html>