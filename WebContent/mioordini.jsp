<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Il mio profilo</title>
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

.logo {
	float: left;
	width: 2%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
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
	width: 100%;
}

/* Right column */
.rightcolumn {
	float: left;
	width: 25%;
	background-color: #f1f1f1;
	padding-left: 20px;
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
/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
	margin-top: 20px;
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

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp;
			 &emsp; &emsp; &emsp; &emsp; &emsp;  &emsp; &emsp; 
			 
			
		</div>
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

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp;
		</div>

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
				<%
						Utente ut= (Utente)request.getSession().getAttribute("utente");
				
			if(ut==null)
			{
				response.sendRedirect("LoginServlet");
			}
			else{
				 Ordine ris=new Ordine(0,null,null,null,null,null,null,0);
				 ArrayList<Ordine> listaordini1= new ArrayList<Ordine>();
				 listaordini1=ris.restituisciordiniid(ut.getId());
				for(int i=0;i<listaordini1.size();i++)
				{
					%>

				<fieldset>

					<legend>

						<b Style="color: #800000">I tuoi Ordini effettuati:</b>

					</legend>
					<table width="55%" border="1">

<tr>



<th style="width: 25%">Numero ordine</th>

<th style="width: 25%">Stato</th>

<th style="width: 25%">Data ordine</th>

<th style="width: 25%">Via</th>

<th style="width: 25%">Cap</th>
<th style="width: 25%">Citta</th>

</tr>

<tr>



<td><%=listaordini1.get(i).getNumeroordine()%>&nbsp;</td>

<td><%=listaordini1.get(i).getStato()%>&nbsp;</td>

<td><%=listaordini1.get(i).getDataordine()%>&nbsp;</td>

<td><%=listaordini1.get(i).getVia()%>&nbsp;</td>

<td><%=listaordini1.get(i).getCap()%>&nbsp;</td>

<td><%=listaordini1.get(i).getCitta()%>&nbsp;</td>


 


 

</tr>

 

 </table>

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

				<button onclick="location.href='mioprofilo.jsp'" id="pulsante"
					type="submit">Vai al mio profilo</button>
				<br> <br>

			</div>

		</div>

	</div>

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<form action="ServletHomePage" method="get">
		<button id="pulsantee"
					type="submit">Pagamenti e metodi di Spedizione</button>
            	 <input type="hidden" name="home" value="pagmet"><br><br>
            	 </form>
            	 <form action="ServletHomePage" method="get">
		 <button id="pulsantee"
					type="submit">Chi Siamo</button>
            	 <input type="hidden" name="home" value="chisiamo"><br><br>
            	 </form>
            	 <form action="ServletHomePage" method="get">
            	  <button id="pulsantee"
					type="submit">Contatti</button>
            	 <input type="hidden" name="home" value="contatti">
			      </form>
	</div>

</body>
</html>
