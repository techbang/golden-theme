module Golden::Theme::Bootstrap
  module CommonHelper
    def bootstrap_ul_tag li = [], options = {}
      options, li = li, [] if li.is_a? Hash
      yield li if block_given?
      items = ''.html_safe
      li.each_with_index do |item, index|
        if item.is_a? Array
          item_options = item.pop
          item_content = item.join('').html_safe
        else
          item_options = {}
          item_content = item
        end

        item_class = []
        item_class << 'first' if index == 0
        item_class << 'last' if index == (li.length - 1)
        link = item_content.match(/href=(["'])(.*?)(\1)/)[2] rescue nil
        item_class << 'current active' if link and (current_page?(link) rescue false)
        item_class << item_options.delete(:class) if item_options[:class]

        li_class = item_class.empty? ? nil : item_class.join(' ')
        items << content_tag(:li, item_content, item_options.merge(class: li_class) )
      end
      content_tag :ul, items, options
    end

    def bootstrap_callback_button callback_id, options = {}
      options = {
        data: {
          callback_id: callback_id
        },
        class: 'callback hide'
      }.deep_merge options
      link_to nil, '', options
    end
  end
end
