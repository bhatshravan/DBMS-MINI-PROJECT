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
			<a href="withdrawmoney.jsp" class="a-n">
				<h1><i class="fa fa-arrow-alt-circle-down"></i> Withdraw Money</h1>
			</a>
		</div>
		<div class="jumbotron jumbo-red">
			<a href="depositmoney.jsp" class="a-n">
				<h1><i class="fa fa-arrow-alt-circle-up"></i> Deposit Money</h1>
			</a>
		</div>
	</div>


</body>
</html>