module Golden::Theme::Foundation
  module AlertsHelper
    def foundation_alert_box key, value
      alert_class = 'alert-box radius'
      alert_class << case key.to_sym
      when :notice, :alert
        " warning #{key}"
      when :error
        " alert #{key}"
      else
        " #{key}"
      end
      content_tag :div, class: alert_class, data: { alert: true } do
        concat value
        concat link_to('&times;'.html_safe, '#', class: 'close')
      end
    end
  end
end
