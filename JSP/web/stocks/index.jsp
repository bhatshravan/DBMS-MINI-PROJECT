


<DOCTYPE html>
	<html>
	<head>

		<link href="../Stylize/css/stocks.css" rel="stylesheet">

		<link href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel = "stylesheet">
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
		<title>My stocks</title>

	</head>

	<body>

		<%@page import ="java.sql.*" %>
		<%@include file="connect.jsp"%>
		<%@include file="session.jsp"%>


		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Shravan Stocks</a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Stocks info</a></li>
					<li><a href="#">Buy stocks</a></li>
					<li><a href="#">Profit & loss</a></li>
					<li><a href="#">Investments</a></li>
					<li><a href="#">Bank</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Log-out</a></li>
				</ul>
			</div>
		</nav>


		<div class="main">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<canvas id="myChart" width="400"></canvas>
					<script>

						var ctx = document.getElementById("myChart");
						var myChart = new Chart(ctx, {
							type: 'line',
							data: {
								labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
								datasets: [{
									label: '# of Votes',
									data: [12, 19, 3, 5, 2, 3],
									backgroundColor: [
									'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)'
									],
									borderColor: [
									'rgba(255,99,132,1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)'
									],
									borderWidth: 1
								}]
							},
							options: {
								scales: {
									yAxes: [{
										ticks: {
											beginAtZero: true
										}
									}]
								}
							}
						});

					</script>
				</div>
			</div>
		</div>

		<div id="footer">

		</div>

	</body>
	</html-->