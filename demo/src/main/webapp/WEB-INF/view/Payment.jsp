<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>SellNBye | Payment</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<c:when test="${mode=='MODE_ADDPAYMENTS' }">
	<div class="container text-center">
		<h3>Add New Payment</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-payment">
			<input type="hidden" name="pid" value="${payment.payid }" />
			<div class="form-group">
				<label class="control-label col-md-3">Payment Total</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="total"
						value="${payment.total }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Payment Type</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="payType"
						value="${payment.payType }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Phone Number</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="phoneNumber"
						value="${payment.phoneNumber }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">email </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="email"
						value="${payment.email }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Address </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="address"
						value="${payment.address }" />
				</div>
			</div>

			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Add Payment" />
			</div>
		</form>
	</div>
</c:when>
<c:when test="${mode=='ALL_PAYMENTS' }">

	<div class="container text-center" id="tasksDiv">
		<h3>All Payments</h3>
		<hr>
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Payment Total</th>
						<th>Payment Type</th>
						<th>Phone Number</th>
						<th>email</th>
						<th>Address</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="payment" items="${payments }">
						<tr>
							<td>${payment.payid}</td>
							<td>${payment.total}</td>
							<td>${payment.payType}</td>
							<td>${payment.phoneNumber}</td>
							<td>${payment.email}</td>
							<td>${payment.address}</td>
							<td><a href="/delete-payment?pid=${payment.payid }"><span
									class="glyphicon glyphicon-trash"></span></a></td>
							<td><a href="/edit-payment?pid=${payment.payid }"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
		<%--					<td><a href="/savePayment?cart_sid=${payment.cart_sid}&total=${total}"><span></span></a></td>        --%> 
							<td><a href=""><span
									class="glyphicon glyphicon-shopping-cart"></span></a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</c:when>
<c:when test="${mode=='MODE_UPDATE1' }">
	<div class="container text-center">
		<h3>Update PAYMENT</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-payment">
			<input type="hidden" name="pid" value="${payment.payid }" />
			<div class="form-group">
				<label class="control-label col-md-3">Payment Total</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="total"
						value="${payment.total }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Payment Type</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="payType"
						value="${payment.payType }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Phone Number</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="phoneNumber"
						value="${payment.phoneNumber }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">email </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="email"
						value="${payment.email }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Address </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="address"
						value="${payment.address }" />
				</div>
			</div>

			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Add Payment" />
			</div>
		</form>
	</div>
</c:when>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	</body>
	</html>
	