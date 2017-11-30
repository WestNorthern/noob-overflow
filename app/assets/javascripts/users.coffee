# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load',->	
	$('#new_username').on 'keyup', ->
		username_search = $(this).val()
		$.ajax 
		  url: '/check_username',
		  type: 'POST',
		  data: {username: username_search},
		  dataType: 'json'
		  success: response = (data) ->
		  	if data.icon == 'ERROR'
		  		$('#username_fail').show()
		  		$('#username_win').hide()
		  	else if username_search == ""
  				$('#username_fail').hide()
  				$('#username_win').hide()
		  	else
		  		$('#username_fail').hide()
		  		$('#username_win').show()
	$('#new_email').on 'keyup', ->
		email_search = $(this).val()
		$.ajax 
		  url: '/check_email',
		  type: 'POST',
		  data: {email: email_search},
		  dataType: 'json'
		  success: response = (data) ->
		  	if data.icon == 'ERROR'
		  		$('#email_fail').show()
		  		$('#email_win').hide()
		  	else if email_search == ""
  				$('#email_fail').hide()
  				$('#email_win').hide()
		  	else
		  		$('#email_fail').hide()
		  		$('#email_win').show()