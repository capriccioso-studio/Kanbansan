var ROOT_URL = "http://localhost:8080/SoaBaseCode/";

$(document).ready(function() {
	loadUserForm();
});


function bindUserFormEvents() {
	
	$('#save-btn').click(function(){
		$.ajax({
			url: ROOT_URL + 'api/saveUser',
			type: "post",
			data: {user_id: $("#user_id").val()
					, firstName: $("#firstName").val()
					, lastName: $('#lastName').val()
					, email: $('#email').val()
					, password: $('#password').val()},
					 success: function() {
						 $.ajax({
								url: ROOT_URL,
								type: "GET"})
						 }
				
		});
	});
	
	
	
	$('#lnk_home').click(function(){
		$('#lnk_home').addClass("active");
		$('#lnk_profile').removeClass("active");
		$('#lnk_messages').removeClass("active");
	});
	
	$('#lnk_profile').click(function(){
		$('#lnk_home').removeClass("active");
		$('#lnk_profile').addClass("active");
		$('#lnk_messages').removeClass("active");
		
		$.ajax({
			url: ROOT_URL + 'modulename/profile',
			type: "get",
			dataType: "text",

		})
	});
	
	

	
	$('#search-btn').click(function(){
		if($("#uid").val().trim() != '') {
			$.ajax({
				url: ROOT_URL + 'api/searchUser/'+ $("#uid").val(),
				type: "get"
			}).done(function(data) {
				if (data.fname) {
					$('#search_result').empty();
					$('#search_result').append("<li class='list-group-item'>" + data.fname + " " + data.lname + "</li>");
				} else {
					$('#alert-area').removeClass('alert-success');
					$('#alert-area').removeClass('alert-danger');
					$('#alert-area').addClass('alert-danger');
					$('#alert-area').html("Cannot find user.");
				}
			});
		}
	});
	
	$('#search-all-btn').click(function(){
		$.ajax({
			url: ROOT_URL + 'api/searchAllUsers',
			type: "get"
		}).done(function(data) {
			$('#search_result').empty();
			data.forEach(function(user){
				$('#search_result').append("<li class='list-group-item'>" + user.fname + " " + user.lname + "</li>");
			});
		});
	});
	
	$('#btn-male').click(function(){
		$('#btn-female').removeClass('active');
	});
	
	$('#btn-female').click(function(){
		$('#btn-male').removeClass('active');
	});
	
	$("#age").keypress(function (e) {
		if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
			//display error message
			$("#age-err-msg").html("Numbers only.").show().fadeOut(1800);
			return false;
		}
	});
}