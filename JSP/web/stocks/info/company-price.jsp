<!DOCTYPE html>
<html>
<head>

	<%@include file="../style/head.jsp"%>

	<title>My stocks</title>

</head>

<body class="bg">

	<%@page import ="java.sql.*" %>
	<%@include file="../connect.jsp"%>
	<%@include file="../session.jsp"%>
	<%@include file="../style/navbar.jsp"%>
	<div class="container">
		<h1> Last prices of companies in Nifty 50 </h1>
		<table class='table table-bordered ctable'>
			<colgroup>
				<col span="1"/>
				<col span="1"/>
				<col span="1" style="background-color:#b1ff9b; color: #FFFFFF;"/>
				<col span="1"/>
				<col span="1"/>
				<col span="1" style="background-color:#fff49c; color: #FFFFFF;"/>

				
			</colgroup>
			<thead align="center">
				<tr class="table-big-head" align="center">
					<th align="center">&nbsp;&nbsp;Company name</th>
					<th>&nbsp;&nbsp;Open</th>
					<th>&nbsp;&nbsp;High</th>
					<th>   Low</th>
					<th>   Close</th>
					<th>   Volume</th>
				</tr>
			</thead>
			<tbody class="table-big">
				<%
				ResultSet rs;
				rs = st.executeQuery("select P.stock,P.time,P.open,P.high,P.close,P.low,P.volume from Price P ORDER BY P.time DESC, P.stock ASC LIMIT 48;");
				while(rs.next())
					{
						out.println("<tr>");
							out.println("<td><b>"+rs.getString("stock")+"</b></td>");
							out.println("<td>"+rs.getString("open")+"</td>");
							out.println("<td>"+rs.getString("high")+"</td>");
							out.println("<td>"+rs.getString("low")+"</td>");
							out.println("<td>"+rs.getString("close")+"</td>");
							out.println("<td>"+rs.getString("volume")+"</td>");
						out.println("</tr>");
					}
					%>
				</tbody>
			</table>
		</div>


	</body>
	</html>
