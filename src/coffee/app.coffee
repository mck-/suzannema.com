$(document).foundation()

# To close off-canvas menu when clicking link
$(".off-canvas-list a").on "click.toggleCanvas", ->
  $(".exit-off-canvas").click()
