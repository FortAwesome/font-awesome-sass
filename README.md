# FontAwesome::Sass

[![Gem Version](https://badge.fury.io/rb/font-awesome-sass.svg)](https://badge.fury.io/rb/font-awesome-sass)

'font-awesome-sass' is a Sass-powered version of [FontAwesome](http://fortawesome.github.io/Font-Awesome/) for your Ruby projects and plays nicely with
 Ruby on Rails, Compass, Sprockets, etc.

 Refactored to support more Ruby environments with code and documentation humbly used from the excellent
 [bootstrap-sass](https://github.com/twbs/bootstrap-sass) project by the Bootstrap team
## Upgrading from Previous Versions
Check out our [What's Changed in v6](https://fontawesome.com/v6.0/docs/web/setup/upgrading/whats-changed) guide and [Upgrading to Version 6](https://fontawesome.com/v6.0/docs/web/setup/upgrading/) guide.

You can find more detailed information on these changes on our [Quick Start](https://fontawesome.com/v6.0/docs/web/setup/quick-start) guide, our [How to Use](https://fontawesome.com/v6.0/docs/web/add-icons/how-to) guide, our [Upgrading to v6 with SCSS/Less](https://fontawesome.com/v6.0/docs/web/setup/upgrading/scss-less) guide, and our [Sass](https://fontawesome.com/v6.0/docs/web/use-with/scss) guide.

## Installation

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Compass](#b-compass-without-rails) not on Rails.

### a. Ruby on Rails

In your Gemfile include:

```ruby
gem 'font-awesome-sass', '~> 5.15.1'
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

With Font Awesome 5.x you now need to select what style of icon you want to use. Font Awesome 5.x has 3 styles:

  * solid (`fas`)
  * regular (`far`)
  * brands (`fab`)

In your view:

```ruby
icon('fas', 'flag')
# => <i class="fas fa-flag"></i>
```

```ruby
icon('far', 'address-book', class: 'strong')
# => <i class="far fa-address-book strong"></i>
```

```ruby
icon('fab', 'font-awesome', 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fab fa-font-awesome strong"></i> Font Awesome
```

Note: the icon helper can take a hash of options that will be passed to the content_tag helper

### b. Compass without Rails

Install the gem

```sh
gem install font-awesome-sass
```

If you have an existing Compass project:

```ruby
# config.rb:
require 'font-awesome-sass'
```

Import the FontAwesome styles

```scss
@import "font-awesome-compass";
@import "font-awesome";
```

## Upgrading from FontAwesome::Sass 4.x

Prepend the style of the icon you want to use (`fas`, `far`, `fab`) class to existing icons:

4.x Syntax

```html
<i class="fa fa-github"></i>
```

5.x Syntax (GitHub icon exists in the Brands style)

```html
<i class="fab fa-github"></i>
```
