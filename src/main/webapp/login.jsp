<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login Page</title>
<jsp:include page="component/navbar.jsp"></jsp:include>
<jsp:include page="component/all_css.jsp"></jsp:include>
<style type="text/css">
	.card-sh{
		box-shadow:0 0 6px 0 rgba(0, 0, 0, 0.3);
	}
</style>
</head>
<body class="bg-light">
<div class="container p-5">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="card card-sh">
				<div class="card-header">
					<p class="text-center fs-3">Login Page</p>
					<c:if test="${not empty msg }">
					<p class="text-center text-danger fs-4">${msg}</p>
					<c:remove var="msg"/>
					</c:if>
				</div>
				
				<div class="card-body">
					<form action="login" method="post" >
						
						<div class="mb-3">
							<label>Email</label>
							<input type="email" name="email" class="form-control" required />
						</div>
						<div class="mb-3">
							<label>Password</label>
							<input type="password" name="password" class="form-control" required />
						</div>
						
						<button class="btn btn-success col-md-12">Login</button>
						<div class="text-center"> Don't Have Account? <a href="register.jsp" class="text-decoration-none">Create One</a></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>