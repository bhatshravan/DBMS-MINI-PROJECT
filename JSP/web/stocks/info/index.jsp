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
		<div class="jumbotron jumbo-yellow jumbo-small">
			<a href="/WebApplication1/stocks/info/company-list.jsp" class="a-n">
				<h2><i class="fa fa-globe-africa"></i> List of companies in Nifty 50</h2>
			</a>
		</div>
		<div class="jumbotron jumbo-green jumbo-small">
			<a href="/WebApplication1/stocks/info/company-price.jsp" class="a-n">
				<h2><i class="fa fa-project-diagram"></i> Current Share Prices of Nifty 50</h2>
			</a>
		</div>
		<div class="jumbotron jumbo-blue jumbo-small">
			<a href="/WebApplication1/stocks/price/index.jsp" class="a-n">
				<h2><i class="fa fa-cocktail"></i> Historical Prices of companies</h2>
			</a>
		</div>
	</div>


</body>
</html>