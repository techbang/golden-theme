module Golden::Theme::Bootstrap
  module ButtonHelper
    def bootstrap_btn_group tag = :div, options = {}
      buttons = []
      yield buttons if block_given?
      text = buttons.join('').html_safe
      options = {
        class: 'btn-group'
      }.deep_merge options
      content_tag tag, text, options
    end
  end
end
