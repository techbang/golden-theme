module Golden::Theme::Foundation
  module TabsHelper
    def foundation_tabs options = {}, &block
      html_class = options.delete :class
      options = {
        class: "tabs #{html_class}".strip,
        data: {
          tab: true
        }
      }.deep_merge options
      foundation_dl_tag options, &block
    end

    def foundation_tab_nav text, tag_id, default
      active = tag_id == default
      dd_class = 'active' if active
      options = {
        data: {
          toggle: 'tab',
          target: "##{tag_id}"
        }
      }
      [ link_to(text, "##{tag_id}", options), { class: dd_class } ]
    end

    def foundation_tab_pane tag_id, default
      active = tag_id == default
      tab_class = 'content'
      tab_class << ' active' if active
      content_tag :div, class: tab_class, id: tag_id do
        yield active if block_given?
      end
    end

    def foundation_remote_tab_nav text, url, tag_id, default
      active = current_page?(url) || tag_id == default
      dd_class = 'active' if active
      options = {
        remote: true,
        data: {
          toggle: 'tab',
          target: "##{tag_id}",
          type: 'html'
        }
      }
      [ link_to(text, url, options), { class: dd_class } ]
    end

    def foundation_remote_tab_pane url, tag_id, default
      active = current_page?(url) || tag_id == default
      tab_class = 'content'
      tab_class << ' active' if active
      content_tag :div, class: tab_class, id: tag_id do
        yield active if block_given?
      end
    end
  end
end
