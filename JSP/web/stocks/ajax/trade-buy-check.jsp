<%@include file="../connect.jsp"%>

<%
ResultSet rs;
//out.println("select * from Price WHERE stock='"+request.getParameter("stock")+"' AND time >= '"+request.getParameter("date")+"' LIMIT 1;");
rs = st.executeQuery("select * from Price WHERE stock='"+request.getParameter("stock")+"' AND time >= '"+request.getParameter("date")+"' ORDER BY time ASC LIMIT 1;");
if(rs.next())
	{
		float prices = Float.valueOf(rs.getString("close"));
		int volume = Integer.parseInt(request.getParameter("volume"));
		float sale = volume*prices;

		out.println("<h2> Buying prices will be: <i class='fa fa-rupee-sign'></i>"+prices+" per share.<br/>Total sale value will be <i class='fa fa-rupee-sign'></i> "+sale+" </h2>");
	}
else
	{
		out.println("<h2> No such stock available from given date </h2>");
}

	%>
