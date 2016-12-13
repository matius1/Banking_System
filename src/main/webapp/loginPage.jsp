<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<form class="login-form">
				<input type="text" placeholder="Login" />
				<input type="password" placeholder="Haslo" /> 

				<button>login</button>
				
				<p class="message">
					Nie masz konta? <a href="/bank/register">Zarejestruj Sie!</a>
				</p>
			</form>
		</div>
	</div>
	
	
	
</body>

</html>