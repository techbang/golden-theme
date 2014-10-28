# Golden::Theme

Provide theme helpers for Rails.

## Installation

Add this line to your application's Gemfile:

    gem 'golden-theme'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install golden-theme

## Usage

Add following to `application_controller.rb` with `:bootstrap` or `:foundation`

```
  before_action do
    golden_theme_framework :bootstrap
  end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/golden-theme/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
