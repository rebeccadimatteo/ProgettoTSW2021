<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link href="Fragment.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title></title>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	padding: 10px;
	background: #f1f1f1;
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
	height: auto;
}
/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
	float: left;
	width: 100%;
}

/* Right column */
.rightcolumn {
	float: left;
	width: 100%;
	background-color: #f1f1f1;
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

/* Clear floats after the columns */
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

#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	width: 70%;
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
	-webkit-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-moz-box-shadow: 5px 5px 10px 0px #3B3B3B;
	-o-box-shadow: 5px 5px 10px 0px #3B3B3B;
	box-shadow: 5px 5px 10px 0px #3B3B3B;
}

th {
	background-color: #333;
	color: white;
}

.row:after {
	content: "";
	display: table;
	clear: both;
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
</style>
</head>
<body>

	<!--  parte superiore con titolo e logo -->
	<div class="header">
		<div class="logo">
			<div class="img2">
				<a title="Home Page" href="HomePage.jsp"><img
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
	<!--  barra navigazione -->
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
			<!--  se utente � autentifico esce logout e pu� accedere  a mio profilo e miei ordini -->
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

		<!--  colonna destra -->
	</div>
	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<br> <b Style="color: #800000">I tuoi Ordini effettuati:</b> <br>
				<%
					Utente ut = (Utente) request.getSession().getAttribute("utente");

					if (ut == null) {
						response.sendRedirect("LoginServlet");
					} else {
						Ordine ris = new Ordine(0, null, null, null, null, null, null, 0);
						ArrayList<Ordine> listaordini1 = new ArrayList<Ordine>();
						listaordini1 = ris.restituisciordiniid(ut.getId());
						for (int i = 0; i < listaordini1.size(); i++) {
				%>

				<fieldset>
					<table width="55%" border="1">

						<tr>



							<th style="width: 25%">Numero ordine</th>

							<th style="width: 25%">Stato</th>

							<th style="width: 25%">Data ordine</th>

							<th style="width: 25%">Via</th>

							<th style="width: 25%">Cap</th>
							<th style="width: 25%">Citta</th>
							<th style="width: 25%">Dettaglio</th>

						</tr>

						<tr>



							<td><%=listaordini1.get(i).getNumeroordine()%>&nbsp;</td>

							<td><%=listaordini1.get(i).getStato()%>&nbsp;</td>

							<td><%=listaordini1.get(i).getDataordine()%>&nbsp;</td>

							<td><%=listaordini1.get(i).getVia()%>&nbsp;</td>

							<td><%=listaordini1.get(i).getCap()%>&nbsp;</td>

							<td><%=listaordini1.get(i).getCitta()%>&nbsp;</td>
							<td><a href="Acquistato.jsp">Vai al dettaglio</a></td>







						</tr>




					</table>
					<br>
				</fieldset>


				<%
					}
					}
				%>




			</div>
		</div>

		<div class="rightcolumn">
			<div class="card">
				<h2 Style="color: #800000">Gestisci</h2>
				<br>

				<button style="width: 200px"
					onclick="location.href='mioprofilo.jsp'" id="pulsante"
					type="submit">Vai al mio profilo</button>
				<br> <br>

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
