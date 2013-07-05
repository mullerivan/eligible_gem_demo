jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('.toggle-button').click ->
    if $('.toggle-area').hasClass('on')
      $(".toggle-area").addClass('off')
      $(".toggle-area").removeClass('on')
      $('.checkbox').val false
    else
      $(".toggle-area").addClass('on')
      $(".toggle-area").removeClass('off')
      $('.checkbox').val true
