<?xml version = "1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
for-each
value-of
sort - sortuje
if - sprawdza warunek i wykonuje wartosc. np jesli jest min 1 mikolaj to wypisz kopytko
choose - rozbudowany if - jezeli cos sie rowna czemus i otherwise czyli else
	when
	otherwise
variable - zmienna
copy-of - kopiuje zmienna(variable) albo wezel
!-->

<xsl:template match="/">
<html>
	<head>
		<title>Firma</title>
		<style>
			body
			{
				background: #FFFFF0;
				margin: 0;
				padding: 0;
			}
			.klienci
			{
				font-family: Arial;
				font-family: 'Century Gothic';
				display: table;
				background: #F0F8FF;
				width: calc(50% - 52px);
				height: 100%;
				float: left;
				color: #755139;
				font-size: 20px;
				margin: 20px;
				padding: 4px;
				text-align: center;
				border-radius: 5px;
			}
			.ocac tr
			{
				display: table;
				padding-top: 10px;
				font-family: Arial;
				font-family: 'Century Gothic';
				font-size: 20px;
				font-weight: 600;
				width: 100%;
				margin-top: 10px;
			}


			tr
			{
				text-align: center;
				color:  #374048;
				margin: 5px;

			}
			.samochod
			{

			font-size: 20px;
			margin-top: 2px;
			}
			.samochod tr
			{
			color: #FFD662;
			}
			img
			{
			border-radius: 5px;
			}
			.navbar
			{
			  float:none;
			  margin: 0;
			  border-radius: 0;
			  color: #FFF;
			  padding: 1% 0;
			  font-size: 1.2em;
			  border: 0;
			  background-color: #313131;

			}


			.navbar-brand
			{
			  position: absolute;
			  float: left;
			  min-height: 50px;
			  padding: 0 15px 15px;
			}


			.navbar-inverse .navbar-nav li a
			{
			  color: #D5D5D5;
			}

			.formul
			{
			height: 600px;
			margin: 0;
			padding: 0;
			text-align: center;
			background: linear-gradient(rgba(0,0,50,0.5),
			rgba(0,0,50,0.5)), url(img/galeria1.jpg);
			background-size: cover;
			background-position: center;
			font-family: sans-serif;

			}

			.contact-title
			{
			margin-top: 0px;
			color: #fff;
			text-transform: uppercase;
			transition: all 4s ease-in-out;
			padding: 15px;
			}


			.contact-title h1
			{
			font-size: 32px;
			line-height: 10px;
			}

			.contact-title h2
			{
				font-size: 16px;
			}

			form
			{
			margin-top: 50px;
			transitioin: all 4s ease-in-out;

			}

			.form-control
			{
			width: 300px;
			background:transparent;
			border:name;
			outline:name;
			color: #fff;
			font-size: 18px;
			margin-bottom: 10px;
			border: none;
			}

			#potw
			{
				background:#ff5722;
				border-color: transparent;
				color: #fff;
				font-size: 20px;
				letter-spacing: 2px;
				height: 50px;
				margin-top: 20px;
				border-radius: 3px;
			}

			form .submit:hover
			{
				background-color: #f44336;
				cursor: pointer;
			}
		</style>
	</head>
		<body>


	<!--		<script>
					function myFunction() {
					var x = document.getElementById("myDIV");
					if (x.style.display === "none")
					{
						x.style.display = "block";
					}
					else
					{
						x.style.display = "none";
					}
					}
				</script>

-->

<nav class="navbar navbar-inverse navbar-fixed-top" style="height: 50px; margin-bottom: 25px">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><img src="img/logomale.png"></img></a>
		</div>
		<div class="collapse navbar-collapse " id="myNavbar">

		</div>
	</div>
</nav>





<div class="formul">
	<div class="contact-title">
		<h1>Dodaj nową osobę</h1>
		<h2>Wprowadź dane</h2>
	</div>

	<div class="contact-form">
		<form id="contact-form" method="post" action="firmajs.php">
			<input name="name" type="text" class="form-control" placeholder="Imię"></input>
			<br></br>
			<input name="surname" type="text" class="form-control" placeholder="Nazwisko"></input>
			<br></br>
			<input name="city" type="text" class="form-control" placeholder="Miejscowosc"></input>
			<br></br>
			<input name="type" type="text" class="form-control" placeholder="Rodzaj Szkody"></input>
			<br></br>
			<input name="money" type="text" class="form-control" placeholder="Przyznane odszkodowanie"></input>
			<br></br>
			<input name="car" type="text" class="form-control" placeholder="Model samochodu"></input>
			<br></br>

			<input type="submit" id="potw" class="form-control submit" value="WYSLIJ"></input>

		</form>
	</div>
</div>




			<div id="pasek">
				<div id="form">
					<form>
						Imię:<input type="text" name="imie"></input>
						Nazwisko:<input type="text" name="nazwisko"></input>
						Miejscowość:<input type="text" name="miejscowosc"></input>
						rodzaj szkody:<input type="text" name="rodzaj_szkody"></input>
						Przyznane odszkodowanie:<input type="text" name="przyznane_odszkodowanie"></input>
						Marka:<input type="text" name="marka"></input>
				</form>
			</div>
			</div>
			<xsl:for-each select="firma/klient">

				<div class="klienci">
												<!--JAVASCRIPT NOWA KARTA-->
					<input id="go" type="button" value="Otwórz w małej karcie"
					 onclick="window.open('firmajs.xml','popUpWindow',
					 'height=500, width=400, left=100, top=100, resizable=yes, scrollbars=yes,
						toolbar=yes, menubar=no, location=no, directories=no, status=yes');"></input>


						<tr>Imie: <xsl:value-of select="imie"/></tr>
						<tr>nazwisko: <xsl:value-of select="nazwisko"/></tr>
						<tr>miejscowosc: : <xsl:value-of select="miejscowosc"/></tr>



						<button onclick="hide('{imie}')"><xsl:value-of select="imie"/></button>


					<div class="ocac" id="{imie}" style="display:none;">
						<xsl:value-of select="imie"/>
						<xsl:value-of select="name"/>

							<xsl:for-each select="szkoda">
				      <tr>rodzaj szkody: <xsl:value-of select="rodzaj_szkody"/></tr>
							<tr>przyznane_odszkodowanie: <xsl:value-of select="przyznane_odszkodowanie"/></tr>
							<div class="samochod">
								<tr>samochod: <xsl:value-of select="samochod"/></tr>
								<img height="350" width="650">
									<xsl:attribute name="src">
											<xsl:value-of select="photo"/>
									</xsl:attribute>
								</img>
							</div>

						</xsl:for-each>

					</div>
			</div>

		</xsl:for-each>






<!--GRZYWA-->
		<script>
		function hide(y){
			var x = document.getElementById(y);
			if(x.style.display === "none")
			{
				x.style.display = "block";
			}else{
				x.style.display = "none";
			}
		}
		</script>




	</body>
</html>
</xsl:template>
</xsl:stylesheet>
