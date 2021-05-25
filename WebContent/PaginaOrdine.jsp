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
#pulsante2 {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: black;
	padding: 9px 9px;
	border: solid 1px #0076a3;
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

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
	.leftcolumn, .rightcolumn {
		width: 100%;
		padding: 0;
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

	
tr:nth-child(even){background-color: #f2f2f2}

	
th {

	
background-color: #333;

	
color: white;

	
}
/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
	.topnav a {
		float: none;
		width: 100%;
	}
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img">
				
				<a title="Clicca per andare alla home" href="HomePage.jsp"><img src="images/logo.png" alt="logo" style="height: 120px; "></a>
			</div>
		</div>
		<h1>
			<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>

		</h1>
		<p Style="color: #800000">Sito di e-commerce incentrato sulle
			specialita' gastronomiche del sud Italia.</p>

	</div>

	<div class="topnav">
	<a href="HomePage.jsp" Style="color: white">HomePage</a> 
		<a href="ServletDati" Style="color: white">Catalogo</a> <a
			href="ChiSiamo.jsp" Style="color: white">Chi Siamo</a> <a
			href="Contatti.jsp" Style="color: white">Contatti</a> <a
			href="Recensioni.jsp" Style="color: white">Recensioni</a> <a
			href="LoginPagee.jsp" style="float: right" Style="color:white">Login</a>
		<a href="Registrazione.jsp" style="float: right" Style="color:white">Registrati</a>
	</div>

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
						double pesotot = 0;
						double prezzotot = 0;
						Carrello car = (Carrello) session.getAttribute("car");
						for (int i = 0; i < car.lengthCarrello(); i++) {
							Item el = car.getItemIndex(i);
							pesotot = pesotot + el.getPeso();
							prezzotot = prezzotot + el.getPrezzo();
					%>

					<%
						
					%>
					<tr>
						<td><%=el.getCodice()%> &nbsp;</td>
						<td><%=el.getNome()%> &nbsp;</td>
						<td><%=el.getDescrizione()%>&nbsp;</td>
						<td><%=el.getPrezzo()%> &nbsp;</td>
						<td><%=el.getPeso()%> &nbsp;</td>
						<td><%=el.getQuantita()%>&nbsp;
						</td>
						<td>
						<form action="ServletOrdine"  method="post">
						
						<button id="pulsante2" type="submit" >Aumenta</button>
						<br> <input type="hidden" name="azione" value="+">
						<button id="pulsante2" type="submit">Diminuisci</button>
						<br> <input type="hidden" name="azione" value="-">
						<button id="pulsante2" type="submit">Rimuovi</button>
						<br> <input type="hidden" name="azione" value="rim">
					
						
						</form>
					</td>
					


					</tr>
					

					<%
						}
					%>
					
				</table>


				<form action="ServletOrdine" method="post">
					<p align="center">
						Peso totale:
						<%=pesotot%>
						kg <br> Prezzo totale: $
						<%=prezzotot%><br>
						<br>
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
		<a href="MetodoSpedizione.jsp" Style="color: #800000">Metodi Di
			Pagamento e tempi di spedizione</a> <br> <a href="ChiSiamo.jsp"
			Style="color: #800000">Chi Siamo</a> <br> <a href="Contatti.jsp"
			Style="color: #800000">Contatti</a> <br>
	</div>

</body>
</html>