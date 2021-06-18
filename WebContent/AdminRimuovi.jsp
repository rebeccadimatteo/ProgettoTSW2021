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

#pulsante4 {
	outline: none;
	cursor: pointer;
	text-align: center;
	width: 20%;
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
	width: 70%;
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

/*--------------------
General Style
---------------------*/
*, *::before, *::after {
	box-sizing: border-box;
}

/*--------------------
Text
---------------------*/
.h21, .h31 {
	font-size: 16px;
	letter-spacing: -1px;
	line-height: 20px;
}

.h21 {
	color: #747474;
	text-align: center;
}

.h31 {
	color: #032942;
	text-align: right;
}

/*--------------------
Icons
---------------------*/
.i {
	width: 20px;
	height: 20px;
}

.i-login {
	margin: 13px 0px 0px 15px;
	position: relative;
	float: left;
	background-image:
		url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDQxNi4yMjkgNDE2LjIyOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDE2LjIyOSA0MTYuMjI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTQwMy43MjksMjkuNjVINzEuODAyYy02LjkwMywwLTEyLjUsNS41OTctMTIuNSwxMi41djg2LjM2M2MwLDYuOTAzLDUuNTk3LDEyLjUsMTIuNSwxMi41czEyLjUtNS41OTcsMTIuNS0xMi41VjU0LjY1ICAgIGgzMDYuOTI3djMwNi45MjhIODQuMzAydi03My44NjFjMC02LjkwMy01LjU5Ny0xMi41LTEyLjUtMTIuNXMtMTIuNSw1LjU5Ny0xMi41LDEyLjV2ODYuMzYxYzAsNi45MDMsNS41OTcsMTIuNSwxMi41LDEyLjUgICAgaDMzMS45MjdjNi45MDIsMCwxMi41LTUuNTk3LDEyLjUtMTIuNVY0Mi4xNUM0MTYuMjI5LDM1LjI0Nyw0MTAuNjMxLDI5LjY1LDQwMy43MjksMjkuNjV6IiBmaWxsPSIjODczMTRlIi8+CgkJPHBhdGggZD0iTTE4NS40MTcsMjg3LjgxMWMwLDUuMDU3LDMuMDQ1LDkuNjEzLDcuNzE2LDExLjU1YzEuNTQ3LDAuNjQyLDMuMTcsMC45NSw0Ljc4MSwwLjk1YzMuMjUzLDAsNi40NTEtMS4yNyw4Ljg0Mi0zLjY2ICAgIGw3OS42OTctNzkuNjk3YzIuMzQ0LTIuMzQ0LDMuNjYtNS41MjMsMy42Ni04LjgzOWMwLTMuMzE2LTEuMzE2LTYuNDk1LTMuNjYtOC44MzlsLTc5LjY5Ny03OS42OTcgICAgYy0zLjU3NS0zLjU3NS04Ljk1MS00LjY0Ni0xMy42MjMtMi43MWMtNC42NzEsMS45MzYtNy43MTYsNi40OTMtNy43MTYsMTEuNTQ5djY3LjE5N0gxMi41Yy02LjkwMywwLTEyLjUsNS41OTctMTIuNSwxMi41ICAgIGMwLDYuOTAzLDUuNTk3LDEyLjUsMTIuNSwxMi41aDE3Mi45MTdWMjg3LjgxMUwxODUuNDE3LDI4Ny44MTF6IE0yMTAuNDE3LDE1OC41OTRsNDkuNTIxLDQ5LjUybC00OS41MjEsNDkuNTIxVjE1OC41OTR6IiBmaWxsPSIjODczMTRlIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==);
	background-size: 18px 18px;
	background-repeat: no-repeat;
	background-position: center;
}

.i-more {
	background-image:
		url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDYxMiA2MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMiA2MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8ZyBpZD0ibW9yZSI+CgkJPGc+CgkJCTxwYXRoIGQ9Ik03Ni41LDIyOS41QzM0LjMsMjI5LjUsMCwyNjMuOCwwLDMwNnMzNC4zLDc2LjUsNzYuNSw3Ni41UzE1MywzNDguMiwxNTMsMzA2UzExOC43LDIyOS41LDc2LjUsMjI5LjV6IE03Ni41LDM0NC4yICAgICBjLTIxLjEsMC0zOC4yLTE3LjEwMS0zOC4yLTM4LjJjMC0yMS4xLDE3LjEtMzguMiwzOC4yLTM4LjJzMzguMiwxNy4xLDM4LjIsMzguMkMxMTQuNywzMjcuMSw5Ny42LDM0NC4yLDc2LjUsMzQ0LjJ6ICAgICAgTTUzNS41LDIyOS41Yy00Mi4yLDAtNzYuNSwzNC4zLTc2LjUsNzYuNXMzNC4zLDc2LjUsNzYuNSw3Ni41UzYxMiwzNDguMiw2MTIsMzA2UzU3Ny43LDIyOS41LDUzNS41LDIyOS41eiBNNTM1LjUsMzQ0LjIgICAgIGMtMjEuMSwwLTM4LjItMTcuMTAxLTM4LjItMzguMmMwLTIxLjEsMTcuMTAxLTM4LjIsMzguMi0zOC4yczM4LjIsMTcuMSwzOC4yLDM4LjJDNTczLjcsMzI3LjEsNTU2LjYsMzQ0LjIsNTM1LjUsMzQ0LjJ6ICAgICAgTTMwNiwyMjkuNWMtNDIuMiwwLTc2LjUsMzQuMy03Ni41LDc2LjVzMzQuMyw3Ni41LDc2LjUsNzYuNXM3Ni41LTM0LjMsNzYuNS03Ni41UzM0OC4yLDIyOS41LDMwNiwyMjkuNXogTTMwNiwzNDQuMiAgICAgYy0yMS4xLDAtMzguMi0xNy4xMDEtMzguMi0zOC4yYzAtMjEuMSwxNy4xLTM4LjIsMzguMi0zOC4yYzIxLjEsMCwzOC4yLDE3LjEsMzguMiwzOC4yQzM0NC4yLDMyNy4xLDMyNy4xLDM0NC4yLDMwNiwzNDQuMnoiIGZpbGw9IiNkZjQwNWEiLz4KCQk8L2c+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==);
	background-size: 20px 20px;
	background-repeat: no-repeat;
	background-position: center;
}

.i-save {
	background-image:
		url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDYxMiA2MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMiA2MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8ZyBpZD0idGljayI+CgkJPGc+CgkJCTxwYXRoIGQ9Ik00MzYuNywxOTYuNzAxTDI1OC4xODgsMzc1LjIxM2wtODIuODY5LTgyLjg4N2MtNy4yODctNy4yODctMTkuMTI1LTcuMjg3LTI2LjQxMiwwcy03LjI4NywxOS4xMjUsMCwyNi40MTIgICAgIGw5My44MDgsOTMuODA4YzAuNjMxLDAuODk5LDEuMDE0LDEuOTMyLDEuODE3LDIuNzM1YzMuNzY4LDMuNzY4LDguNzIxLDUuNTA4LDEzLjY1NSw1LjM3NGM0LjkzNCwwLjExNSw5LjkwNy0xLjYwNiwxMy42NzQtNS4zNzQgICAgIGMwLjgwMy0wLjgwNCwxLjE4Ni0xLjgzNiwxLjgxNy0yLjczNWwxODkuNDM0LTE4OS40MzNjNy4yODYtNy4yODcsNy4yODYtMTkuMTI1LDAtMjYuNDEyICAgICBDNDU1LjgwNiwxODkuNDE0LDQ0My45ODcsMTg5LjQxNCw0MzYuNywxOTYuNzAxeiBNMzA2LDBDMTM2Ljk5MiwwLDAsMTM2Ljk5MiwwLDMwNnMxMzYuOTkyLDMwNiwzMDYsMzA2ICAgICBjMTY4Ljk4OCwwLDMwNi0xMzYuOTkyLDMwNi0zMDZTNDc1LjAwOCwwLDMwNiwweiBNMzA2LDU3My43NUMxNTguMTI1LDU3My43NSwzOC4yNSw0NTMuODc1LDM4LjI1LDMwNiAgICAgQzM4LjI1LDE1OC4xMjUsMTU4LjEyNSwzOC4yNSwzMDYsMzguMjVjMTQ3Ljg3NSwwLDI2Ny43NSwxMTkuODc1LDI2Ny43NSwyNjcuNzVDNTczLjc1LDQ1My44NzUsNDUzLjg3NSw1NzMuNzUsMzA2LDU3My43NXoiIGZpbGw9IiMyMGMxOTgiLz4KCQk8L2c+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==);
	background-size: 20px 20px;
	background-repeat: no-repeat;
	background-position: center;
}

.i-warning {
	background-image:
		url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYxMi44MTYgNjEyLjgxNiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjEyLjgxNiA2MTIuODE2OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPHBhdGggZD0iTTMwNi40MDgsMEMxMzcuMzY4LDAsMC4zNzEsMTM2Ljk5NywwLjM3MSwzMDYuMDM3czEzNi45OTcsMzA2Ljc3OSwzMDYuMDM3LDMwNi43NzlzMzA2LjAzNy0xMzcuODEzLDMwNi4wMzctMzA2LjAzNyAgIEM2MTIuNDQ1LDEzNy43MzksNDc1LjQ0OCwwLDMwNi40MDgsMHogTTMwNi40MDgsNTgzLjE0N2MtMTUyLjIwMywwLTI3Ni4zNjgtMTI0LjE2NS0yNzYuMzY4LTI3Ni4zNjggICBTMTU0LjIwNSwyOS41OTUsMzA2LjQwOCwyOS41OTVTNTgyLjc3NiwxNTMuNzYsNTgyLjc3NiwzMDYuNzc5UzQ1OC42MTEsNTgzLjE0NywzMDYuNDA4LDU4My4xNDd6IE0zMjEuNjEzLDQzMS43NiAgIGMwLDguODI3LTcuMTk1LDE2LjAyMS0xNi4wMjEsMTYuMDIxYy04LjgyNywwLTE2LjAyMS03LjE5NS0xNi4wMjEtMTYuMDIxYzAtOC44MjcsNy4xOTUtMTYuMDIxLDE2LjAyMS0xNi4wMjEgICBTMzIxLjYxMyw0MjIuOTM0LDMyMS42MTMsNDMxLjc2eiBNMjkwLjM4NywzNTMuMjExdi0xODAuMjRjMC04LjAxMSw2LjM3OS0xNC4zOSwxNC4zOS0xNC4zOWM4LjAxMSwwLDE0LjM5LDYuMzc5LDE0LjM5LDE0LjM5ICAgdjE4MC4yNGMwLDguMDExLTYuMzc5LDE0LjM5LTE0LjM5LDE0LjM5QzI5Ni43NjYsMzY4LjQ5MSwyOTAuMzg3LDM2MS4yMjIsMjkwLjM4NywzNTMuMjExeiIgZmlsbD0iI2Y1ZDg3OCIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=);
	background-size: 20px 20px;
	background-repeat: no-repeat;
	background-position: center;
}

.i-close {
	background-image:
		url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYxMi40NDUgNjEyLjQ0NSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjEyLjQ0NSA2MTIuNDQ1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPHBhdGggZD0iTTUyMi42NDIsODkuODA0QzQ2NC45LDMyLjA2MiwzODguMDExLDAsMzA2LjIyMywwUzE0Ny41NDUsMzIuMDYyLDg5LjgwNCw4OS44MDQgICBjLTExOS40MTYsMTE5LjQxNi0xMTkuNDE2LDMxMy40MjIsMCw0MzIuODM4YzU3Ljc0MSw1Ny43NDEsMTM0LjYzMSw4OS44MDQsMjE2LjQxOSw4OS44MDRzMTU4LjY3OC0zMi4wNjIsMjE2LjQxOS04OS44MDQgICBDNjQyLjA1OCw0MDMuMjI1LDY0Mi4wNTgsMjA5LjIyLDUyMi42NDIsODkuODA0eiBNNTAxLjc4Nyw1MDEuNzg3Yy01Mi4xMDEsNTIuMTAxLTEyMS43OTEsODAuOTcyLTE5NS41NjQsODAuOTcyICAgcy0xNDMuNDYzLTI4Ljg3MS0xOTUuNTY0LTgwLjk3MlMyOS42ODcsMzc5Ljk5NSwyOS42ODcsMzA2LjIyM3MyOC44NzEtMTQzLjQ2Myw4MC45NzItMTk1LjU2NHMxMjEuODY2LTgwLjk3MiwxOTUuNTY0LTgwLjk3MiAgIHMxNDMuNDYzLDI4Ljg3MSwxOTUuNTY0LDgwLjk3MnM4MC45NzIsMTIxLjg2Niw4MC45NzIsMTk1LjU2NFM1NTMuODg3LDQ0OS42ODYsNTAxLjc4Nyw1MDEuNzg3eiBNMzk5LjIxOCwyMzQuODk5bC03NC41MTUsNzQuNTE1ICAgbDc0LjUxNSw3NC41MTVjNS42NDEsNS42NDEsNS42NDEsMTUuMjE1LDAsMjAuODU1Yy0zLjE5MSwzLjE5MS02LjM4Myw0LjAwOC0xMC4zOTEsNC4wMDhjLTQuMDA4LDAtNy4xOTktMS42MzMtMTAuMzktNC4wMDggICBsLTc0LjU4OS03NC41MTVsLTc0LjU4OSw3NC41MTVjLTMuMTkxLDMuMTkxLTYuMzgzLDQuMDA4LTEwLjM5LDQuMDA4cy03LjE5OS0xLjYzMy0xMC4zOS00LjAwOCAgIGMtNS42NDEtNS42NDEtNS42NDEtMTUuMjE1LDAtMjAuODU1bDc0LjUxNS03NC41MTVsLTc0LjUxNS03NC41MTVjLTUuNjQxLTUuNjQxLTUuNjQxLTE1LjIxNSwwLTIwLjg1NSAgIGM1LjY0MS01LjY0MSwxNS4yMTUtNS42NDEsMjAuODU1LDBsNzQuNTE1LDc0LjUxNWw3NC41MTUtNzQuNTE1YzUuNjQxLTUuNjQxLDE1LjIxNS01LjY0MSwyMC44NTUsMCAgIEM0MDQuODU4LDIxOS42ODUsNDA0Ljg1OCwyMjguNDQyLDM5OS4yMTgsMjM0Ljg5OXoiIGZpbGw9IiNmNTVhNGUiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
	background-size: 20px 20px;
	background-repeat: no-repeat;
	background-position: center;
}

.i-left {
	background-image:
		url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCIgdmlld0JveD0iMCAwIDQxNC4yOTggNDE0LjI5OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDE0LjI5OCA0MTQuMjk5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPHBhdGggZD0iTTMuNjYzLDQxMC42MzdjMi40NDEsMi40NCw1LjY0LDMuNjYxLDguODM5LDMuNjYxYzMuMTk5LDAsNi4zOTgtMS4yMjEsOC44MzktMy42NjFsMTg1LjgwOS0xODUuODFsMTg1LjgxLDE4NS44MTEgICBjMi40NCwyLjQ0LDUuNjQxLDMuNjYxLDguODQsMy42NjFjMy4xOTgsMCw2LjM5Ny0xLjIyMSw4LjgzOS0zLjY2MWM0Ljg4MS00Ljg4MSw0Ljg4MS0xMi43OTYsMC0xNy42NzlsLTE4NS44MTEtMTg1LjgxICAgbDE4NS44MTEtMTg1LjgxYzQuODgxLTQuODgyLDQuODgxLTEyLjc5NiwwLTE3LjY3OGMtNC44ODItNC44ODItMTIuNzk2LTQuODgyLTE3LjY3OSwwbC0xODUuODEsMTg1LjgxTDIxLjM0LDMuNjYzICAgYy00Ljg4Mi00Ljg4Mi0xMi43OTYtNC44ODItMTcuNjc4LDBjLTQuODgyLDQuODgxLTQuODgyLDEyLjc5NiwwLDE3LjY3OGwxODUuODEsMTg1LjgwOUwzLjY2MywzOTIuOTU5ICAgQy0xLjIxOSwzOTcuODQxLTEuMjE5LDQwNS43NTYsMy42NjMsNDEwLjYzN3oiIGZpbGw9IiM4NzMxNGUiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
	background-size: 16px 16px;
	background-repeat: no-repeat;
	background-position: center;
}

/*--------------------
Login Box
---------------------*/
.box {
	width: 330px;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.box-form {
	width: 800px;
	position: relative;
	z-index: 1;
}

.box-login-tab {
	width: 60%;
	height: 40px;
	background: #fdfdfd;
	position: relative;
	float: left;
	z-index: 1;
	-webkit-border-radius: 6px 6px 0 0;
	-moz-border-radius: 6px 6px 0 0;
	border-radius: 6px 6px 0 0;
	-webkit-transform: perspective(5px) rotateX(0.93deg) translateZ(-1px);
	transform: perspective(5px) rotateX(0.93deg) translateZ(-1px);
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-box-shadow: 15px -15px 30px rgba(0, 0, 0, 0.32);
	-moz-box-shadow: 15px -15px 30px rgba(0, 0, 0, 0.32);
	box-shadow: 15px -15px 30px rgba(0, 0, 0, 0.32);
}

.box-login-title {
	width: 45%;
	height: 50px;
	position: absolute;
	float: left;
	z-index: 2;
}

.box-login {
	position: relative;
	top: -4px;
	width: 800px;
	background: #fdfdfd;
	text-align: center;
	overflow: hidden;
	z-index: 2;
	-webkit-border-top-right-radius: 6px;
	-webkit-border-bottom-left-radius: 6px;
	-webkit-border-bottom-right-radius: 6px;
	-moz-border-radius-topright: 6px;
	-moz-border-radius-bottomleft: 6px;
	-moz-border-radius-bottomright: 6px;
	border-top-right-radius: 6px;
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
	-webkit-box-shadow: 15px 30px 30px rgba(0, 0, 0, 0.32);
	-moz-box-shadow: 15px 30px 30px rgba(0, 0, 0, 0.32);
	box-shadow: 15px 30px 30px rgba(0, 0, 0, 0.32);
}

.box-info {
	width: 260px;
	top: 60px;
	position: absolute;
	right: -5px;
	padding: 15px 15px 15px 30px;
	background-color: rgba(255, 255, 255, 0.6);
	border: 1px solid rgba(255, 255, 255, 0.2);
	z-index: 0;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 15px 30px 30px rgba(0, 0, 0, 0.32);
	-moz-box-shadow: 15px 30px 30px rgba(0, 0, 0, 0.32);
	box-shadow: 15px 30px 30px rgba(0, 0, 0, 0.32);
}

.line-wh {
	width: 100%;
	height: 1px;
	top: 0px;
	margin: 12px auto;
	position: relative;
	border-top: 1px solid rgba(255, 255, 255, 0.3);
}

/*--------------------
Form
---------------------*/
a {
	text-decoration: none;
}

button:focus {
	outline: 0;
}

.b {
	height: 24px;
	line-height: 24px;
	background-color: transparent;
	border: none;
	cursor: pointer;
}

.b-form {
	opacity: 0.5;
	margin: 10px 20px;
	float: right;
}

.b-info {
	opacity: 0.5;
	float: left;
}

.b-form:hover, .b-info:hover {
	opacity: 1;
}

.b-support, .b-cta {
	width: 100%;
	padding: 0px 15px;
	font-family: "Quicksand", sans-serif;
	font-weight: 700;
	letter-spacing: -1px;
	font-size: 16px;
	line-height: 32px;
	cursor: pointer;
	-webkit-border-radius: 16px;
	-moz-border-radius: 16px;
	border-radius: 16px;
}

.b-support {
	border: #87314e 1px solid;
	background-color: transparent;
	color: #87314e;
	margin: 6px 0;
}

.b-cta {
	border: #df405a 1px solid;
	background-color: #df405a;
	color: #fff;
}

.b-support:hover, .b-cta:hover {
	color: #fff;
	background-color: #87314e;
	border: #87314e 1px solid;
}

.fieldset-body {
	display: table;
}

.fieldset-body p {
	width: 100%;
	display: inline-table;
	padding: 5px 20px;
	margin-bottom: 2px;
}

label {
	float: left;
	width: 100%;
	top: 0px;
	color: #032942;
	font-size: 13px;
	font-weight: 700;
	text-align: left;
	line-height: 1.5;
}

label.checkbox {
	float: left;
	padding: 5px 20px;
	line-height: 1.7;
}

input[type="text"], input[type="password"], select {
	width: 50%;
	height: 32px;
	padding: 0px 10px;
	background-color: rgba(0, 0, 0, 0.03);
	border: none;
	display: inline;
	color: #303030;
	font-size: 16px;
	font-weight: 400;
	float: left;
	-webkit-box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.05), 1px 1px 0px
		rgba(255, 255, 255, 1);
	-moz-box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.05), 1px 1px 0px
		rgba(255, 255, 255, 1);
	box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.05), 1px 1px 0px
		rgba(255, 255, 255, 1);
}

input[type="text"]:focus {
	outline: none;
}

input[type="submit"] {
	width: 100%;
	height: 48px;
	margin-top: 24px;
	padding: 0px 20px;
	font-family: "Quicksand", sans-serif;
	font-weight: 700;
	font-size: 18px;
	color: #fff;
	line-height: 40px;
	text-align: center;
	background-color: #87314e;
	border: 1px #87314e solid;
	opacity: 1;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #df405a;
	border: 1px #df405a solid;
}

input[type="submit"]:focus {
	outline: none;
}

p.field span.i {
	width: 24px;
	height: 24px;
	float: right;
	position: relative;
	margin-top: -26px;
	right: 2px;
	z-index: 2;
	display: none;
	-webkit-animation: bounceIn 0.6s linear;
	-moz-animation: bounceIn 0.6s linear;
	-o-animation: bounceIn 0.6s linear;
	animation: bounceIn 0.6s linear;
}

/*--------------------
Transitions
---------------------*/
.box-form, .box-info, .b, .b-support, .b-cta, input[type="submit"], p.field span.i
	{
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img2">
				<a title="Clicca per andare alla home" href="Adminhomepage.jsp"><img
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
			<h1 style="color: white">Ciao Amministratore!</h1>
		</div>
		<div class="topnavRight" style="float: right; display: flex;">
			<!--  se utente è autentifico esce logout e può accedere  a mio profilo e miei ordini -->
			<%
				if (request.getSession().getAttribute("utente") != null) {
			%>



			<form action="LoginServlet" method="post">
				<button id="pulsantee" type="submit">Logout</button>
				<input type="hidden" name="azione" value="autentico">
			</form>
			<%
				}
			%>
		</div>
	</div>

	<div class="row">
		<div class="leftcolumn">
			<div class="card" style="height: 730px;">

				<form action="ServletAdmin" method="post"
					style="display: contents; font-family: 'Nunito', sans-serif; color: #384047;">

					<br> <br> <br> <br>
					<div class='box-form'>
						<div class='box-login-tab'></div>
						<div class='box-login-title'>
							<div class='i i-login'></div>
							<h2 class="h21">RIMUOVI UN PRODOTTO DAL CATALOGO</h2>
						</div>
						<div class='box-login'>
							<div class='fieldset-body' id='login_form'>
								<button class='b b-form i i-more' title='Info'></button>

								<p class='field'>
									<label for="codrim">Codice prodotto </label><input type="text"
										name="codrim" placeholder="003" />
								</p>

								<input type='submit' type="submit" value='RIMUOVI'
									style="width: 800px;" /> <input type="hidden" name="azionee"
									value="rimuovi">
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>
		<div class="rightcolumn">
			<div class="card">
				<div class="card">
					<h2 Style="color: #800000">Gestisci</h2>
					<form action="ServletAdmin" method="get">
						<button id="pulsante" type="submit">Visualizza HomePage</button>
						<input type="hidden" name="azione" value="homepage"> <br>
						<br>
					</form>
					<form action="ServletAdmin" method="get">
						<button id="pulsante" type="submit">Visualizza Catalogo</button>
						<input type="hidden" name="azione" value="cat"> <br>
						<br>
					</form>
					<form action="ServletAdmin" method="get">

						<button id="pulsante" type="submit">Aggiungi elemento al
							Catalogo</button>
						<input type="hidden" name="azione" value="aggiungi"> <br>
						<br>
					</form>
					<form action="ServletAdmin" method="get">
						<button id="pulsante" type="submit">Rimuovi elemento dal
							Catalogo</button>
						<input type="hidden" name="azione" value="rimuovi"> <br>
						<br>
					</form>

					<form action="ServletAdmin" method="get">
						<button id="pulsante" type="submit">Modifica elemento dal
							Catalogo</button>
						<input type="hidden" name="azione" value="modifica"> <br>
						<br>
					</form>


					<form action="ServletAdmin" method="get">
						<button id="pulsante" type="submit">Ordini totali
							effettuati dai clienti</button>
						<input type="hidden" name="azione" value="ordini"> <br>
						<br>
					</form>







					<form action="ServletRecensioni" method="get">
						<button id="pulsante" type="submit">Recensioni clienti</button>
						<br> <br>
					</form>


				</div>


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