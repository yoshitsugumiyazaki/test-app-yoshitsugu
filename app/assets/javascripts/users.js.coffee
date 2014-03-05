# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("div#canvas").dblclick (e) ->
    canvas = $(e.target)
    x = e.pageX - canvas.position().left
    y = e.pageY - canvas.position().top
    #canvas.append("<div class='block' style='left: #{x}px; top: #{y}px;' />")
    block = $("<div class='block' style='left: #{x}px; top: #{y}px;' />").draggable(containment: "parent").css(position: "absolute")
    canvas.append(block)