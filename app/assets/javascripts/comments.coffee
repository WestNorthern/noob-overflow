# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
	$('.delete-comment').on 'ajax:success', ->
		$(this).closest('.comment').remove()