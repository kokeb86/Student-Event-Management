<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<header class="masthead">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>
					<a href="#" title="scroll down for your viewing pleasure">Events
						Are Fun!</a>
					<p class="lead"></p>
				</h1>
			</div>
			<div class="col-sm-6">
				<div class="pull-right hidden-sm">
					<h2>
						<a href="#"><i class="glyphicon glyphicon-user"></i></a>
					</h2>
					<h3><a href = "#"><span id = "username">${pageContext.request.userPrincipal.name}</span></a></h3>
				</div>
			</div>
		</div>
	</div>
</header>


<!-- Begin Navbar -->
<div id="nav">
	<div class="navbar navbar-default navbar-static">
		<div class="container">
			<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
			<a class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse"> <span
				class="glyphicon glyphicon-bar"></span> <span
				class="glyphicon glyphicon-bar"></span> <span
				class="glyphicon glyphicon-bar"></span>
			</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="divider"></li>
					<li><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
				</ul>
				<ul class="nav pull-right navbar-nav">
					<li>
						<form class="navbar-form">
							<input type="text" class="form-control" placeholder="Search">
							<button type="submit" class="btn btn-default">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</form>
					</li>
					<li><a href="#"><i class="glyphicon glyphicon-flag"></i> <span
							class="badge">2</span></a></li>
					<li>
						<form style="display: inline"
							action='<spring:url value="/logout"/>' method="post">
							<input style="display: inline" type="submit" value="Logout" /> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /.navbar -->
</div>


