<%
String uid = (String)request.getSession().getAttribute("userid");;
				//out.println(uid);
ResultSet rs;
rs = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
if(rs.next())
	{
		out.println(rs.getString("current_money"));
	}
%>
