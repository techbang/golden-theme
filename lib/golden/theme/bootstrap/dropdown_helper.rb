module Golden::Theme::Bootstrap
  module DropdownHelper
    def bootstrap_dropdown_toggle text, url = '', options = {}
      text = text.html_safe << ' '
      text << content_tag(:span, nil, class: 'caret')
      options = {
        class: 'dropdown-toggle',
        data: { toggle: 'dropdown' }
      }.deep_merge options
      link_to text, url, options
    end

    def bootstrap_dropdown_btn text, options = {}
      text = text.html_safe << ' '
      text << content_tag(:span, nil, class: 'caret')
      options = {
        name: nil,
        type: 'button',
        class: 'btn dropdown-toggle',
        data: { toggle: 'dropdown' }
      }.deep_merge options
      button_tag text, options
    end

    def bootstrap_dropdown_menu options = {}, &block
      options = {
        role: 'menu',
        class: 'dropdown-menu'
      }.deep_merge options
      bootstrap_ul_tag options, &block
    end
  end
end
