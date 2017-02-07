<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<security:csrfMetaTags />
<title>Log in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href='<spring:url value="/resources/css/loginStyle.css"/>' />
</head>
<body>
	<div class="wrapper">
		<form method="POST" class="form-signin">
			<h2 class="form-signin-heading">To reset your account Please
				submit the following Security check</h2>
			<div
				class="form-group ${error != null ? 'has-error alert alert-danger' : ''}">
				<span>${message}</span> <span>${error}</span>
			</div>
			<input type="text" class="form-control" name="fullName"
				placeholder="Full Name" autofocus="autofocus" /> <input type="text"
				class="form-control" name="username" placeholder="Email Address"
				autofocus="autofocus" />

			<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>

		</form>
	</div>


</body>
</html>