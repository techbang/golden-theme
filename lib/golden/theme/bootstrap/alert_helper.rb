module Golden::Theme::Bootstrap
  module AlertHelper
    def bootstrap_alert_box key, value
      alert_class = 'alert alert-dismissable'
      alert_class << case key.to_sym
      when :notice, :alert
        " alert-warning #{key}"
      when :error
        " alert-danger #{key}"
      else
        " alert-#{key} #{key}"
      end
      button_options = {
        type: 'button',
        name: nil,
        class: 'close',
        data: { dismiss: 'alert' }
      }
      content_tag :div, class: alert_class do
        concat button_tag('&times;'.html_safe, button_options)
        concat value
      end
    end
  end
end
