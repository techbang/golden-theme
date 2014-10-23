module Golden
  module Theme
    class Engine < ::Rails::Engine
      config.after_initialize do
        ActionController::Base.include Golden::Theme::Helpers
      end
    end
  end
end
