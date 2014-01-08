require 'font/awesome/sass/view_helpers'

module Font
  module Awesome
    module Sass
      class Railtie < Rails::Railtie
        initializer "font-awesome-sass.view_helpers" do
          ActionView::Base.send :include, ViewHelpers
        end
      end
    end
  end
end