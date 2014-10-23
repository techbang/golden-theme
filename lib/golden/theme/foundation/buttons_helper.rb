module Golden::Theme::Foundation
  module ButtonsHelper
    def foundation_button_group options = {}, &block
      html_class = options.delete :class
      options = {
        class: "button-group #{html_class}".strip
      }.deep_merge options
      foundation_ul_tag options, &block
    end
  end
end
