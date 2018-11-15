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
		<h1> List of companies in Nifty 50 </h1>
		<table class='table table-bordered ctable'>
			<colgroup>
				<col span="1"/>
				<col span="1"/>
				<col span="1"/>
				<col span="1"/>

				
			</colgroup>
			<thead align="center">
				<tr class="table-big-head" align="center">
					<th align="center">&nbsp;&nbsp;Company name</th>
					<th>&nbsp;&nbsp;Industry</th>
					<th>&nbsp;&nbsp;Symbol</th>
					<th>   Series</th>
					<th>   ISIN Code</th>
				</tr>
			</thead>
			<tbody class="table-big">
				<%
				ResultSet rs;
				rs = st.executeQuery("select * from Companies");
				while(rs.next())
					{
						out.println("<tr>");
							out.println("<td><a href='http://www.google.com/search?q="+rs.getString("Company_name")+"'><b>"+rs.getString("Company_name")+"</b></a></td>");
							out.println("<td>"+rs.getString("Industry")+"</td>");
							out.println("<td>"+rs.getString("Symbol")+"</td>");
							out.println("<td>"+rs.getString("Series")+"</td>");
							out.println("<td>"+rs.getString("ISIN_code")+"</td>");
						out.println("</tr>");
					}
					%>
				</tbody>
			</table>
		</div>


	</body>
	</html>
