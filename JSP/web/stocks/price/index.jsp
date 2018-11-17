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
			<h2>Price checker</h2>
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
					<div class="form-group col-md-4">
						<label for="Date" class="label-small">From Date:</label>
						<input type="date" class="form-control" id="fromdate">
					</div>
					<div class="form-group col-md-offset-4 col-md-4">
						<label for="date" class="label-small">To Date:</label>
						<input type="date" class="form-control" id="todate">
					</div>
					<div class="form-group">
						<label for="Amount" class="label-small">Info:</label>
						<div id="rates">
						
							<input type="radio" id="r1" name="rate" value="open"> Open
							<input type="radio" id="r1" name="rate" value="high"> High
							<input type="radio" id="r1" name="rate" value="low"> Low
							<input type="radio" id="r1" name="rate" value="close"> Close
							<input type="radio" id="r1" name="rate" value="volume"> Volume
						</div>
                    </div>
                    <div class="form-group">
						<label for="Interval" class="label-small">Interval:</label>
						<div id="interval">
							<input type="radio" id="r2" name="interval" value="open"> Daily
							<input type="radio" id="r2" name="interval" value="high"> Weekly
							<input type="radio" id="r2" name="interval" value="low"> Monthly
							<input type="radio" id="r2" name="interval" value="close"> Fortnightly
						</div>
                    </div>
                    
					<button id="price-check" class="btn btn-success">Submit</button>
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
