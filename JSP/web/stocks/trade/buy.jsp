<!DOCTYPE html>
<html>
<head>

	<%@include file="../style/head.jsp"%>

	<title>My stocks</title>

</head>

<body>

	<%@page import ="java.sql.*" %>
	<%@include file="../connect.jsp"%>
	<%@include file="../session.jsp"%>
	<%@include file="../style/navbar.jsp"%>
	
	<div class="container">
		<div class="row">
			<h1>Buy stocks</h1>
		</div>
		<div class="row">
			<h4>Your current balance is:<br/></h4>
			<h4 id="bal">
				<i class="fa fa-rupee-sign"></i><%@include file="../style/money.jsp"%>
			</h4>

			<table class='table table-bordered ctable'>

				<thead align="center">
					<tr class="table-big-head" align="center">
						<th align="center">&nbsp;&nbsp;Company name</th>
						<th>&nbsp;&nbsp;Volume</th>
						<th>   Price</th>
						<th>   Date</th>
					</tr>
				</thead>
				<tbody class="table-big">
					<%
					rs = st.executeQuery("select * from investments WHERE user_id = '"+uid+"' ORDER BY time DESC, symbol ASC;");
					while(rs.next())
						{
							out.println("<tr>");
								out.println("<td><b>"+rs.getString("symbol")+"</b></td>");
								out.println("<td>"+rs.getString("volume")+"</td>");
								out.println("<td>"+rs.getString("price_bought")+"</td>");
								out.println("<td>"+rs.getString("time")+"</td>");
							out.println("</tr>");
						}
						%>
					</tbody>
				</table>
				<hr/>
			</div>
			<div class="row align-items-center">
				<div class="col-md-offset-2 col-md-8">
					<form>
						<div class="form-group">
							<label for="Amount" class="label-small">Select Company:</label>
							<select id="stock">
								<option value="ADANIPORTS">ADANIPORTS</option>
								<option value="ASIANPAINT">ASIANPAINT</option>
								<option value="AXISBANK">AXISBANK</option>
								<option value="BAJAJ-AUTO">BAJAJ-AUTO</option>
								<option value="BAJAJFINSV">BAJAJFINSV</option>
								<option value="BAJFINANCE">BAJFINANCE</option>
								<option value="BHARTIARTL">BHARTIARTL</option>
								<option value="BPCL">BPCL</option>
								<option value="CIPLA">CIPLA</option>
								<option value="COALINDIA">COALINDIA</option>
								<option value="DRREDDY">DRREDDY</option>
								<option value="EICHERMOT">EICHERMOT</option>
								<option value="GAIL">GAIL</option>
								<option value="GRASIM">GRASIM</option>
								<option value="HCLTECH">HCLTECH</option>
								<option value="HDFC">HDFC</option>
								<option value="HDFCBANK">HDFCBANK</option>
								<option value="HEROMOTOCO">HEROMOTOCO</option>
								<option value="HINDALCO">HINDALCO</option>
								<option value="HINDPETRO">HINDPETRO</option>
								<option value="HINDUNILVR">HINDUNILVR</option>
								<option value="IBULHSGFIN">IBULHSGFIN</option>
								<option value="ICICIBANK">ICICIBANK</option>
								<option value="INDUSINDBK">INDUSINDBK</option>
								<option value="INFY">INFY</option>
								<option value="IOC">IOC</option>
								<option value="ITC">ITC</option>
								<option value="JSWSTEEL">JSWSTEEL</option>
								<option value="KOTAKBANK">KOTAKBANK</option>
								<option value="LT">LT</option>
								<option value="MARUTI">MARUTI</option>
								<option value="NTPC">NTPC</option>
								<option value="ONGC">ONGC</option>
								<option value="POWERGRID">POWERGRID</option>
								<option value="RELIANCE">RELIANCE</option>
								<option value="SBIN">SBIN</option>
								<option value="SUNPHARMA">SUNPHARMA</option>
								<option value="TATAMOTORS">TATAMOTORS</option>
								<option value="TATASTEEL">TATASTEEL</option>
								<option value="TCS">TCS</option>
								<option value="TECHM">TECHM</option>
								<option value="TITAN">TITAN</option>
								<option value="ULTRACEMCO">ULTRACEMCO</option>
								<option value="UPL">UPL</option>
								<option value="VEDL">VEDL</option>
								<option value="WIPRO">WIPRO</option>
								<option value="YESBANK">YESBANK</option>
								<option value="ZEEL">ZEEL</option>
							</select> 
						</div>
						<div class="form-group row col-md-4>
							<label for="Date" class="label-small">Date to buy:</label>
							<input type="date" class="form-control" id="date">
						</div>
						<div class="form-group row ">
						</div>
						
						<div class="form-group row col-md-offset-4 col-md-4">
							<label for="Volume" class="label-small">Volume:</label>
							<input type="number" class="form-control" id="volume" size="5" required>
						</div>
						<div class="form-group row ">
						</div>

						<button id="trade-buy-check" class="btn btn-danger">Check price</button>
						<button id="trade-buy-submit" class="btn btn-success">Submit</button>
					</form>
				</div>
			</div>
			<hr/>
			
			<div class="row msg">	
			</div>

		</div>

		<div id="footer">

		</div>

	</body>
	</html>
