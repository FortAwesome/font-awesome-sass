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
    
## Upgrading from 3.*

Prepend the `fa` class to existing icons:

    3.* Syntax
    <i class="icon-github"></i>
    
    4.* Syntax
    <i class="fa fa-github"></i>
