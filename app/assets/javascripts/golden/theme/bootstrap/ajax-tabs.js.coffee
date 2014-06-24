$ ->
  $('.nav-tabs-ajax')
    .on 'ajax:beforeSend', 'a[data-toggle="tab"]', ->
      $.bench.util.replaceDataTarget $(this), 'Loading...'
    .on 'ajax:success', 'a[data-toggle="tab"]', (event, data, status, xhr) ->
      $.bench.util.replaceDataTarget $(this), data
      $.bench.util.enableChosen()
    .on 'ajax:error', 'a[data-toggle="tab"]', (event, xhr, status, error) ->
      if error == 'Unauthorized' or xhr.status == 401
        $.bench.util.replaceDataTarget $(this), ''
        $.bench.util.redirect_to_unauthorized_url
      else
        $.bench.util.replaceDataTarget $(this), status

  $('.tab-content')
    .on 'ajax:success', '.pagination a[data-toggle="tab"]', (event, data, status, xhr) ->
      $.bench.util.replaceDataTarget $(this), data
    .on 'ajax:error', '.pagination a[data-toggle="tab"]', (event, xhr, status, error) ->
      if error == 'Unauthorized' or xhr.status == 401
        $.bench.util.replaceDataTarget $(this), ''
        $.bench.util.redirect_to_unauthorized_url
      else
        $.bench.util.replaceDataTarget $(this), status

  $('.tab-pane')
    .on 'ajax:success', '.simple_form', (event, data, status, xhr) ->
      tab_pane = $(this).parent()
      $.bench.util.appendFeedback(tab_pane, data)
      if $.bench.util.hasErrorFeedback(tab_pane)
        $.bench.util.replaceFeedback(tab_pane)
        $.bench.util.enableChosen()
        return true
      tab_pane.html(data)
      $.bench.util.enableChosen()
      tab_pane.effect('highlight', 'slow')
    .on 'ajax:error', '.simple_form', (event, xhr, status, error) ->
      tab_pane = $(this).parent()
      if error == 'Unauthorized' or xhr.status == 401
        tab_pane.html('')
        $.bench.util.redirect_to_unauthorized_url
      else
        tab_pane.html(status)
