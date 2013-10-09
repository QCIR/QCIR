$(document).ready ->
  $('form').on('submit', click(e)) ->
    event.preventDefault()
    console.log($(@).serialize())
    $.ajax
      url: "sendComment"
      type: "post"
      data: b: comment[body]; 

