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

			<div class="row">
				<div class="col-sm-8 col-sm-push-4">
					<div class="page-header">
						<h1>Blog post title</h1>
						<p>
							Posted by <span class="glyphicon glyphicon-user"></span> <a
								href="#">Matthijs Jansen</a> on <span
								class="glyphicon glyphicon-time"></span> 12 January 2015 10:00
							am
						</p>
					</div>
				</div>
			</div>
			<!-- /.row -->

			<div class="row">
				<!--Content-->
				<div class="col-sm-8 col-sm-push-4">

					<!-- Image -->
					<figure class="margin-b-2">
						<img class="img-responsive" src="http://placehold.it/900x400"
							alt="">
						<figcaption class="margin-t-h">Caption here</figcaption>
					</figure>

					<p class="lead">Lorem ipsum dolor sit amet consect etuer adipi
						scing elit sed diam nonummy nibh euismod tinunt ut laoreet dolore
						magna aliquam erat volut. Ut wisi enim ad minim veniam, quis
						nostrud exerci tation ullamcorper.</p>
					<p>Vivamus risus ex, varius et libero quis, placerat rhoncus
						mi. Aenean sit amet aliquam nibh. Aliquam tortor est, consequat
						vitae libero at, vehicula mattis tellus. In condimentum consequat
						tempor. Nullam at lorem semper, ultricies mi et, mollis turpis.
						Mauris ut leo ac magna dapibus luctus. Mauris mi nibh, ornare et
						ipsum vel, finibus molestie nulla. Nunc eleifend leo eget ipsum
						pellentesque, vel varius ipsum placerat. Mauris tincidunt sapien
						et efficitur commodo. Vestibulum ante ipsum primis in faucibus
						orci luctus et ultrices posuere cubilia Curae; Donec at
						pellentesque arcu. Pellentesque justo enim, porttitor a arcu non,
						mollis venenatis felis.</p>
					<p>Praesent viverra pellentesque enim, vitae porta erat
						elementum quis. Maecenas posuere mattis velit rutrum iaculis. Duis
						non efficitur nibh. Aliquam laoreet risus a nulla auctor interdum.
						Ut cursus leo eu justo laoreet porttitor. Pellentesque habitant
						morbi tristique senectus et netus et malesuada fames ac turpis
						egestas. Suspendisse vitae nisi dictum, vulputate odio sed,
						blandit tortor. Fusce eu turpis ut mi porta bibendum nec eu
						libero.</p>
					<p>Praesent libero sem, feugiat dapibus mattis et, vehicula eu
						turpis. In vitae consequat leo, quis venenatis justo. Fusce auctor
						bibendum aliquet. Nullam eu mi lectus. Maecenas risus mauris,
						feugiat nec ullamcorper non, efficitur et elit. Sed porta tellus
						ut aliquam auctor. Vivamus id lectus sed tellus cursus sodales sit
						amet a velit.</p>
					<p>Quisque eu aliquam leo. Sed feugiat nulla massa, a faucibus
						nulla sagittis eget. Donec ullamcorper tincidunt risus et
						pharetra. Vivamus tristique dui metus, vitae gravida nisl volutpat
						eu. Vivamus dapibus leo sit amet metus luctus dapibus. Vivamus
						sodales tempor elit, at pellentesque elit eleifend sit amet.
						Aliquam erat volutpat.</p>
					<hr>

					<!-- Comments -->
					<h3>Comments</h3>
					<div class="well">
						<div class="media">
							<div class="media-left">
								<img src="http://placehold.it/70x70" alt="">
							</div>
							<div class="media-body">
								<h4 class="margin-t-0">
									<a href="#">Mayahuel Rodriguez</a>
								</h4>
								<p>
									<a href="#">12 January 2015 11:13 pm</a>
								</p>
								<p>Lorem ipsum dolor sit amet consect etuer adipi scing elit
									sed diam nonummy nibh euismod tinunt ut laoreet dolore magna
									aliquam erat volut</p>
								<p>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-thumbs-up"></span> Upvote
									</button>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-thumbs-down"></span> Downvote
									</button>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-comment"></span> Reply
									</button>
								</p>
							</div>
						</div>
					</div>

					<div class="well">
						<div class="media">
							<div class="media-left">
								<img src="http://placehold.it/70x70" alt="">
							</div>
							<div class="media-body">
								<h4 class="margin-t-0">
									<a href="#">Mayahuel Rodriguez</a>
								</h4>
								<p>
									<a href="#">12 January 2015 11:13 pm</a>
								</p>
								<p>Lorem ipsum dolor sit amet consect etuer adipi scing elit
									sed diam nonummy nibh euismod tinunt ut laoreet dolore magna
									aliquam erat volut</p>
								<p>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-thumbs-up"></span> Upvote
									</button>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-thumbs-down"></span> Downvote
									</button>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-comment"></span> Reply
									</button>
								</p>
							</div>
						</div>
					</div>

					<div class="well">
						<div class="media">
							<div class="media-left">
								<img src="http://placehold.it/70x70" alt="">
							</div>
							<div class="media-body">
								<h4 class="margin-t-0">
									<a href="#">Mayahuel Rodriguez</a>
								</h4>
								<p>
									<a href="#">12 January 2015 11:13 pm</a>
								</p>
								<p>Lorem ipsum dolor sit amet consect etuer adipi scing elit
									sed diam nonummy nibh euismod tinunt ut laoreet dolore magna
									aliquam erat volut</p>
								<p>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-thumbs-up"></span> Upvote
									</button>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-thumbs-down"></span> Downvote
									</button>
									<button class="btn btn-sm btn-default">
										<span class="glyphicon glyphicon-comment"></span> Reply
									</button>
								</p>
							</div>
						</div>
					</div>
					<hr>

					<!-- Comment form -->
					<h3>Leave a comment</h3>
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

					<!-- Pager -->
					<nav>
						<ul class="pager">
							<li class="previous"><a href="#"><span
									class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
									Older</a></li>
							<li class="next"><a href="#">Newer <span
									class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></li>
						</ul>
					</nav>

				</div>



				<!-- Side Bar-->
				<div class="col-sm-4 col-sm-pull-8">
					<!-- Search -->
					<div class="well">
						<h4 class="margin-t-0">Search</h4>
						<form action="#">
							<div class="input-group">
								<label class="sr-only" for="search-form">Search the site</label>
								<input type="text" class="form-control" id="search-form">
								<span class="input-group-btn">
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
						<a href="#" class="active list-group-item">Category 1</a> <a
							href="#" class="list-group-item">Category 2</a> <a href="#"
							class="list-group-item">Category 3</a>
					</div>

					<!-- Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">Sidebar panel widget</h4>
						</div>
						<div class="panel-body">
							<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
								ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
								consequat.</p>
						</div>
					</div>

					<!-- Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">Sidebar panel widget</h4>
						</div>
						<div class="panel-body">
							<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
								ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
								consequat.</p>
						</div>
					</div>

				</div>

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