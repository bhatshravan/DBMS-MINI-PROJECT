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
		<h1> Your Profit and Loss Statement </h1>
		<table class='table table-bordered ctable'>
			<colgroup>

				
			</colgroup>
			<thead align="center">
				<tr class="table-big-head" align="center">
					<th align="center">&nbsp;&nbsp;Company name</th>
					<th>&nbsp;&nbsp;Stock</th>
					<th>&nbsp;&nbsp;Volume</th>
					<th>   Bank</th>
					<th>   Price</th>
					<th>   Date</th>
				</tr>
			</thead>
			<tbody class="table-big">
				<%

				String uid = (String)request.getSession().getAttribute("userid");
				ResultSet rs;
				rs = st.executeQuery("select * from profits WHERE user_id = '"+uid+"' ORDER BY symbol DESC, symbol ASC;");
				while(rs.next())
					{
						out.println("<tr>");
							out.println("<td><b>"+rs.getString("symbol")+"</b></td>");
							out.println("<td>"+rs.getString("volume")+"</td>");
							out.println("<td>"+rs.getString("price_bought")+"</td>");
							out.println("<td>"+rs.getString("date_bought")+"</td>");
							out.println("<td>"+rs.getString("price_sold")+"</td>");
						out.println("</tr>");
					}
					%>
				</tbody>
			</table>
		</div>


	</body>
	</html>
