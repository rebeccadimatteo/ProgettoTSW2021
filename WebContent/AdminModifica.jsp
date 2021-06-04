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
border: solid 1px #333;
background: white;
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
					<img src="images/logo.png" style="height: 120px; ">
				</div>
			</div>
		<h1>
			<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>
			
		</h1>
		<p Style="color: #800000">Sito di e-commerce incentrato sulle
			specialita' gastronomiche del sud Italia.</p>
			
	</div>

	<div class="topnav">
	<h1  >Ciao Amministratore!</h1>
	</div>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				
				<form action="ServletAdmin" method="post">

					<fieldset>

						<legend>
							<b Style="color: #800000">Inserisci codice prodotto da modificare:</b>
						</legend>

						<p align="left<">
							<b Style="color: #800000">Inserisci codice prodotto:</b> <input
								type="text" name="codmod" placeholder="003" /><br> <br>
							
								</form>
								
				<form action="ServletAdmin" method="post">
							<p align="left">
							<input
								type="number" name="prez" placeholder="3.50" />
							<button id="pulsante" type="submit">Modifica prezzo</button>
							<input type="hidden" name="azionee" value="modificaprezzo">
							</p>
							</form>
							<form action="ServletAdmin" method="post">
							<p align="left">
							<input
								type="number" name="pes" placeholder="3.50" />
								
							
							<button id="pulsante" type="submit">Modifica peso</button>
							<input type="hidden" name="azionee" value="modificapeso">
							</p>
							</form>
							<form action="ServletAdmin" method="post">
							<p align="left">
							
							<input
								type="number" name="quant" placeholder="3" />
							<button id="pulsante" type="submit">	Modifica quantita'</button>
							<input type="hidden" name="azionee" value="modificaquant">
							
						</p>
						</form>


						
					


					</fieldset>



				
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

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<a href="MetodoSpedizione.jsp" Style="color: #800000">Metodi Di
			Pagamento e tempi di spedizione</a> <br> <a href="ChiSiamo.jsp"
			Style="color: #800000">Chi Siamo</a> <br> <a href="Contatti.jsp"
			Style="color: #800000">Contatti</a> <br>
	</div>

</body>
</html>