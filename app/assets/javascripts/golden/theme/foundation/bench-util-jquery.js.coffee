$ ->
  #### namespace ####

  $.bench ||= {}
  $.bench.util ||= {}


  #### util ####

  $.bench.util.clearSelectOptions = (subject, disabled = true) ->
    blank_option = $('<option>').attr('value', '')
    if disabled
      subject.prop('disabled', true)
    subject.empty().append(blank_option)

  $.bench.util.appendSelectOptions = (subject, choices, disabled = false) ->
    return unless choices
    $.each choices, (i, hash) ->
      option = $('<option>').attr('value', hash['id']).text(hash['name'])
      subject.append option
    if !disabled
      subject.prop('disabled', false)
    subject.focus().children().first().text('')

  $.bench.util.appendFeedback = (container, data) ->
    if container.find('.feedback').size() < 1
      $('<div>').addClass('feedback hide').html(data).appendTo(container)

  $.bench.util.replaceFeedback = (container) ->
    content = container.children('.feedback').html()
    container.html(content)

  $.bench.util.hasErrorFeedback = (container) ->
    container.find('.feedback .alert-box warning').size() > 0

  $.bench.util.replaceDataTarget = (subject, data) ->
    target = $(subject.attr('data-target'))
    target.html(data)

  $.bench.util.enableChosen = () ->
    $('.chosen-select, .ajax-chosen-select').chosen
      allow_single_deselect: true
      no_results_text: 'No results matched'
      width: '100%'

  $.bench.util.redirect_to_unauthorized_url = () ->
    url = $('#unauthorized_sign_out_url').prop('href')
    window.location.replace(url)
