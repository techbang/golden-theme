module Golden::Theme::Foundation
  module DropdownsHelper
    def foundation_dropdown_button text, options = {}
      text = text.html_safe
      target = options.delete :target
      options = {
        data: {
          dropdown: target
        }
      }.deep_merge options
      content_tag :button, text, options
    end

    def foundation_dropdown_link_to text, url = '#', options = {}
      text = text.html_safe
      target = options.delete :target
      options = {
        data: {
          dropdown: target
        }
      }.deep_merge options
      link_to text, url, options
    end

    def foundation_dropdown_ul_tag options = {}, &block
      html_class = options.delete :class
      options = {
        class: "f-dropdown #{html_class}".strip,
        data: {
          dropdown_content: true
        }
      }.deep_merge options
      foundation_ul_tag options, &block
    end

    def foundation_dropdown_content options = {}, &block
      html_class = options.delete :class
      options = {
        class: "f-dropdown content #{html_class}".strip,
        data: {
          dropdown_content: true
        }
      }.deep_merge options
      content_tag :div, options, &block
    end
  end
end
