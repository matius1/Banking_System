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

	<jsp:include page="menubar.jsp" />


	<div class="container">
	
		<div class="section">
		<div class="accountTable">
		
			
                    <h2>Twoje Numery Bankowe <a href="/bank/createNewAccount"><img src="http://project-games.eu/images/serversboard/glosuj.jpg"></a></h2>
			  
			  <table class="table">
			    <thead>
			     <tr>
			        <th>ID</th>
			        <th>Numer Rachunku</th>
			        <th>Saldo</th>
			        <th>Waluta</th>
			        <th>Szczegoly</th>
			      </tr>
			    </thead>

			    <tbody>
                              <c:forEach var="account" items="${listOfAccount}" varStatus="loop">
                                  <tr>
                                      <td>${loop.index + 1}</td>
                                      <td>${account.nrRachunku}</td>
                                      <td>${account.saldo}</td>
                                      <td>${account.waluta}</td>
                                      <td><a href="#"><i class="glyphicon glyphicon-circle-arrow-right"></i></a></td>
                                  </tr>
                              </c:forEach>
			    </tbody>
			  </table>
			  
			</div>
		</div>
		
		<div class="section">
			<div class="cards">
				<h2>Twoje Karty</h2>
				
				<table class="table">
				    <thead>
				     <tr>
				        <th>ID</th>
				        <th>Numer</th>
				        <th>Data Waznosci</th>
				        <th>Typ</th>
				        <th>Platnosc Zblizeniowa</th>
				        <th>Zablokuj</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td>1</td>
				        <td>5495090094495530</td>
				        <td>09/20</td>
				        <td>Mastercard Debit</td>
				        <td><i class="glyphicon glyphicon-ok"></i></td>
				        <td><a href="#"><i class="glyphicon glyphicon-ban-circle"></i></a></td>
				      </tr>
				      <tr>
				        <td>2</td>
				        <td>5562801796483717</td>
				        <td>01/17</td>
				        <td>American Express Credit</td>
				        <td><i class="glyphicon glyphicon-remove"></i></td>
				        <td><a href="#"><i class="glyphicon glyphicon-ban-circle"></i></a></td>
				      </tr>
				     
				    </tbody>
					<a href="new_card.jsp" class="btn btn-success">Zamow Nowa Karte</a>
				  </table>
			
			
				
	
			</div>
			
		</div>
</div>
</body>
</html>