# FontAwesome::Sass

[![Gem Version](https://badge.fury.io/rb/font-awesome-sass.svg)](https://badge.fury.io/rb/font-awesome-sass)

'font-awesome-sass' is a Sass-powered version of [FontAwesome](http://fortawesome.github.io/Font-Awesome/) for your Ruby projects and plays nicely with Ruby on Rails and Sprockets.

Refactored to support more Ruby environments with code and documentation humbly used from the excellent [bootstrap-sass](https://github.com/twbs/bootstrap-sass) project by the Bootstrap team

You can find more detailed information on these changes on our [Getting Started](https://fontawesome.com/get-started/web-fonts-with-css) guide, our [How to Use](https://fontawesome.com/how-to-use/web-fonts-with-css) guide, and our [Upgrading from Version 4](https://fontawesome.com/how-to-use/upgrading-from-4) guide.

## Installation

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Compass](#b-compass-without-rails) not on Rails.

### a. Ruby on Rails

In your Gemfile include:

```ruby
gem 'font-awesome-sass', '~> 6.0.0'
```

And then execute:

```sh
bundle install
```

Import the FontAwesome styles in your `app/assets/stylesheets/application.css.scss`. The `font-awesome-sprockets` file
includes the sprockets assets helper Sass functions used for finding the proper path to the font file.

```scss
@import "font-awesome-sprockets";
@import "font-awesome";
```

If `app/assets/stylesheets/application.css.scss` does not exist then rename `app/assets/stylesheets/application.css` and add the `@import` statements below the `*= require` statements but outside of the comment block.

#### Rails Helper usage

With Font Awesome Free 6.x you now need to select what style of icon you want to use. Font Awesome Free 6.x has 3 styles:

  * solid (`fa-solid`)
  * regular (`fa-regular`)
  * brands (`fa-brands`)

In your view:

```ruby
icon('fa-solid', 'flag')
# => <i class="fa-solid fa-flag"></i>
icon('fas', 'flag')
# => <i class="fas fa-flag"></i>

```

```ruby
icon('fa-regular', 'address-book', class: 'strong')
# => <i class="fa-regular fa-address-book strong"></i>
icon('far', 'address-book', class: 'strong')
# => <i class="far fa-address-book strong"></i>
```

```ruby
icon('fa-brands', 'font-awesome', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fa-brands fa-font-awesome strong"></i> Font Awesome
icon('fab', 'font-awesome', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fab fa-font-awesome strong"></i> Font Awesome
```

Note: the icon helper can take a hash of options that will be passed to the content_tag helper