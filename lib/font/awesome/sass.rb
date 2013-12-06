module Font
  module Awesome
    module Sass
      require 'font/awesome/sass/engine' if defined?(Rails)
      require 'font/awesome/sass/version'

      def self.gem_path
        File.expand_path('../../../..', __FILE__)
      end

      def self.assets_path
        File.join(gem_path, 'vendor', 'assets')
      end

      def self.fonts_path
        File.join(assets_path, 'fonts')
      end

      def self.stylesheets_path
        File.join(assets_path, 'stylesheets')
      end
    end
  end
end
