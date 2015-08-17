# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', "a[data-target=#defaultModal]", (ev) ->
    ev.preventDefault
    target = $(this).attr("href")

    $("#defaultModal .modal-content").load target, ->
         $("#defaultModal").modal("show")

# $(document).on 'keydown', '#defaultModal', (e) ->
#   if e.keyCode == 37
#     # Left arrow
#     $("#defaultModal").modal("hide")
#     $(document).on "hidden.bs.modal", ->
#       previous_slide(this).click()
#
#   else if e.keyCode == 39
#     # Right arrow
#     $("#defaultModal").modal("hide")
#     $(document).on "hidden.bs.modal", ->
#       next_slide(this).click()
#
# previous_slide = (elem) ->
#   our_src = $("#defaultModal").find("img")[0].src
#   our_elem = $("a img[src='" + our_src + "']").first().parent().parent()
#   if our_elem.prev()
#     our_elem.prev().children().first()
#   else if our_elem.parent().prev()
#     our_elem.parent().prev().children().last().children().first()
#   else
#     our_elem.parent().siblings().last().children().last().children().first()
#
# next_slide = (elem) ->
#   our_src = $("#defaultModal").find("img")[0].src
#   our_elem = $("a img[src='" + our_src + "']").first().parent().parent()
#   if our_elem.next()
#     our_elem.next().children().first()
#   else if our_elem.parent().next()
#     our_elem.parent().next().children().first().children().first().children().first()
#   else
#     our_elem.parent().siblings().first().children().first().children().first()
