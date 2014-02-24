module FontAwesome
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'font-awesome-sass.assets.precompile' do |app|
          app.config.assets.precompile += %w(
            fontawesome-webfont.eot fontawesome-webfont.svg
            fontawesome-webfont.ttf fontawesome-webfont.woff)
        end
      end
    end
  end
end
