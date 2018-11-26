<!DOCTYPE html>
<html>
	<head>

		<%@include file="style/head.jsp"%>

		<title>Shravan Stocks</title>

	</head>

	<body>

		<%@page import ="java.sql.*" %>
		<%@include file="connect.jsp"%>
		<%@include file="session.jsp"%>
		<%@include file="style/navbar.jsp"%>

		<div class="main container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1>About Nifty 50</h1>
					<h4>
						The NIFTY 50 index is National Stock Exchange of India's benchmark broad based stock market index for the Indian equity market. Full form of NIFTY is National Stock Exchange Fifty . It represents the weighted average of 50 Indian company stocks in 12 sectors and is one of the two main stock indices used in India, the other being the BSE sensex.
						<br /><br />

						Nifty is owned and managed by India Index Services and Products (IISL), which is a wholly owned subsidiary of the NSE Strategic Investment Corporation Limited. IISL had a marketing and licensing agreement with Standard & Poor's for co-branding equity indices until 2013. The Nifty 50 was launched 1st April 1996, and is one of the many stock indices of Nifty.<br /><br />

						NIFTY 50 Index has shaped up as a largest single financial product in India, with an ecosystem comprising: exchange traded funds (onshore and offshore), exchange-traded futures and options (at NSE in India and at SGX and CME abroad), other index funds and OTC derivatives (mostly offshore). NIFTY 50 is the world's most actively traded contract. WFE, IOMA and FIA surveys endorse NSE's leadership position.<br /><br />
					</h4>

				</div>

			</div>
			<div class="row" style="margin-top:50px;">
				<div class="col-md-2"></div>
				<div class="col-md-8">


					<div id="chartContainer" style="height: 300px; width: 100%;"></div>
					<script>


					var chart = new CanvasJS.Chart("chartContainer", {
						animationEnabled: true,
						theme: "light2",
						title:{
							text: "NSE Prices"
						},
						axisX:{

							crosshair: {
								enabled: true,
								snapToDataPoint: true
							}
						},
						axisY:{
							title: "OPEN",
							crosshair: {
								enabled: true
							},
							includeZero: false
						},

						toolTip:{
							shared:true
						},
						legend:{
							cursor:"pointer",
							verticalAlign: "bottom",
							horizontalAlign: "left",
							dockInsidePlotArea: true,
							itemclick: toogleDataSeries
						},
						data: [{
							type: "line",

							name: "OPEN",
							markerType: "square",
							xValueFormatString: "DD MMM, YYYY",

							dataPoints: [
								{ x : new Date(2018,11,23) ,y : 14},{ x : new Date(2018,11,21) ,y : 14.05},{ x : new Date(2018,11,19) ,y : 14.25},{ x : new Date(2018,11,16) ,y : 14.2},{ x : new Date(2018,11,15) ,y : 14.3},{ x : new Date(2018,11,14) ,y : 14.05},{ x : new Date(2018,11,13) ,y : 14.05},{ x : new Date(2018,11,12) ,y : 14.05},{ x : new Date(2018,11,09) ,y : 14.2},{ x : new Date(2018,11,08) ,y : 14.2},{ x : new Date(2018,11,07) ,y : 14.35},{ x : new Date(2018,11,05) ,y : 14.2},{ x : new Date(2018,11,01) ,y : 14.5},{ x : new Date(2018,10,31) ,y : 14.65},{ x : new Date(2018,10,30) ,y : 14.55},{ x : new Date(2018,10,29) ,y : 14},{ x : new Date(2018,10,26) ,y : 14.65},{ x : new Date(2018,10,25) ,y : 14.05},{ x : new Date(2018,10,24) ,y : 14.1},{ x : new Date(2018,10,23) ,y : 14.1},{ x : new Date(2018,10,22) ,y : 14.05}
							]
						}]
					});
					chart.render();
					function toogleDataSeries(e){
						if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
							e.dataSeries.visible = false;
						} else{
							e.dataSeries.visible = true;
						}
						chart.render();
					}
					</script>
				</div>
			</div>
		</div>
		

		<div id="footer">

		</div>

	</body>
</html>
