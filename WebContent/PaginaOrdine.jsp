<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>

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
	width: 70%;
	padding: 10px 40px;
	width: 70%;
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
	align: left;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: black;
	padding: 5px 5px;
	border: solid 1px #333;
	background: white;
	text-decoration: none;
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

.card {
	background-color: white;
	padding: 20px;
	margin-top: 20px;
	-webkit-border-radius: 20px;
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

.cart-row {
	padding: 15px 0
}

.cart-row:nth-child(even) {
	background: #efefef
}

.product-name {
	font-size: 16px;
	font-weight: 600
}

.product-options {
	font-size: 12px;
	margin-bottom: 5px
}

.product-options span {
	color: #666;
	font-weight: 400;
	text-transform: uppercase
}

.product-articlenr {
	color: #666;
	font-weight: 400;
	text-transform: uppercase
}

.product-price small {
	color: #666;
	font-weight: 300;
	font-size: 20px;
	margin: 0;
	padding: 0;
	line-height: initial
}

.cart-table .cart-row input {
	width: 50px;
	height: auto;
	padding: 2px;
	border-radius: 0;
	border-color: #000;
	float: left;
	font-size: 14px;
	text-align: center
}

.cart-table .cart-row button.update {
	border: 0;
	padding: 7px 8px;
	background: #000;
	color: #fff;
	font-size: 9px;
	float: left;
	margin-right: 5px
}

.cart-table .cart-row button.delete {
	background-color: #FFB2B2;
	color: #000 !important;
	padding: 7px 13px;
	font-size: 13px;
	border: 0;
	border-radius: 50px
}

.product-price-total {
	font-size: 16px;
	font-weight: 400;
	width: 80%;
	float: left
}

.cart-actions {
	display: flex;
	justify-content: center;
	align-items: center
}

.cart-special-holder {
	background: #efefef
}

.cart-special {
	padding: 1em 1em 0;
	display: block;
	margin-top: .5em;
	border-top: 1px solid #dadada
}

.cart-special .cart-special-content:before {
	content: "\21b3";
	font-size: 1.5em;
	margin-right: 1em;
	color: #6f6f6f;
	font-family: helvetica, arial, sans-serif
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
			<p>Sito di e-commerce incentrato sulle specialita' gastronomiche
				del sud Italia.</p>
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


			<form action="RegistrazioneServlet" method="get">
				<button id="pulsantee" type="submit">Registrazione</button>
			</form>


			<%
				}
			%>
		</div>
	</div>



	<!-- Stampa il resoconto dell'ordine quindi la tabella con tutti i prodotti -->
	<div class="row">

		<div class="leftcolumn">

			<div class="card">


				<div class="container">

					<h1>
						<b Style="color: #800000">Prodotti</b>
					</h1>
					<%
						Carrello car = (Carrello) session.getAttribute("car");
						for (int i = 0; i < car.lengthCarrello(); i++) {
							Item el = car.getItemIndex(i);
					%>

					<div class="cart-table">

						<div class="row cart-row">
							<div class="col-xs-12 col-md-2">

								<img src="<%=el.getImg()%>" width="20%">
							</div>

							<div class="col-md-6">
								<div class="product-name"><%=el.getNome()%></div>
								<div class="product-articlenr"><%=el.getDescrizione()%>
									&nbsp;

								</div>
								<div class="product-name"">
									<span><%=el.getPrezzo()%> $ &nbsp;</span> <br> <span><%=el.getPeso()%>
										kg &nbsp;</span> <br>

								</div>





							</div>
							<div class="col-md-3 cart-actions">

								<div class="product-delete">
									<form action="ServletOrdine" method="post">

<div>
										<input type="number" value="<%=Math.round(el.getQuantita())%>" id="agg"
											min="1" max="30" style="min-width:20px;"> <br> <input type="hidden"
											name="azione" value="+"> <input type="hidden"
											name="cod" value="<%=el.getCodice()%>">
										<%
											if (el.getQuantita() > 30) {
										%>
										<p>Quantità non disponibile</p>
										<%
											}
										%>
									</form>
									<form action="ServletOrdine" method="post">
										<button id="pulsante2" type="submit"><i style='font-size:20px' class='fas'>Rimuovi &#xf2ed;</i></button>
										<br> <input type="hidden" name="azione" value="rim">
										<input type="hidden" name="cod3" value="<%=el.getCodice()%>">




									</form>
</div>


								</div>
							</div>
						</div>


					</div>


					<%
						}
						double pesotot = car.SommaPeso();
						double prezzotot = car.SommaPrezzo();
					%>
					<form action="ServletOrdine" method="post">
						<p align="center">
							Peso totale:
							<%=pesotot%>
							kg <br> Prezzo totale: $
							<%=prezzotot%><br> <br>

							<button id="pulsante" type="submit">Avanti</button>
							<br> <input type="hidden" name="azione" value="Avanti">
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
				<br> <br> <a href="ServletDati">Ritorna al Catalogo<a>
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