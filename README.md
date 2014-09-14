# FontAwesome::Sass

'font-awesome-sass' is a Sass-powered version of FontAwesome for your Ruby projects and plays nicely with
 Ruby on Rails, Compass, Sprockets, etc.

 Refactored to support more Ruby environments with code and documentation humbly used from the excellent
 [bootstrap-sass](https://github.com/twbs/bootstrap-sass) project by the Bootstrap team

## Installation

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Compass](#b-compass-without-rails) not on Rails.

### a. Ruby on Rails

In your Gemfile include:

```ruby
gem 'font-awesome-sass', '~> 4.2.0'
```

And then execute:

```sh
bundle install
```

Import the FontAwesome styles in your `app/assets/stylesheets/application.css.scss`. The `font-awesome-sprockets` file
includes the sprockets assest helper Sass functions used for finding the proper path to the font file.

```scss
@import "font-awesome-sprockets";
@import "font-awesome";
```

#### Rails Helper usage

In your view:

```ruby
icon('flag')
# => <i class="fa fa-flag"></i>
```

```ruby
icon('flag', {}, class: 'strong')
# => <i class="fa fa-flag strong"></i>
```

```ruby
icon('flag', text: 'Font Awesome', id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fa fa-flag strong"></i> Font Awesome
```

```ruby
icon('flag', text: 'Font Awesome', icon_text: content_tag(:em, "4", class: 'badge'), id: 'my-icon', class: 'strong')
# => <i id="my-icon" class="fa fa-flag strong"><em class="badge">4</em></i> Font Awesome
```

Note: the icon helper can take a hash of options among them:
- text: The text to be appended **after** the icon node.
- icon_text: The text to be inserter **inside** the icon node.
- any other HTML option that will be passed down to the icon like class, id, etc.

### b. Compass without Rails

Install the gem

```sh
gem install bootstrap-sass
```

If you have an existing Compass project:

```ruby
# config.rb:
require 'bootstrap-sass'
```

Import the FontAwesome styles

```scss
@import "font-awesome-compess";
@import "font-awesome";
```

## Upgrading from FontAwesome::Sass 3.x

Prepend the `fa` class to existing icons:

3.x Syntax

```html
<i class="icon-github"></i>
```

4.x Syntax

```html
<i class="fa fa-github"></i>
```
