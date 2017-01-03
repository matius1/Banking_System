<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">


<title>Alien Bank</title>
</head>
<body>
<jsp:include page="logo.jsp" />

	<jsp:include page="adminMenu.jsp" />


	<div class="container">
	
		<div class="section">
		<div class="accountTable">
		
			
			  <h2>Klienci banku</h2>
			  
			  <table class="table">
			    <thead>
			     <tr>
			        <th>ID</th>
			        <th>Imie</th>
			        <th>Nazwisko</th>
                                <th>Email</th>
			        <th>NumerTel</th>
			        <th>Pesel</th>
                                <th>Login</th>
                                <th>Adres</th>
			      </tr>
			    </thead>

			    <tbody>
                              <c:forEach var="users" items="${listOfUsers}" varStatus="loop">
                                  <tr>
                                      <td>${loop.index + 1}</td>
                                      <td>${users.imie}</td>
                                      <td>${users.nazwisko}</td>
                                      <td>${users.email}</td>
                                      <td>${users.numerTel}</td>
                                      <td>${users.pesel}</td>
                                      <td>${users.login}</td>
                                      <td><a href="#"><i class="glyphicon glyphicon-circle-arrow-right"></i></a></td>
                                  </tr>
                              </c:forEach>  
			    </tbody>
			  </table>
			  
			</div>
		</div>
		
</div>
</body>
</html>