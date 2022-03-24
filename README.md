# FontAwesome::Sass

[![Gem Version](https://badge.fury.io/rb/font-awesome-sass.svg)](https://badge.fury.io/rb/font-awesome-sass)

'font-awesome-sass' is a Sass-powered version of [Font Awesome](http://fontawesome.com/) for your Ruby projects with specific support for Ruby on Rails and Sprockets.

Refactored to support more Ruby environments with code and documentation humbly used from the excellent [bootstrap-sass](https://github.com/twbs/bootstrap-sass) project by the Bootstrap team

You can find more detailed information on these changes on our [Getting Started](https://fontawesome.com/docs/web/setup/get-started) guide, our [How to Use](https://fontawesome.com/docs/web/) guide, and our [Upgrade](https://fontawesome.com/docs/web/setup/upgrade/) guide.

## Installation

### Ruby on Rails

In your Gemfile include:

```ruby
gem 'font-awesome-sass', '~> 6.1.1'
```

And then execute:

```sh
bundle install
```

Import the FontAwesome styles in your `app/assets/stylesheets/application.css.scss`. The `font-awesome` file includes all the tools needed to get Font Awesome up and running for Rails.

```scss
@import "font-awesome";
```

If `app/assets/stylesheets/application.css.scss` does not exist then rename `app/assets/stylesheets/application.css` and add the `@import` statements below the `*= require` statements but outside of the comment block.

#### Rails Helper usage

With Font Awesome Free 6.x you now need to select what style of icon you want to use. Font Awesome Free 6.x has 3 styles:

  * solid (`fa-solid` or `fas`)
  * regular (`fa-regular` or `far`)
  * brands (`fa-brands` or `fab`)

In your view:

```ruby
icon('fa-solid', 'flag')
# => <i class="fa-solid fa-flag" aria-hidden="true"></i>
icon('fas', 'flag')
# => <i class="fas fa-flag" aria-hidden="true"></i>

```

```ruby
icon('fa-regular', 'address-book', class: 'strong')
# => <i class="fa-regular fa-address-book strong" aria-hidden="true"></i>
icon('far', 'address-book', class: 'strong')
# => <i class="far fa-address-book strong" aria-hidden="true"></i>
```

```ruby
icon('fa-brands', 'font-awesome', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fa-brands fa-font-awesome strong" aria-hidden="true"></i> Font Awesome
icon('fab', 'font-awesome', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fab fa-font-awesome strong" aria-hidden="true"></i> Font Awesome
```

Note: the icon helper can take a hash of options that will be passed to the content_tag helper

### Other Ruby Projects

The `path.scss` file contains a function for using the `font-path` function if found. If the function is not found it will use the `$fa-font-path` variable for the path to the webfont files. You can override this variable to where your framework will store the webfonts files.