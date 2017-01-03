<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/login_style.css" rel="stylesheet" type="text/css">
<title>Alien Bank</title>
</head>

<body>
<header>
	<div class="header">
		<p>Sieciowe Systemy Informacyjne - Informatyka IV rok - Wykonali: Krzysztof Peziol, Marcin Migda, Dominik Nowak, Mateusz Skocz</p>
	</div>
	</header>
	
	<jsp:include page="logo.jsp" />
	
	<div class="login-page">
		<div class="form">
			<form:form method="post" action="login" class="login-form">
                                <input type="text" name="login" placeholder="Login" required/>
                                <input type="password" name="haslo" placeholder="Haslo" required/>

				<input type="submit" value="Zaloguj" />
				
				<p class="message">
					Nie masz konta? <a href="/bank/register">Zarejestruj Sie!</a>
				</p>
			</form:form>
		</div>
	</div>
	
	
	
</body>

</html>