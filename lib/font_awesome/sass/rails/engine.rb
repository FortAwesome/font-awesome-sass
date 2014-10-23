module FontAwesome
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'font-awesome-sass.assets.precompile' do |app|
          %w(stylesheets fonts).each do |sub|
            app.config.assets.paths << root.join('assets', sub)
          end

          app.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
        end
      end
    end
  end
end
