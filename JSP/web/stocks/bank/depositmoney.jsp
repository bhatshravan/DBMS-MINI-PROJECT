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
	

	<div class="container form-mains">
		<div class="row">
			<h2>Your current balance is:<br/><i class="fa fa-dollar-sign"></i>
				<%@include file="../style/money.jsp"%>
			</h2>


			<hr/>
		</div>
		<div class="row align-items-center margin-50">
			<div class="col-md-offset-4 col-md-4">
				<form>
					<div class="form-group">
						<label for="Amount" class="label-big">Amount to deposit:</label>
						<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter amount in Rs.">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<div id="footer">

	</div>

</body>
</html>