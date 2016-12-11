<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	
		<h2>Przelew Wewnetrzny</h2>
		
		<div class="form-group">
		    <label for="selectSource">Z:</label>
		    <select class="form-control">
		      <option>PL697205975139167893297143402333</option>
		      <option>PL618896332508543497938224365029</option>
		      <option>PL127648037306331363545991808917</option>
		    </select>
		    <p class="saldo" >Saldo: 1235,12 PLN</p>
	  	</div>
	  	
	  	
	  	<div class="form-group">
		    <label for="selectSource">Do:</label>
		    <select class="form-control">
		      <option>PL618896332508543497938224365029</option>
		      <option>PL697205975139167893297143402333</option>
		      <option>PL127648037306331363545991808917</option>
		    </select>
		    <p class="saldo" >Saldo: 7895,12 PLN</p>
	  	</div>
	  	
	  	<br>
	  	<p>Kwota:</p>
	  	<div class="input-group">
		  <span class="input-group-addon">PLN</span>
		  <input type="text" class="form-control" value="Wpisz Kwote...">
		</div>
  
  		 <button type="button" class="btn btn-success btnPrzelew">Wykonaj Przelew</button>
  
	
	</div>
	
	
	
	
	
	</div>
</body>
</html>