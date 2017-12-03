# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$(document).on 'click', '.chip .close_tag', ->
		tag_text = $(this).parent().clone().children().remove().end().text().trim()
		question_id = $(this).attr('data-question-id')
		console.log(tag_text)
		$.ajax
			type: "DELETE"
			url: "/tags"
			data: {id: question_id, tag_name: tag_text, type: "question"}