<!DOCTYPE html>
<html>
<head>

	<%@include file="../style/head.jsp"%>

	<title>My stocks</title>

</head>

<body>

	<%@page import ="java.sql.*" %>
	<%@include file="../connect.jsp"%>
	<%@include file="../session.jsp"%>
	<%@include file="../style/navbar.jsp"%>
	<div class="container">
		<div class="jumbotron jumbo-green">
			<a href="buy.jsp" class="a-n">
				<h1><i class="fa fa-feather-alt"></i> Buy Stocks</h1>
			</a>
		</div>
		<div class="jumbotron jumbo-red">
			<a href="sell.jsp" class="a-n">
				<h1><i class="fa fa-cocktail"></i> Sell Stocks</h1>
			</a>
		</div>
	</div>


</body>
</html>