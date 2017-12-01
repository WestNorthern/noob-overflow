# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.best_in_place').best_in_place()

$(document).on 'turbolinks:load', ->
	$(document).on 'ajax:success', '.answer_delete', ->
		$(this).closest('.answer_wrapper').remove()

	$(document).on 'click', '.chip .close_tag', ->
		tag_text = $(this).parent().clone().children().remove().end().text().trim()
		answer_id = $(this).attr('data-answer-id')
		console.log(answer_id)
		$.ajax
			type: "DELETE"
			url: "/tags"
			data: {id: answer_id, tag_name: tag_text}
