<%@include file="../connect.jsp"%>

<!--script type="text/javascript" src="/WebApplication1/Stylize/boot/Chart.min.js"></script-->

<!--script src="/WebApplication1/Stylize/canvas/canvasjs.min.js"></script-->

<div id="chartContainer" style="height: 300px; width: 100%;"></div>

<!--canvas id="myChart" width="400"></canvas-->

<table class='table table-bordered ctable' style="margin-top: 100px;">
	<thead align="center">
		<tr class="table-big-head" align="center">
			<th>&nbsp;&nbsp;Date</th>
			<th>&nbsp;&nbsp;Open</th>
			<th>&nbsp;&nbsp;High</th>
			<th>   Low</th>
			<th>   Close</th>
			<th>   Volume</th>
		</tr>
	</thead>
	<tbody class="table-big">

		<%
		String uid = (String)request.getSession().getAttribute("userid");

		String type = request.getParameter("type");
		String stock = request.getParameter("stock");
		String from = request.getParameter("from");
		//String interval = request.getParameter("interval");
		String to = request.getParameter("to");


		String data="",data2="",data3="";

		//out.println("SELECT * FROM Price WHERE time >= '"+from+"' AND time <= '"+to+"' AND stock ='"+stock+"' LIMIT 31");
		try{
		ResultSet rs;
		rs = st.executeQuery("SELECT * FROM Price WHERE time >= '"+from+"' AND time <= '"+to+"' AND symbol ='"+stock+"' LIMIT 31");

		if(rs.next())
		{
			String ctime = rs.getString("time");
			String test[] = (ctime.split("-"));
			String test2 = "new Date("+test[0]+","+test[1]+","+test[2]+" )";

			data+=rs.getString(type);
			data3+="{ x : "+test2+" ,y : "+rs.getString(type)+"}";
			data2+=rs.getString("time");
			out.println("<tr>");
				out.println("<td>"+rs.getString("time")+"</td>");
				out.println("<td>"+rs.getString("open")+"</td>");
				out.println("<td>"+rs.getString("high")+"</td>");
				out.println("<td>"+rs.getString("low")+"</td>");
				out.println("<td>"+rs.getString("close")+"</td>");
				out.println("<td>"+rs.getString("volume")+"</td>");
			out.println("</tr>");

			while(rs.next())
			{
				data+=","+rs.getString(type);


				ctime = rs.getString("time");
				String test21[] = (ctime.split("-"));
				String test22 = "new Date("+test21[0]+","+test21[1]+","+test21[2]+" )";


				data3+=",{ x : "+test22+" ,y : "+rs.getString(type)+"}";

				data2+=rs.getString("time");
				out.println("<tr>");
					out.println("<td>"+rs.getString("time")+"</td>");
					out.println("<td>"+rs.getString("open")+"</td>");
					out.println("<td>"+rs.getString("high")+"</td>");
					out.println("<td>"+rs.getString("low")+"</td>");
					out.println("<td>"+rs.getString("close")+"</td>");
					out.println("<td>"+rs.getString("volume")+"</td>");
				out.println("</tr>");
			}
		}
		else
		{
			out.println("<h2> No such stocks available between the dates you had entered </h2>");
		}
	}
	catch(Exception e){
	out.println(e);
}

%>


</tbody>
</table>

<script>

	var chart = new CanvasJS.Chart("chartContainer", {
		animationEnabled: true,
		theme: "light2",
		title:{
			text: "Stock Prices"
		},
		axisX:{

			crosshair: {
				enabled: true,
				snapToDataPoint: true
			}
		},
		axisY:{
			title: "<% out.print(type.toUpperCase()); %>",
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

			name: "<% out.print(type.toUpperCase()); %>",
			markerType: "square",
			xValueFormatString: "DD MMM, YYYY",

			dataPoints: [
			<% out.print(data3); %>
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

<!--script>
	var ctx = document.getElementById("myChart");
	var myChart = new Chart(ctx, {
		type: 'line',
		data: {
			datasets: [{
				label: [<%out.print(data2);%>],
				data: [<%out.print(data);%>],
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
				]
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
</script-->
