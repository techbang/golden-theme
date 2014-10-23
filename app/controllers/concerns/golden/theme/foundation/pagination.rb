module Golden::Theme::Foundation
  module Pagination
    extend ActiveSupport::Concern

    included do
      before_action :clear_pagination_options
    end

    module ClassMethods
    end

    protected

    def clear_pagination_options
      Golden::Theme::Foundation::LinkRenderer.link_options = nil
    end

    def set_ajax_tab_pagination_render_options tab_name
      Golden::Theme::Foundation::LinkRenderer.link_options = {
        'data-remote' => true,
        'data-type' => :html,
        'data-toggle' => 'tab',
        'data-target' => "##{tab_name}"
      }
    end

    def last_page_collection query
      last_page = query.paginate(page: 1).total_pages
      params[:page] = last_page
      query.paginate page: last_page
    end
  end
end
