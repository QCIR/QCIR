$ ->
  $('.submitComment').click ->
    $(@).preventDefault()
    alert('Lucas belo')
    $.ajax
      type: 'POST'
      url: '/comments'
      method: 'create'
      data: tutorial: {title: 'Lucas', body: 'Lucas lindo'}
      # data: title:  comment_title, body: comment_body, tutorial: tutorial_id;
      success: (data) ->
        console.log('ok')
      error: (data) ->
        console.log('erro')  