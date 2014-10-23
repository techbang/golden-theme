module Golden
  module Theme
    module Helpers
      extend ActiveSupport::Concern

      included do
        hide_action :golden_theme_framework
      end

      def golden_theme_framework name
        set_golden_theme_helpers name
      end

      protected

      def set_golden_theme_helpers framework
        path = Golden::Theme::Engine.root.join 'lib/golden/theme', framework.to_s
        ApplicationController.all_helpers_from_path(path).each do |name|
          self.class.helper "golden/theme/#{framework}/#{name}"
        end
      end
    end
  end
end
