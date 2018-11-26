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
		<h1> Your current investments </h1>
		<table class='table table-bordered ctable'>
			<colgroup>

				
			</colgroup>
			<thead align="center">
				<tr class="table-big-head" align="center">
					<th align="center">&nbsp;&nbsp;Company name</th>
					<th>&nbsp;&nbsp;Volume</th>
					<th>   Price</th>
					<th>   Investment</th>
					<th>   Date</th>
				</tr>
			</thead>
			<tbody class="table-big">
				<%
				String uid = (String)request.getSession().getAttribute("userid");
				ResultSet rs = st.executeQuery("select * from investments WHERE user_id = '"+uid+"' ORDER BY time DESC, symbol ASC;");
				while(rs.next())
					{
						int invest = (int)rs.getFloat("price_bought") * rs.getInt("volume");
						out.println("<tr>");
							out.println("<td><b>"+rs.getString("symbol")+"</b></td>");
							out.println("<td>"+rs.getString("volume")+"</td>");
							out.println("<td>Rs. "+rs.getString("price_bought")+"</td>");
							out.println("<td>Rs. "+invest+"</td>");
							out.println("<td>"+rs.getString("time")+"</td>");
						out.println("</tr>");
					}
					%>
				</tbody>
			</table>
		</div>


	</body>
	</html>
