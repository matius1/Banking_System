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
    
<%
    %>
<jsp:include page="logo.jsp" />

	<jsp:include page="menubar.jsp" />


	<div class="container">

		<div class="section">
		<div class="accountTable">



		<div class="section">
			<div class="accounts">
				<h2>Zapisane konta</h2>

				<table class="table">
				    <thead>
				     <tr>
				        <th>ID</th>
				        <th>Numer</th>
				        <th>Nazwa</th>
					<th>Akcja</th>
				      </tr>
				    </thead>
				    <tbody>
                                        
                                      <c:forEach var="kontakt" items="${listOfContacts}" varStatus="loop">
                                      <tr>
                                      <td>${loop.index + 1}</td>
                                      <td>${kontakt.nazwa}</td>
                                      <td>${kontakt.numer}</td>
                                      <td><a href="#"><i class="glyphicon glyphicon glyphicon-remove"></i></a></td>
                                  </tr>
                              </c:forEach>


				    </tbody>
					<a href="addToBook.jsp" class="btn btn-success">Dodaj</a>
				  </table>




			</div>

		</div>
</div>
</body>
</html>
