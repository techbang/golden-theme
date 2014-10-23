module Golden::Theme::Bootstrap
  module TabHelper
    def bootstrap_tab_link_to text, tab_pane_id, options = {}
      options = {
        data: {
          toggle: 'tab',
          target: tab_pane_id
        }
      }.deep_merge options
      link_to text, tab_pane_id, options
    end

    def bootstrap_tab_nav text, tag_id, default
      active = tag_id == default
      li_class = 'active' if active
      [ bootstrap_tab_link_to(text, "##{tag_id}"), { class: li_class } ]
    end

    def bootstrap_tab_pane tag_id, default
      active = tag_id == default
      tab_class = 'tab-pane fade'
      tab_class << ' active in' if active
      content_tag :div, class: tab_class, id: tag_id do
        yield active if block_given?
      end
    end

    def bootstrap_remote_tab_link_to text, url, tab_pane_id, options = {}
      options = {
        remote: true,
        data: {
          toggle: 'tab',
          target: tab_pane_id,
          type: 'html'
        }
      }.deep_merge options
      link_to text, url, options
    end

    def bootstrap_remote_tab_nav text, url, tag_id, default
      active = current_page?(url) || tag_id == default
      li_class = 'active' if active
      [ bootstrap_remote_tab_link_to(text, url, "##{tag_id}"), { class: li_class } ]
    end

    def bootstrap_remote_tab_pane url, tag_id, default
      active = current_page?(url) || tag_id == default
      tab_class = 'tab-pane fade'
      tab_class << ' active in' if active
      content_tag :div, class: tab_class, id: tag_id do
        yield active if block_given?
      end
    end
  end
end
