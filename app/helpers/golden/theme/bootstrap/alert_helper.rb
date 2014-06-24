module Golden::Theme::Bootstrap
  module AlertHelper
    def flash_box key, value
      alert_class = case key.to_sym
      when :notice, :alert
        'alert-warning'
      when :error
        'alert-danger'
      else
        "alert-#{key}"
      end
      button_options = {
        type: 'button',
        name: nil,
        class: 'close',
        data: { dismiss: 'alert' },
        'aria-hidden' => 'true'
      }
      content_tag :div, class: "alert #{alert_class} alert-dismissable #{key}" do
        button_tag('&times;'.html_safe, button_options) << value
      end
    end
  end
end
