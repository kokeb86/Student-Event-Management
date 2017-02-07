<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Side Bar-->
	<div class="col-sm-4 col-sm-pull-8">
		<!-- Search -->
		<div class="well">
			<h4 class="margin-t-0">Search</h4>
			<form action="#">
				<div class="input-group">
					<label class="sr-only" for="search-form">Search the site</label> <input
						type="text" class="form-control" id="search-form"> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span> <span
								class="sr-only">Search</span>
						</button>
					</span>
				</div>
			</form>
		</div>

		<!-- list group -->
		<div class="list-group margin-b-3">
			<a href="#" class="active list-group-item">Recently Happening
				Events</a> <a href="#" class="list-group-item">Newly Added Events</a> <a
				href="#" class="list-group-item">Join Event Requests</a> <a href="#"
				class="list-group-item">New Event Requests</a> <a href="#"
				class="list-group-item">Joined Events</a>
		</div>
		<jsp:include page="${request.contextPath}/topNews"></jsp:include>

	</div>
</body>
</html>