<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Event Handlers">
<meta name="robots" content="index, follow">

<!-- icons -->
<link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png">
<link rel="shortcut icon" href="/resources/favicon.ico">

<!-- Bootstrap Core CSS file -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<!-- Override CSS file - add your own CSS rules -->
<link rel="stylesheet" href="/resources/assets/css/styles.css">

<!-- Conditional comment containing JS files for IE6 - 8 -->
<!--[if lt IE 9]>
			<script src="assets/js/html5.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

<title>Home</title>
</head>
<body>
	<tiles:insertDefinition name="defaultTemplate">
		<tiles:putAttribute name="body">

			<!-- /.row -->
			<div class="row">
				<!--Content-->
				<div class="col-sm-8 col-sm-push-4">
					<h3>Add New Event</h3>
					<p>Please keep in mind that comments are moderated and
						rel="nofollow" is in use. So, please do not use a spammy keyword
						or a domain as your name, or else it will be deleted. Thank you!</p>

					<div class="well">
						<form>
							<div class="form-group">
								<label for="contactName">Name</label> <input type="email"
									class="form-control" id="contactName"
									placeholder="Enter your name">
							</div>
							<div class="form-group">
								<label for="contactEmail">Email</label> <input type="email"
									class="form-control" id="contactEmail"
									placeholder="Enter email">
								<p class="help-block">Make sure you use a valid email
									address</p>
							</div>
							<div class="form-group">
								<label for="contactComment">Comment</label>
								<textarea class="form-control" id="contactComment"></textarea>
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
					</div>
					<hr>


				</div>

				<jsp:include page="${request.contextPath}/sidebar"></jsp:include>

			</div>
			<!-- /.row -->

		</tiles:putAttribute>
	</tiles:insertDefinition>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<!-- Bootstrap Core scripts -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

</body>
</html>
