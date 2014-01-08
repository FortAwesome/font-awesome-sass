module Font
  module Awesome
    module Sass
      require 'font/awesome/sass/engine'
      require 'font/awesome/sass/version'
      require 'font/awesome/sass/railtie' if defined?(Rails)
    end
  end
end
