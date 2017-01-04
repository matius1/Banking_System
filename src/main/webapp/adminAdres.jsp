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
<link href="/bank/css/style.css" rel="stylesheet" type="text/css">


<title>Alien Bank</title>
</head>
<body>
<jsp:include page="logo.jsp" />

	<jsp:include page="adminMenu.jsp" />


	<div class="container">
	
		<div class="section">
		<div class="accountTable">
		
			
			  <h2>Adres klienta</h2>
			  <h3>${user.imie} ${user.nazwisko}</h3>
			  <table class="table">
			    <thead>
			     <tr>
			        <th>ID</th>
			        <th>Ulica</th>
			        <th>Dom</th>
                                <th>Mieszkanie</th>
			        <th>Zip</th>
			        <th>Miasto</th>
			      </tr>
			    </thead>

			    <tbody>
                              <c:forEach var="adres" items="${listOfAdres}" varStatus="loop">
                                  <tr>
                                      <td>${loop.index + 1}</td>
                                      <td>${adres.ulica}</td>
                                      <td>${adres.dom}</td>
                                      <td>${adres.mieszkanie}</td>
                                      <td>${adres.zip}-${adres.zip2}</td>
                                      <td>${adres.miasto}</td>
                                  </tr>
                              </c:forEach>  
			    </tbody>
			  </table>
			  
			</div>
		</div>
		
</div>
</body>
</html>