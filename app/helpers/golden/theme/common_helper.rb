module Golden::Theme
  module CommonHelper
    def yes_or_no value
      value ? t('helpers.yes') : t('helpers.no')
    end

    def yes_or_no_or_na value
      return t('helpers.not_available') if value.nil?
      yes_or_no value
    end

    def value_or_na value
      return t('helpers.not_available') if value.blank?
      value
    end
  end
end
