<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>

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

html {
	background-color: #f6f6f6; . shaded { background-color : rgba( 110, 110,
	61, 0.09);
	transition: all 500ms ease-in;
}

body {
	background-color: #f6f6f6;
	margin: 0;
	padding: 0 30px 30px 30px;
	width: 100%;
	height: 1400px;
	img
	{
	max-width
	:
	100%;
}

body {
	font-family: Arial;
	padding: 10px;
	background: #f1f1f1;
}

.product-filter {
	padding: 30px 20px 0px 10px;
	min-height: 100px;
	.
	collection-sort
	{
	margin-top
	:
	-10px;
	&:
	first-child
	{
	padding-right
	:
	20px;
}

}
}
.catalog {
	padding-bottom: 30px; md-card { display : block;
	padding: 2%;
	margin: 1px; // Custom setting since ngMaterial 1.0.0 only // supports
	percentage increments of 5 // 4-column Table, except Row 1 to be
	2-Columns &.flex-22 { // max-width : 24% !important; // Disable to all
	varying sizes in Cards max-height : 100%;
	box-sizing: border-box;
	flex: 1 1 24%;
	&:
	first-child
	,
	&
	:
	nth-child(
	2
	)
	{
	
	
	
	
	
            
	
	
	
	
	flex
	:
	
	
	
	
	 
	
	
	
	
	2
	46%;
}

}
@media ( min-width : 600px) and (max-width: 959px) { //
	Custom setting since ngMaterial 1.0.0 only // supports percentage increments of 
		 5 // 2-column table
          &.flex-sm-46 { //
		max-width: 24% !important; // Disable to all varying sizes in Cards
		max-height : 100%;
		box-sizing: border-box;
		flex: 2 46%;
	}
}

//
Need




 




this




 




for




 




specificity




 




to




 




override




 




defaults
//




 




1
-column




 




Table





        




@media ( max-width : 599px) { &
	.flex-xs-80 {
		flex: 1 80%;
		//
		Special
		override
		for
		the
		1st
		&
		2nd
		child
		default
		resizing
		&
		:
		first-child
		,
		&:
		
		
		
		
		
		
		
		
		nth-child(
		2
		)
		{
		
		
		
		
		
              
		
		
		
		
		flex
		:
		
		
		
		
		 
		
		
		
		
		1
		80%;
	}
}

}
img {
	max-width: 100%;
}

md-card-footer-text {
	padding-top: 25px;
	text-align: center;
}

}
}
}
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
	width: 100%;
	padding: 5px;
	height: auto;
}

.img2 {
	background-color: white;
	width: 100%;
	padding: 10px;
	height: auto;
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

#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: #800000;
	padding: 10px 40px;
	width: 60%;
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
	.topnav, .topnavLeft, .topnavRight {
		flex-wrap: wrap;
		flex-direction: column;
		text-align: center;
	}
	.logo {
		width: 100%;
		display: block;
	}
	.pulsante {
		text-align: -webkit-center;
	}
	.icon-cart {
		position: absolute;
		display: grid;
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
	display: table-cell;
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

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.cf {
	zoom: 1
}

.cf:before, .cf:after {
	content: "";
	display: table
}

.cf:after {
	clear: both
}

.fl-l {
	float: left
}

.fl-r {
	float: right
}

a {
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

html, body {
	background-color: #F2F2F2;
	font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana,
		sans-serif;
	margin: 0;
	padding: 0;
	height: 100%;
	width: 100%;
	text-align: center;
	color: #404040;
	position: relative;
}

.wrapper {
	list-style: none;
	margin: 0;
	padding: 0;
	width: 790px;
	margin: 0px auto 0;
	text-align: left;
}

.product {
	width: 250px;
	margin-right: 20px;
	background-color: #FFFFFF;
	position: relative;
}

.product:last-of-type {
	margin-right: 0;
}

.container-prod {
	height: 350px;
	overflow: hidden;
	position: relative;
	-moz-box-shadow: 0px 0px 0px 0px #F2F2F2;
	-webkit-box-shadow: 0px 0px 0px 0px #F2F2F2;
	box-shadow: 0px 0px 0px 0px #F2F2F2;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.container-prod:hover, .container-prod.information, .container-prod.social-sharing
	{
	-moz-box-shadow: 0px 0px 5px 0px #333;
	-webkit-box-shadow: 0px 0px 5px 0px #333;
	box-shadow: 0px 0px 5px 0px #333;
}

.image {
	height: 270px;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

.information .image {
	height: 150px;
}

.container-information {
	height: 40px;
	overflow: hidden;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
	background-color: #031E16;
	color: #FFFFFF;
}

.information .container-information {
	height: 160px;
}

.container-information .title {
	height: 40px;
	line-height: 40px;
	padding: 0 10px;
	background-color: #5DBA9D;
	color: #FFFFFF;
	font-size: 14px;
	font-weight: bold;
	position: relative;
}

.close {
	width: 40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	background-color: #11956c;
	position: absolute;
	right: -40px;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
	color: #FFFFFF;
}

.information .close {
	right: 0;
}

.container-information .description {
	padding: 10px;
	height: 120px;
	overflow-x: hidden;
	overflow-y: auto;
}

.sharing {
	text-align: center;
	width: 100%;
	position: absolute;
	bottom: -50px;
	overflow: hidden;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
	background-color: #031E16;
	z-index: 1;
}

.social-sharing .sharing {
	bottom: 40px;
}

.sharing a {
	color: #FFFFFF;
	font-size: 20px;
	width: 25%;
	height: 40px;
	line-height: 40px;
}

.sharing a:hover {
	color: #5DBA9D;
}

.buttons {
	position: relative;
	z-index: 2;
}

.buttons a {
	text-align: center;
	width: 25%;
	height: 40px;
	line-height: 40px;
	background-color: #11956c;
	color: #FFFFFF;
	text-decoration: none;
	position: relative;
	overflow: hidden;
}

.buttons a>span>span {
	position: relative;
	z-index: 3;
	display: block;
	width: 100%;
}

.buttons a>span:before {
	content: "";
	background-color: rgba(0, 0, 0, 0);
	width: 100%;
	height: 40px;
	position: absolute;
	top: 40px;
	left: 0;
	z-index: 1;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.buttons a:hover>span:before, .information .buttons a.more>span:before,
	.social-sharing .buttons a.share>span:before {
	top: 0;
	background-color: rgba(0, 0, 0, 0.5);
}

.information .buttons a.more>span:before, .social-sharing .buttons a.share>span:before
	{
	top: 0;
	background-color: rgba(0, 0, 0, 0.8);
}

.buttons a.cart.added>span:before {
	top: 0;
	background-color: rgba(255, 255, 255, 0.8);
}

.buttons a.cart>span>span.check {
	width: 100%;
	height: 40px;
	position: absolute;
	top: 40px;
	left: 0;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.buttons a.cart.added>span>span.check {
	top: 0;
	color: #11956c;
}

.buttons a.cart>span>span.add {
	width: 100%;
	height: 40px;
	position: absolute;
	top: 0;
	left: 0;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.buttons a.cart.added>span>span.add {
	top: -40px;
}

.buttons a i {
	font-size: 20px;
}

.buttons a:first-of-type {
	width: 50%;
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img2">
				<a title="Catalogo" href="HomePage.jsp"><img
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
	<!-- Stampa catalogo -->
	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<%
					Catalogo prodotti = (Catalogo) request.getAttribute("Catalogo");

					for (int i = 0; i < prodotti.lengthCatalogo() ; i++) {
						Item el = prodotti.getItemIndex(i);
				%>
				<ul class="wrapper cf">
					<li class="product fl-l">
						<div class="container-prod">
							<div class="image"
								style="background-image:url('<%=el.getImg()%>');"></div>
							<div class="container-information">
								<div class="title">
									<%=el.getNome()%>
									<a href="" class="more close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="buttons cf">
								<form action="ServletCarrello" method="post">
									<a class="cart fl-l"> <span> <span class="add"
											style="text-align: center">
												<button
													style="background: transparent; border: none; outline: none; display: table-row; text-align: center; font-family: Segoe, Segoe UI;"
													type="submit">
													<i style="font-size: 17px; display: table-row;" class="fa">&#xf07a;&ensp;
														Aggiungi</i>
												</button>
										</span><span></span>
									</span>
									</a> <input type="hidden" id="id" name="id"
										value="<%=el.getCodice()%>"> <input type="hidden"
										name="azione" value="aggiungi"> <input type="hidden"
										name="pagina" value="ServletDati">
								</form>
								<form action="ServletDettaglio" method="get">
									<a class="more fl-l"><span><span><button
													style="background: transparent; border: none; outline: none; display: unset; font-size: 17px; text-align: center;"
													type="submit">Dettaglio</button></span></span></a> <input type="hidden"
										id="id" name="id" value="<%=el.getCodice()%>">
								</form>
							</div>
						</div> <br> <br>
					</li>
					<%
						}
					%>

				</ul>
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
					style="align: left;" type="submit">
					<div class="icon-cart"
						style="align: center; clear: left; float: left">
						<div class="cart-line-1" style="background-color: black"></div>
						<div class="cart-line-2" style="background-color: black"></div>
						<div class="cart-line-3" style="background-color: black"></div>
						<div class="cart-wheel" style="background-color: black"></div>
					</div>
					<br>
					<br> Carrello (${car.lengthCarrello()})
				</button>

			</div>
			<div class="card" style="height: 1160px"></div>
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
	<script>
		(function($) {

			$('.wrapper .more').click(
					function(show) {
						var showMe = $(this).closest('.product').find(
								'.container-prod');
						$(this).closest('.wrapper').find('.container-prod')
								.not(showMe).removeClass('information');
						$('.container-prod').removeClass('social-sharing');
						showMe.stop(false, true).toggleClass('information')
								.removeClass('social-sharing');
						show.preventDefault();
					});

			$('.wrapper .share').click(
					function(share) {
						var showMe = $(this).closest('.product').find(
								'.container-prod');
						$(this).closest('.wrapper').find('.container-prod')
								.not(showMe).removeClass('social-sharing');
						$('.container-prod').removeClass('information');
						showMe.stop(false, true).toggleClass('social-sharing')
								.removeClass('information');
						share.preventDefault();
					});

			$('.wrapper .add').click(
					function(share) {
						var showMe = $(this).closest('.product').find('.cart');
						showMe.stop(false, true).addClass('added');
						var showMe = $(this).closest('.product').find(
								'.container-prod');
						showMe.stop(false, true).removeClass('social-sharing')
								.removeClass('information');
						share.preventDefault();
					});

		})(jQuery);
	</script>

</body>
</html>
