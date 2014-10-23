module Golden::Theme::Foundation
  module RevealModalHelper
    def foundation_modal_open_link_to text, url, modal_id, options = {}
      html_class = options.delete :class
      options = {
        remote: true,
        data: {
          toggle: 'modal',
          reveal_id: modal_id,
          type: 'html'
        },
        class: "modal-open #{html_class}".strip
      }.deep_merge options
      link_to text, url, options
    end

    def foundation_modal_open_iconed_link_to text, url, modal_id, options = {}
      html_class = options.delete :class
      options = {
        remote: true,
        data: {
          toggle: 'modal',
          reveal_id: modal_id,
          type: 'html'
        },
        class: "modal-open #{html_class}".strip
      }.deep_merge options
      foundation_iconed_link_to text, url, options
    end

    def foundation_modal_edit_link_to url, modal_id, options = {}
      html_class = options.delete :class
      options = {
        remote: true,
        data: {
          toggle: 'modal',
          reveal_id: modal_id,
          type: 'html'
        },
        class: "modal-open button #{html_class}".strip
      }.deep_merge options
      foundation_link_to_edit url, options
    end

    def foundation_modal_close_button options = {}
      html_class = options.delete :class
      options = {
        type: 'button',
        name: nil,
        data: { dismiss: 'modal' },
        class: "modal-close button #{html_class}".strip
      }
      button_tag t('helpers.close'), options
    end

    def foundation_modal_close_icon
      options = {
        class: 'close-reveal-modal'
      }
      link_to '&times;'.html_safe, '#', options
    end
  end
end
