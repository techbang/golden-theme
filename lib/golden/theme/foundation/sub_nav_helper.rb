module Golden::Theme::Foundation
  module SubNavHelper
    def foundation_sub_nav options = {}, &block
      html_class = options.delete :class
      options = {
        class: "sub-nav #{html_class}".strip
      }.deep_merge options
      foundation_dl_tag options, &block
    end
  end
end
