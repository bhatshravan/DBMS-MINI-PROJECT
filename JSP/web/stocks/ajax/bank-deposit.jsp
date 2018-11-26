<%@include file="../connect.jsp"%>

<%
String uid = (String)request.getSession().getAttribute("userid");

String current_money="";

String amt = request.getParameter("amt");

PreparedStatement ps = null;


String sql="Update bank set current_money = current_money + "+amt+" WHERE user_id="+uid;
//out.println(sql);
ps = con.prepareStatement(sql);

try{
int i = ps.executeUpdate();
}
catch(Exception e){
	out.println(e);
}
ResultSet rs;
rs = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
if(rs.next())
	{
		current_money = rs.getString("current_money");

	}
%>
Balance was successfully updated! <br/> New balance is: <% out.println(current_money); %>
