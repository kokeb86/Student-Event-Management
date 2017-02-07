
jQuery(document).ready(function($) {
	$(".like-btn").click(function(event) {
		$('body').css("background-color", "red");
		var button = $("this")[0].closest("button")
		var eventId = button.attr("data-event-id");
		var username = $("#username").text();
		var csrf = '_csrf.token';
		var data = {
			'username' : username,
			'eventId' : eventId,
			'_csrf.parameterName': csrf
		};
		$("this").prop("disabled", true);
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "eventmanagement/event//event/like",
			data : JSON.stringify(data),
			dataType : 'json',
			timeout : 600000,
			success : function(data) {
				$("#btn-update").prop("disabled", false);
			},
			error : function(e) {
				$("#btn-save").prop("disabled", false);
			}
		});
	});

});