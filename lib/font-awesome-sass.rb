module Font
  module Awesome
    module Sass
      class FrameworkNotFound < StandardError; end

      def self.load!
        if compass?
          register_compass_extension
        end
    
        if rails?
          register_rails_engine
        end
    
        unless rails? || compass?
          raise Font::Awesome::Sass::FrameworkNotFound,
                'font-awesome-font-awesome-sass requires either Rails or Compass, neither of which are loaded'
        end
    
      end
    
      private
    
      def self.gem_path
        @gem_path ||= File.expand_path File.join('..'), File.dirname(__FILE__)
      end
    
      def self.compass?
        defined?(::Compass)
      end
    
      def self.rails?
        defined?(::Rails)
      end
    
      def self.register_compass_extension
        styles    = File.join gem_path, 'vendor', 'assets', 'stylesheets'
        templates = File.join gem_path, 'templates'
        ::Compass::Frameworks.register(
            'font-awesome-font-awesome-sass',
            :path                  => gem_path,
            :stylesheets_directory => styles,
            :templates_directory   => templates
        )
      end
    
      def self.register_rails_engine
          require 'font/awesome/font-awesome-sass/engine'
          require 'font/awesome/font-awesome-sass/version'
      end
    end
  end
end

Font::Awesome::Sass.load!
