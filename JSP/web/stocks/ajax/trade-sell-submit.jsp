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
			out.println("<h2> You can't sell stocks more than the volume you have </h2>");
		}

		else
		{
			float total_pl = sell_sale - buy_sale;
			if(volume1 == volume2)
			{
				PreparedStatement ps = null;
				//out.println("DELETE FROM investments WHERE user_id='"+uid+"' AND symbol='"+request.getParameter("stock")+"' AND time = '"+buydate+"'");
				String sql="DELETE FROM investments WHERE symbol='"+request.getParameter("stock")+"' AND time = '"+buydate+"'";
				ps = con.prepareStatement(sql);
				int i = ps.executeUpdate();
			}
			else
			{
				PreparedStatement ps = null;
				String sql="Update investments set volume = volume - "+volume1+" WHERE user_id='"+uid+"' AND time='"+buydate+"' AND symbol = '"+request.getParameter("stock")+"'";
				ps = con.prepareStatement(sql);
				int i = ps.executeUpdate();
			}

			//insert into profits values(uid,symbol,volume,price_bought,price_sold,time2,date_bought,date_sold,totalpl);

			CallableStatement cstat = con.prepareCall("{call sell (?,?,?,?,?,?,?,?,?)}");
			cstat.setString(1, uid);
			cstat.setString(2, request.getParameter("stock"));
			cstat.setString(3, String.valueOf(volume1));
			cstat.setString(4, String.valueOf(buy_Price));
			cstat.setString(5, String.valueOf(prices1));
			cstat.setString(6, String.valueOf(java.time.LocalDate.now()));
			cstat.setString(7, String.valueOf(buydate));
			cstat.setString(8, String.valueOf(sell_date));
			cstat.setString(9, String.valueOf(total_pl));
			//out.println(cstat);
			ResultSet sp2 = cstat.executeQuery();

			PreparedStatement ps = null;
			String sql="Update bank set current_money = current_money + "+sell_sale+" WHERE user_id='"+uid+"'";
			ps = con.prepareStatement(sql);
			int i = ps.executeUpdate();

			ResultSet rs2 = st.executeQuery("select current_money from bank WHERE user_id="+uid+";");
			if(rs2.next())
			{
				out.println(sell_date);
				out.println("<h2>Shares successfully sold worth "+sell_sale+" and total profit/loss is "+total_pl+"<br/> New bank balance :<i class='fa fa-rupee-sign'></i> "+rs2.getString("current_money"));

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
