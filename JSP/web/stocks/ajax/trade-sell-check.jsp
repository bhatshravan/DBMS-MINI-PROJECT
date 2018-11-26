<%@include file="../connect.jsp"%>

<%
ResultSet rs;

String uid = (String)request.getSession().getAttribute("userid");;
String buydate = request.getParameter("buydate");
String selldate = request.getParameter("selldate");


float money=0,sell_sale=0;

rs = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
rs.next();

money = Float.valueOf(rs.getString("current_money"));


ResultSet sellrs = st.executeQuery("select * from Price WHERE symbol='"+request.getParameter("stock")+"' AND time >= '"+selldate+"' ORDER BY time ASC LIMIT 1;");

if(sellrs.next())
{
	float prices1 = Float.valueOf(sellrs.getString("close"));
	int volume1 = Integer.parseInt(request.getParameter("volume"));
	String sell_date = sellrs.getString("time");
	sell_sale = volume1*prices1;

	ResultSet buyrs = st.executeQuery("select * from investments WHERE symbol='"+request.getParameter("stock")+"' AND time = '"+buydate+"' ORDER BY time ASC LIMIT 1;");

	if(buyrs.next())
	{
		int volume2 = Integer.parseInt(buyrs.getString("volume"));
		String buy_date = buyrs.getString("time");
		float buy_Price = buyrs.getFloat("price_bought");
		float buy_sale = buyrs.getFloat("price_bought") * volume1;

		if(volume1 > volume2)
		{
			out.println("<h2> You can't buy stocks more than the volume you have </h2>");
		}

		else
		{
			float total_pl = sell_sale - buy_sale;

			ResultSet rs2 = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
			if(rs2.next())
			{

				float ttl = rs2.getFloat("current_money") + total_pl;
				out.println("<h2>Shares sold worth "+sell_sale+" and total profit/loss is "+total_pl+"<br/> New bank balance will be :<i class='fa fa-rupee-sign'></i> "+ttl);

			}
		}
	}

	else
	{
		out.println("<h2> No such stock available from given buying date </h2>");
	}

}
else
{
	out.println("<h2> No such stock available from given selling date </h2>");
}

%>
