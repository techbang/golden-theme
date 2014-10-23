module Golden::Theme::Bootstrap
  module ModalHelper
    def bootstrap_modal_open_link_to text, url, modal_id, options = {}
      options = {
        remote: true,
        data: {
          toggle: 'modal',
          target: modal_id,
          type: 'html'
        },
        class: 'modal-open'
      }.deep_merge options
      link_to text, url, options
    end

    def bootstrap_modal_open_iconed_link_to text, url, modal_id, options = {}
      options = {
        remote: true,
        data: {
          toggle: 'modal',
          target: modal_id,
          type: 'html'
        },
        class: 'modal-open'
      }.deep_merge options
      bootstrap_iconed_link_to text, url, options
    end

    def bootstrap_modal_edit_link_to url, modal_id, options = {}
      options = {
        remote: true,
        data: {
          toggle: 'modal',
          target: modal_id,
          type: 'html'
        },
        class: 'modal-open btn btn-default'
      }.deep_merge options
      bootstrap_link_to_edit url, options
    end

    def bootstrap_modal_close_button
      options = {
        type: 'button',
        name: nil,
        data: { dismiss: 'modal' },
        class: 'btn btn-default'
      }
      button_tag t('helpers.close'), options
    end

    def bootstrap_modal_close_icon
      options = {
        type: 'button',
        name: nil,
        data: { dismiss: 'modal' },
        class: 'close'
      }
      button_tag '&times;'.html_safe, options
    end
  end
end
