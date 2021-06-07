<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js' ></script>

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

#pulsante2 {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: black;
	padding: 9px 9px;
	border: solid 1px #333;
	background: white;
}

pre {
	display: block;
	font-family: Arial;
	white-space: pre-line;
	margin: 1em 0;
	text-align: riht;
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
}

/* Add a card effect for articles */
.card {
	background-color: white;
	padding: 20px;
	margin-top: 20px;
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

.row:after {
	content: "";
	display: table;
	clear: both;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #333;
	color: white;
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
				<a title="Ecco il tuo ordine" href="HomePage.jsp"><img
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

	</div> <!-- Stampa il resoconto dell'ordine quindi la tabella con tutti i prodotti -->
	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<table width="75%" border="1">
					<tr>
						<th style="width: 25%">Codice</th>
						<th style="width: 25%">Nome</th>
						<th style="width: 25%">Descrizione</th>
						<th style="width: 25%">Prezzo</th>
						<th style="width: 25%">Peso</th>
						<th style="width: 25%">Quantita'</th>
					</tr>

					<%
						Carrello car = (Carrello) session.getAttribute("car");
						for (int i = 0; i < car.lengthCarrello(); i++) {
							Item el = car.getItemIndex(i);
					%>



					<tr>
						<td><%=el.getCodice()%> &nbsp;</td>
						<td><%=el.getNome()%> &nbsp;</td>
						<td><%=el.getDescrizione()%>&nbsp;</td>
						<td><%=el.getPrezzo()%> &nbsp;</td>
						<td><%=el.getPeso()%> &nbsp;</td>
						<td><%=(int) el.getQuantita()%>&nbsp;</td>
						<td>
							<form action="ServletOrdine" method="post">
								<button id="pulsante2" type="submit">Aumenta</button>
								<br> <input type="hidden" name="azione" value="+">
								<input type="hidden" name="cod" value="<%=el.getCodice()%>">

							</form>
							<form action="ServletOrdine" method="post">
								<button id="pulsante2" type="submit">Diminuisci</button>
								<br> <input type="hidden" name="azione" value="-">
								<input type="hidden" name="cod2" value="<%=el.getCodice()%>">
							</form>
							<form action="ServletOrdine" method="post">
								<button id="pulsante2" type="submit">Rimuovi</button>
								<br> <input type="hidden" name="azione" value="rim">
								<input type="hidden" name="cod3" value="<%=el.getCodice()%>">



							</form>
						</td>



					</tr>


					<%
						}
						double pesotot = car.SommaPeso();
						double prezzotot = car.SommaPrezzo();
					%>

				</table>


				<form action="ServletOrdine" method="post">
					<p align="center">
						Peso totale:
						<%=pesotot%>
						kg <br> Prezzo totale: $
						<%=prezzotot%><br> <br>
						<button id="pulsante" type="submit">Avanti</button>
						<br> <input type="hidden" name="azione" value="Avanti">



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