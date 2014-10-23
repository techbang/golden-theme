module Golden::Theme::Bootstrap
  module DeprecatedHelper
    def flash_box *args, &block
      bootstrap_flash_box *args, &block
    end

    def render_btn_group *args, &block
      bootstrap_btn_group *args, &block
    end

    def render_list *args, &block
      bootstrap_ul_tag *args, &block
    end

    def link_to_callback_button *args, &block
      bootstrap_callback_button *args, &block
    end

    def dropdown_toggle *args, &block
      bootstrap_dropdown_toggle *args, &block
    end

    def dropdown_btn *args, &block
      bootstrap_dropdown_btn *args, &block
    end

    def dropdown_menu *args, &block
      bootstrap_dropdown_menu *args, &block
    end

    def iconed_link_to *args, &block
      bootstrap_iconed_link_to *args, &block
    end

    def link_to_show *args, &block
      bootstrap_link_to_show *args, &block
    end

    def link_to_new *args, &block
      bootstrap_link_to_new *args, &block
    end

    def link_to_edit *args, &block
      bootstrap_link_to_edit *args, &block
    end

    def link_to_destroy *args, &block
      bootstrap_link_to_destroy *args, &block
    end

    def link_to_modal *args, &block
      bootstrap_modal_open_link_to *args, &block
    end

    def link_to_open_modal *args, &block
      bootstrap_modal_open_iconed_link_to *args, &block
    end

    def link_to_edit_modal *args, &block
      bootstrap_modal_edit_link_to *args, &block
    end

    def link_to_close_button *args, &block
      bootstrap_modal_close_button *args, &block
    end

    def modal_close_button *args, &block
      bootstrap_modal_close_icon *args, &block
    end

    def link_to_tab *args, &block
      bootstrap_tab_link_to *args, &block
    end

    def nav_tab *args, &block
      bootstrap_tab_nav *args, &block
    end

    def tab_pane *args, &block
      bootstrap_tab_pane *args, &block
    end

    def link_to_remote_tab *args, &block
      bootstrap_remote_tab_link_to *args, &block
    end

    def remote_nav_tab *args, &block
      bootstrap_remote_tab_nav *args, &block
    end

    def remote_tab_pane *args, &block
      bootstrap_remote_tab_pane *args, &block
    end
  end
end
