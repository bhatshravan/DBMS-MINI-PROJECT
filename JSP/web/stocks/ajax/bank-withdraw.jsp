<%@include file="../connect.jsp"%>

<%
String uid = (String)request.getSession().getAttribute("userid");

float cmoney=0;
int gmoney=0;
String current_money="";

String amt = request.getParameter("amt");
gmoney = Integer.parseInt(amt);

ResultSet rs;
rs = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
if(rs.next())
	{
		current_money = rs.getString("current_money");
		cmoney = Float.valueOf(current_money);

	}

if(gmoney>cmoney){
	out.println("You do not have that much money to withdraw");
}
else{
PreparedStatement ps = null;
String sql="Update bank set current_money = current_money - "+amt+" WHERE user_id="+uid;
ps = con.prepareStatement(sql);

try{
int i = ps.executeUpdate();
}
catch(Exception e){
	out.println(e);
}
rs = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
if(rs.next())
	{
		current_money = rs.getString("current_money");

	}
%>
Balance was successfully updated! <br/> New balance is: <% out.println(current_money);
}
 %>
