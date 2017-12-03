# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.best_in_place').best_in_place()

$(document).on 'turbolinks:load', ->
	$('.post_delete').on 'ajax:success', ->
		$(this).closest('.card-content').remove()

	# $(document).on 'click', '.chip .close_post_tag', ->
	# post_tag_text = $(this).parent().clone().children().remove().end().text().trim()
	# post_id = $(this).attr('data-post-id')
	# console.log(post_tag_text)
	# console.log(post_id)
	# $.ajax
	# 	type: "DELETE"
	# 	url: "/tags"
	# 	data: {id: post_id, tag_name: post_tag_text}

