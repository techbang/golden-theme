$ ->
  #### namespace ####

  $.modal ||= {}

  #### modal ####
  $.modal.showErrorModal = (status, error, modal = $(this)) ->
    modal.html($('#error-modal').html())
         .find('.modal-header h3').html(status).end()
         .children('.modal-body').html(error || 'No Connection!')

  $.modal.appendFeedback = (modal, data) ->
    $('<div>').addClass('feedback hide').html(data).appendTo(modal)

  $.modal.replaceFeedback = (modal) ->
    modal.html(modal.children('.feedback').html())
    $.modal.enableChosen()

  $.modal.submitForm = (submit_id, modal = $(this)) ->
    modal.find('.feedback').remove().end()
         .modal('hide')
    $.modal.disableOtherSubmit submit_id
    $.modal.enableSingleSubmit submit_id
    $(submit_id).removeAttr('data-toggle').click()
    return true

  $.modal.replaceTable = (table_id, modal = $(this)) ->
    feedback_table = modal.find('.table')
    table = $(table_id).find('.table')
    table.html(feedback_table.html())
    modal.find('.feedback').remove().end()
         .modal('hide')
    table.effect('shake')
    return true

  # $.rails.disableFormElements(form) will disable all disable-with element
  $.modal.disableSingleSubmit = (element_id) ->
    $(element_id).data('modal:enable-with', $(element_id).val())
    $(element_id).val($(element_id).data('disable-with'))
    $(element_id).prop('disabled', true)

  # $.rails.enableFormElements(form) will enable all disable-with element
  $.modal.enableSingleSubmit = (element_id) ->
    if $(element_id).data('modal:enable-with')
      $(element_id).val($(element_id).data('modal:enable-with'))
    $(element_id).prop('disabled', false)

  # disable other submit buttons other than the specified one
  $.modal.disableOtherSubmit = (submit_id) ->
    submit_button = $(submit_id)
    submit_button.parents('form').find($.rails.disableSelector).each () ->
      if submit_button.val() != $(this).val()
        $(this).prop('disabled', true)
        $(this).removeAttr('data-disable-with')

  $.modal.enableChosen = () ->
    $('.chosen-select').chosen
      allow_single_deselect: true
      no_results_text: 'No results matched'
      width: '100%'
