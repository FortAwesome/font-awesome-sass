module Font
  module Awesome
    module Sass
      class Engine < ::Rails::Engine
        initializer "bootstrap-sass.assets.precompile" do |app|
          app.config.assets.precompile += %w(
            FontAwesome.otf fontawesome-webfont.eot fontawesome-webfont.svg
            fontawesome-webfont.ttf fontawesome-webfont.woff)
        end
      end
    end
  end
end