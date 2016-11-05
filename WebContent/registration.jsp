<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/registration_style.css" rel="stylesheet" type="text/css">


<title>Alien Bank</title>
</head>
<body>
<jsp:include page="logo.jsp" />



		<div class="form">
			<h3>Nowy uzytkownik:</h3>
			<form action='' method="post" name="Registration_Form" >
				  
				  <input type="text" name="firstname" placeholder="Imie" required /><br>
				  <input type="text" name="lastname" placeholder="Nazwisko" required /><br>
				  <input type="text" name="email" placeholder="E-mail" required /><br>
				  <input type="text" name="login" placeholder="Login" required/><br>
				  <input type="password" name="password" placeholder="Haslo" required/><br>
				  <input type="digits" name="pesel" placeholder="Pesel" minlength='11' maxlength='11' required><br>
				  Adres:<br>
				  <input type="text" name="street" placeholder="Ulica" required /><br>
				  <input type="digits" name="house" placeholder="Nr domu/Nr mieszkania" required><br>
				  <p class="zip_block">
				  <input type="digits" id="zip" name="zip" placeholder="Kod pocztowy" minlength='2' maxlength='2' required>-
				  <input type="digits" id="zip2" name="zip2" placeholder="Kod pocztowy" minlength='3' maxlength='3' required><br>
				  </p>
				  <input type="text" name="city" placeholder="Miasto" required /><br>
				  <input type="digits" name="phone" placeholder="Numer telefonu" minlength='9' maxlength='9' required><br>
				  <input type="date" name="born_date" placeholder="Data urodzenia" required><br>
				 
				  <button name="Registration" type="submit" value="Submit" class="btn">Zarejestruj</button>  			
			</form>
		</div>
		
			
</body>
</html>