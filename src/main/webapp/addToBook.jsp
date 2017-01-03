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
			<h3>Dodaj do ksiazki adresowej:</h3>
			<form:form action='addContactBook' method="post" name="add_Address_Form" id="address" >

				  <input type="text" name="nazwa" placeholder="Nazwa" required /><br>
				  <input type="text" name="numer" placeholder="Numer Konta" required /><br>

				  <button name="Address" type="submit" value="address" class="btn">Dodaj</button>
                        </form:form>
		</div>


</body>
</html>
