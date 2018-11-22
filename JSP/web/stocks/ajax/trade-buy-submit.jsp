<%@include file="../connect.jsp"%>

<%
ResultSet rs;

String uid = (String)request.getSession().getAttribute("userid");
				//out.println(uid);

float money=0;
rs = st.executeQuery("select current_money from bank WHERE customer_id="+uid+";");
if(rs.next())
	{
		money = Float.valueOf(rs.getString("current_money"));
	}

//out.println("select * from Price WHERE stock='"+request.getParameter("stock")+"' AND time >= '"+request.getParameter("date")+"' LIMIT 1;");
	rs = st.executeQuery("select * from Price WHERE stock='"+request.getParameter("stock")+"' AND time >= '"+request.getParameter("date")+"' ORDER BY time ASC LIMIT 1;");
	if(rs.next())
		{
			float prices = Float.valueOf(rs.getString("close"));
			int volume = Integer.parseInt(request.getParameter("volume"));
			String date = rs.getString("time");
			float sale = volume*prices;
			if(sale>money)
			{

				out.println("<h2> Sorry, you have insufficient balance to buy the stocks</h2>");
				}
				else
				{
					out.println("Date is :"+date);
					ResultSet sp = st.executeQuery("select * from investments WHERE symbol='"+request.getParameter("stock")+"' AND user_id = '"+uid+"' AND time='"+date+"';");
					if(sp.next())
					{
						PreparedStatement ps = null;

						String sql="Update investments set volume = volume + "+volume+" WHERE user_id='"+uid+"' AND time='"+date+"'";
						ps = con.prepareStatement(sql);
						int i = ps.executeUpdate();

					}	
					else
					{
						out.println("In else");
						CallableStatement cstat = con.prepareCall("{call buy (?,?,?,?,?)}");
						cstat.setString(1, uid);
						cstat.setString(2, request.getParameter("stock"));
						cstat.setString(3, String.valueOf(volume));
						cstat.setString(4, String.valueOf(sale));
						cstat.setString(5, String.valueOf(date));
						//out.println(cstat);
						ResultSet sp2 = cstat.executeQuery();

					}
					PreparedStatement ps = null;

						String sql="Update bank set current_money = current_money - "+sale+" WHERE customer_id='"+uid+"'";
						ps = con.prepareStatement(sql);
						int i = ps.executeUpdate();


					ResultSet rs2 = st.executeQuery("select current_money from bank WHERE customer_id="+uid+";");
					if(rs2.next())
					{
						out.println("<h2>Shares successfully added, New balance :<i class='fa fa-rupee-sign'></i> "+rs2.getString("current_money"));
						}
					}
				}
				else
					{
						out.println("<h2> No such stock available from given date </h2>");
					}

					%>
