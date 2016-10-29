<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		
			
			  <h2>Twoje numery bankowe</h2>
			  
			  <table class="table">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>Numer Rachunku</th>
			        <th>Saldo</th>
			        <th>Waluta</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>1</td>
			        <td>PL697205975139167893297143402333</td>
			        <td>1305.20</td>
			        <td>PLN</td>
			      </tr>
			      <tr>
			        <td>2</td>
			        <td>PL618896332508543497938224365029</td>
			        <td>4505.20</td>
			        <td>PLN</td>
			      </tr>
			      <tr>
			        <td>3</td>
			        <td>PL127648037306331363545991808917</td>
			        <td>992.20</td>
			        <td>EUR</td>
			      </tr>
			    </tbody>
			  </table>
			  
			</div>
		</div>
		

</div>
</body>
</html>