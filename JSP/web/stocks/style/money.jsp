<%
String uid = (String)request.getSession().getAttribute("userid");;
				//out.println(uid);
ResultSet rs;
rs = st.executeQuery("select current_money from bank WHERE customer_id="+uid+";");
if(rs.next())
	{
		out.println(rs.getString("current_money"));
	}
%>