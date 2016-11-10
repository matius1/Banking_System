<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<link href="css/registration_style.css" rel="stylesheet" type="text/css">
<title>Alien Bank</title>
</head>

<body>
	<jsp:include page="logo.jsp" />
	<div class="form">
	<h4>Wyslij karte na adres podany przy rejestracji:<br>
	Adres: (pobrany z bazy)</h4>
	<button name="new_card" type="submit" value="Submit" class="btn">Zloz wniosek</button>
	<h4>lub inny:<br>
	Adres:</h4>
	<form action='' method="post" name="New_Card_Form" id="new_card" >
		 <input type="text" name="street" placeholder="Ulica" required /><br>
		 <p class="block">
		 <input type="digits" id="house" name="house" placeholder="Nr domu" required>/
		 <input type="digits" id="flat" name="flat" placeholder="Nr mieszkania"><br>
		 </p>
		 <p class="block">
		 <input type="digits" id="zip" name="zip" placeholder="Kod pocztowy" minlength='2' maxlength='2' required>-
		 <input type="digits" id="zip2" name="zip2" placeholder="Kod pocztowy" minlength='3' maxlength='3' required><br>
		</p>
		<input type="text" name="city" placeholder="Miasto" required /><br>
	
		<button name="new_card" type="submit" value="Submit" class="btn">Zloz wniosek</button>
	</form>
	</div>
</body>
</html>