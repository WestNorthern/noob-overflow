# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
	$(document).on 'ajax:success', '.delete-comment', ->
		$(this).closest('.comment').remove()
	$(document).on 'click', '.delete-comment', ->
		alert 'yup'