module Golden::Theme::Foundation
  module LinkHelper
    def foundation_iconed_link_to text, url, options = {}
      icon_class = options.delete :icon_class
      text = content_tag(:i, nil, class: icon_class) << ' ' << text
      link_to text, url, options
    end

    def foundation_link_to_show url, options = {}
      icon_class = options.delete(:icon_class) || 'fi-eye'
      options = {
        role: 'button',
        class: 'button tiny',
        icon_class: icon_class,
        title: t('helpers.show')
      }.deep_merge options
      default_options = {  }
      foundation_iconed_link_to nil, url, options
    end

    def foundation_link_to_new url, options = {}
      icon_class = options.delete(:icon_class) || 'fi-plus'
      options = {
        role: 'button',
        class: 'button tiny',
        icon_class: icon_class,
        title: t('helpers.new')
      }.deep_merge options
      foundation_iconed_link_to nil, url, options
    end

    def foundation_link_to_edit url, options = {}
      icon_class = options.delete(:icon_class) || 'fi-pencil'
      options = {
        role: 'button',
        class: 'button tiny',
        icon_class: icon_class,
        title: t('helpers.edit')
      }.deep_merge options
      foundation_iconed_link_to nil, url, options
    end

    def foundation_link_to_destroy url, options = {}
      icon_class = options.delete(:icon_class) || 'fi-trash'
      options = {
        method: :delete,
        data: { confirm: t('helpers.are_you_sure') },
        role: 'button',
        class: 'button tiny',
        icon_class: icon_class,
        title: t('helpers.destroy')
      }.deep_merge options
      foundation_iconed_link_to nil, url, options
    end
  end
end
