module Golden::Theme::Foundation
  module TopBarHelper
    def foundation_top_bar_dropdown_link_to text, url = '', options = {}
      text = text.html_safe
      link_to text, url, options
    end

    def foundation_top_bar_dropdown_ul_tag options = {}, &block
      html_class = options.delete :class
      options = {
        class: "dropdown #{html_class}".strip
      }.deep_merge options
      foundation_ul_tag options, &block
    end
  end
end
