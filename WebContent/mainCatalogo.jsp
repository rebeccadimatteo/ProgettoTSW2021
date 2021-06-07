<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js' ></script>
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

.logo {
	float: left;
	width: 20%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
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
	display: table;
}

/* Fake image */
.img {
	background-color: white;
	width: 300%;
	padding: 10px;
}
.img2 {
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

/* ICONA CARRELLO */
.icon-cart {
	width: 50px;
	height: 50px;
	position: relative;
	overflow: hidden;
	margin-left: 25px;
	margin-bottom: 25px;
	
	display:table-cell;
}

.icon-cart .cart-line-1 {
	width: 15%;
	height: 7%;
	position: absolute;
	left: 8%;
	top: 25%;
	-webkit-transform: rotate(5deg);
	-moz-transform: rotate(5deg);
	-ms-transform: rotate(5deg);
	transform: rotate(5deg);
	background-color: #000;
	border-bottom-left-radius: 35%;
}

.icon-cart .cart-line-2 {
	width: 35%;
	height: 7%;
	position: absolute;
	left: 6%;
	top: 40%;
	-webkit-transform: rotate(80deg);
	-moz-transform: rotate(80deg);
	-ms-transform: rotate(80deg);
	transform: rotate(80deg);
	background-color: #000;
}

.icon-cart .cart-line-2:before {
	content: "";
	width: 120%;
	height: 100%;
	position: absolute;
	left: 45%;
	top: -280%;
	-webkit-transform: rotate(-80deg);
	-moz-transform: rotate(-80deg);
	-ms-transform: rotate(-80deg);
	transform: rotate(-80deg);
	background-color: inherit;
}

.icon-cart .cart-line-2:after {
	content: "";
	width: 70%;
	height: 100%;
	position: absolute;
	left: 59%;
	top: -670%;
	background-color: inherit;
	-webkit-transform: rotate(40deg);
	-moz-transform: rotate(40deg);
	-ms-transform: rotate(40deg);
	transform: rotate(40deg);
	border-top-left-radius: 50%;
	border-bottom-left-radius: 25%;
}

.icon-cart .cart-line-3 {
	width: 30%;
	height: 7%;
	position: absolute;
	left: 33%;
	top: 45%;
	background-color: #000;
}

.icon-cart .cart-line-3:after {
	content: "";
	width: 124%;
	height: 100%;
	position: absolute;
	top: -150%;
	left: -5%;
	background-color: inherit;
}

.icon-cart .cart-wheel {
	width: 12%;
	height: 12%;
	background-color: #000;
	border-radius: 100%;
	position: absolute;
	left: 28%;
	bottom: 20%;
}

.icon-cart .cart-wheel:after {
	content: "";
	width: 100%;
	height: 100%;
	background-color: inherit;
	border-radius: 100%;
	position: absolute;
	left: 200%;
	bottom: 0;
}

.zoom img {
       height: 200px;
       width: 200px;
       -webkit-transition: all 0.5s ease;
       -moz-transition: all 0.5s ease;
       -o-transition: all 0.5s ease;
       -ms-transition: all 0.5s ease;
       transition: all 0.5s ease;
 }
 .zoom img:hover {
       width: 250px;
       height: 250px;
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


				<%
					Catalogo prodotti = (Catalogo) request.getAttribute("Catalogo");

					for (int i = 0; i < prodotti.lengthCatalogo(); i++) {
						Item el = prodotti.getItemIndex(i);
				%>
<div>
				<p align="center">
					<b><%=el.getNome()%></b>
				</p>

				
				<div class="zoom img" align="left"> <img src="<%=el.getImg()%>" ></div>
				

				<p align="center">
					Codice prodotto:
					<%=el.getCodice()%>
					<br> Prezzo: $
					<%=el.getPrezzo()%><br>
				</p>
				<br>
				
				<div style="text-align: center">
					<form action="ServletDettaglio" method="get">
						<input type="hidden" id="id" name="id" value="<%=el.getCodice()%>">
						<button id="pulsante" type="submit">DETTAGLIO</button>
						<br> <br>
					</form>
					<form action="ServletCarrello" method="post">
						<input type="hidden" id="id" name="id" value="<%=el.getCodice()%>">
						<input type="hidden" name="azione" value="aggiungi"> <input
							type="hidden" name="pagina" value="ServletDati">
						<button id="pulsante" type="submit">AGGIUNGI AL CARRELLO
						</button>
						<br>
					</form>
</div>
				</div>
				<%
					}
				%>


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
			<div class="card">

				<button onclick="location.href='ServletCarrello'" id="pulsante"
					type="submit">
					<div class="icon-cart"
						style="align: center; clear: left; float: left">
						<div class="cart-line-1" style="background-color: black"></div>
						<div class="cart-line-2" style="background-color: black"></div>
						<div class="cart-line-3" style="background-color: black"></div>
						<div class="cart-wheel" style="background-color: black"></div>
					</div>
					<br>&emsp; &emsp; Carrello (${car.lengthCarrello()})
				</button>
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
