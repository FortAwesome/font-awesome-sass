# Font::Awesome::Sass

Font-Awesome SASS gem for use in Ruby/Rails projects

## Installation

Add this line to your application's Gemfile:

    gem 'font-awesome-sass'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install font-awesome-sass

If you use Rails/Sprockets, add this to e.g. application.css.scss:

    *= require font-awesome

## Helper usage

In your view:

```ruby
icon('flag')
# => <i class="fa fa-flag"></i>

icon('flag', 'Font Awesome')
# => <i class="fa fa-flag"></i> Font Awesome
```