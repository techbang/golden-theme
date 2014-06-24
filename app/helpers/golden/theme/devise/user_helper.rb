module Golden::Theme::Devise
  module UserHelper
    def link_to_user_sign_up
      text ||= t('.sign_up')
      link_to text, main_app.new_user_registration_path
    end

    def link_to_user_sign_in text = nil
      text ||= t('.sign_in')
      link_to text, main_app.new_user_session_path
    end

    def link_to_user_sign_out
      text = t('.sign_out')
      link_to text, main_app.destroy_user_session_path, method: :delete
    end

    def link_to_edit_user_profile
      text = t('.edit_profile')
      link_to text, main_app.edit_user_registration_path
    end
  end
end
