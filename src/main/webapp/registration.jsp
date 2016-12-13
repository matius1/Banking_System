<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<h3>Nowy uzytkownik:</h3>
			<form:form action='register' method="post" name="Registration_Form" id="register" >
				  
				  <input type="text" name="imie" placeholder="Imie" required /><br>
				  <input type="text" name="nazwisko" placeholder="Nazwisko" required /><br>
				  <input type="email" name="email" placeholder="E-mail" required /><br>
				  <input type="text" name="login" placeholder="Login" required/><br>
				  <input type="password" name="haslo" placeholder="Haslo" required/><br>
				  <input type="digits" name="pesel" placeholder="Pesel" minlength='11' maxlength='11' required><br>
				  Adres:<br>
				  <input type="text" name="ulica" placeholder="Ulica" required /><br>
				  <p class="block">
				  <input type="digits" id="dom" name="dom" placeholder="Nr domu" required>/
				  <input type="digits" id="mieszkanie" name="mieszkanie" placeholder="Nr mieszkania"><br>
				  </p>
				  <p class="block">
				  <input type="digits" id="zip" name="zip" placeholder="Kod pocztowy" minlength='2' maxlength='2' required>-
				  <input type="digits" id="zip2" name="zip2" placeholder="Kod pocztowy" minlength='3' maxlength='3' required><br>
				  </p>
				  <input type="text" name="miasto" placeholder="Miasto" required /><br>
				  <input type="digits" name="numerTel" placeholder="Numer telefonu" minlength='9' maxlength='9' required><br>
				  <input type="date" name="dataUro" placeholder="Data urodzenia" required><br>
				 
				  <button name="Registration" type="submit" value="Register" class="btn">Zarejestruj</button>  			
                        </form:form>
		</div>
		
			
</body>
</html>
