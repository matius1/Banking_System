<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<h2>Przelew Zewnetrzny</h2>
	<form:form action='transferInternal' method="post" name="Transfer_Form" id="transferInId" >
                    <div class="form-group">
                        <label for="selectSource">Z:</label>
                        <select id="nr1" name="nr1" class="form-control" form="transferInId">
                            <c:forEach var="account" items="${listOfAccount}" varStatus="loop">
                                <option>${account.nrRachunku}</option>
                            </c:forEach>
                        </select>
                    </div>


                    <div class="form-group">
                        <label for="selectSource">Do:</label>
                        <input type="text" name="nr2" class="form-control" form="transferInId">
                        <p class="saldo" >Konto zewnetrzne</p>
                    </div>

                    <br>
                    <p>Kwota:</p>
                    <div class="input-group">
                      <span class="input-group-addon">PLN</span>
                      <input type="number" min=0 step="0.01" id="value" name="value" form="transferInId" class="form-control" required placeholder="Wpisz Kwote">
                    </div>

                    <button name="transferIN" type="submit" value="transferInternal" class="btn btn-success btnPrzelew">Wykonaj Przelew</button>
                 </form:form>
                </div>
	</div>
</body>
</html>