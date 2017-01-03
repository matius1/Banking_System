
	<nav class="navbar navbar-default">
	<div class="container-fluid">
<form:form method="get" action="logout" class="logout-form">
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="home.jsp">STRONA GLOWNA</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">PRZELEWY <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/bank/transferInternal">Wewnetrzny</a></li>
						<li><a href="transferOUT.jsp">Zewnetrzny</a></li>
						<li><a href="#">Ksiazka adresowa</a></li>
					</ul>
				</li>
				<li><a href="#">RACHUNKI BANKOWE</a></li>
				<li><a href="#">USTAWIENIA</a></li>
                                
                                    
                                   <li> 
                                    <a href="/bank/logout">WYLOGUJ</a>
                                </li>
                                   
                                
				
			</ul>
 </form:form>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>