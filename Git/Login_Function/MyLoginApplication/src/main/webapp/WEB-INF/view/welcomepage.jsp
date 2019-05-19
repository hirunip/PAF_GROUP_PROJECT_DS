<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>SellNBye | Home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body style="background-image:url(static/images/back2.jpg) ">

 
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			
				<ul class="nav navbar-nav">
					<li><a href="/welcome">SellNBye</a></li>
					<li><a href="/login">Login</a></li>
					<li><a href="/register">Signup</a></li>
					<li><a href="">Products</a></li>
					<li><a href="">Add Products</a></li>
					<li><a href="">Shopping Cart</a></li>
					<li><a href="">Orders</a></li>
					<li><a href="/userProfile">User Profile</a></li>
				</ul>
			</div>
	</div>
</nav>

 
	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
		 
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>!Welcome to SellNBye!</h1>
					<h3>Explore Your Fashions....</h3>
				</div>
			</div>

	</c:when>
	


		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				
					<form class="form-horizontal" method="post" action="Insert-user">
 		
 		<input type="hidden" name="id" value="${user.id}" />
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Username :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="username" value="${user.username}"/>
 		</div>
 		</div>	
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">First Name :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="firstname" value="${user.firstname}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Last Name :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="lastname" value="${user.lastname}"/>
 		</div>
 		</div>	
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Phone :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="phone" value="${user.phone}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Address :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="address" value="${user.address}"/>
 		</div>
 		</div>
 
 		<div class="form-group">
 		<label class="control-lable col-md-3">Email :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="email" value="${user.email}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Password :</label>
 		<div class="col-md-7">
 		<input type="password" class="form-control" name="password" value="${user.password}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<input type="submit" class="btn btn-primary" value="Register"/>
 		</div>
	</form>
				
</div>
		</c:when>
		
	
		
<c:when test="${mode=='USER_PROFILE' }">
	<div class="container text-center" id="tasksDiv">
				<h3>User Profile</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Phone</th>
								<th>Address</th>
								<th>Email</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="user" items="${users}">
						<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.phone}</td>
									<td>${user.address}</td>
									<td>${user.email}</td>
									<td><a href="/delete-user?id=${user.id}">Delete</a></td>
									<td><a href="/edit-user?id=${user.id}">Edit</a></td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</c:when>
			
			
				<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				
					<form class="form-horizontal" method="post" action="Insert-user">
 		
 		<input type="hidden" name="id" value="${user.id}" />
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Username :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="username" value="${user.username}"/>
 		</div>
 		</div>	
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">First Name :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="firstname" value="${user.firstname}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Last Name :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="lastname" value="${user.lastname}"/>
 		</div>
 		</div>	
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Phone :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="phone" value="${user.phone}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Address :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="address" value="${user.address}"/>
 		</div>
 		</div>
 
 		<div class="form-group">
 		<label class="control-lable col-md-3">Email :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="email" value="${user.email}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Password :</label>
 		<div class="col-md-7">
 		<input type="password" class="form-control" name="password" value="${user.password}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<input type="submit" class="btn btn-primary" value="Update"/>
 		</div>
	</form>
				
</div>
		</c:when>
			
			<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				
					<form class="form-horizontal" method="post" action="/login-user">
 	<c:if test="${not empty error}">
 	<div class="alert alert-danger">
 	<c:out value="${error}"></c:out>
 	</div> 
 	</c:if>
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Username :</label>
 		<div class="col-md-7">
 		<input type="text" class="form-control" name="username" value="${user.username}"/>
 		</div>
 		</div>	
 		
 		<div class="form-group">
 		<label class="control-lable col-md-3">Password :</label>
 		<div class="col-md-7">
 		<input type="password" class="form-control" name="password" value="${user.password}"/>
 		</div>
 		</div>
 		
 		<div class="form-group">
 		<input type="submit" class="btn btn-primary" value="Login"/>
 		</div>
 			
		</form>
		</div>
		</c:when>
			
			
						
	</c:choose>


	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>