# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.comment-link').on 'click', (event) ->
    event.preventDefault()
    
    postUrl = $(this).data('post-url')
    commentArea = $(this).closest('.thumbnail').find('.comments')

    $.get postUrl, (post) ->
      post.comments.forEach (comment) ->
        commentArea.append("<li>#{comment.content}</li>")

      commentArea.slideDown()


# $(document).ready(function(){
#   $('.comment-link').on('click', function(){
#     var postUrl = $(this).data('post-url');

#     $.get(postUrl, function(post) {
#       post.comments.forEach(function(comment) {
#         console.log(comment.content);
#       })
#     })
#   })
# });