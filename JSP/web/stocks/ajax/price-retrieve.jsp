<%@include file="../connect.jsp"%>

<script type="text/javascript" src="/WebApplication1/Stylize/boot/Chart.min.js"></script>

<%
String uid = (String)request.getSession().getAttribute("userid");

String type = request.getParameter("type"); 
String stock = request.getParameter("stock"); 
String from = request.getParameter("from"); 
String to = request.getParameter("to"); 
String data="",data2="";

out.println("SELECT * FROM Price WHERE time >= '"+from+"' AND time <= '"+to+"'");
try{
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM Price WHERE time >= '"+from+"' AND time <= '"+to+"' LIMIT 50");
    
	if(rs.next()){
		data+=rs.getString(type);
		data2+=rs.getString("time");

	while(rs.next())
		{
			data+=","+rs.getString(type);
			data2+=rs.getString("time");
			//out.println(rs.getString("stock")+"<br/>");
            //out.println(rs.getString("open")+"<br/>");
						
		}
	}
}
catch(Exception e){
	out.println(e);
}

%>
<canvas id="myChart" width="400"></canvas>
<script>
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
</script>