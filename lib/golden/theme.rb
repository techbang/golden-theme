require 'golden/theme/version'

require 'bootstrap-sass'

require 'foundation-rails'
require 'foundation-icons-sass-rails'

require 'compass-rails'
require 'jquery-ui-rails'
require 'chosen-rails'
require 'will_paginate'
require 'will_paginate/array'

module Golden
  module Theme
  end
end

require 'golden/theme/helpers'
require 'golden/theme/engine'

require 'golden/theme/bootstrap/link_renderer'
require 'golden/theme/foundation/link_renderer'
