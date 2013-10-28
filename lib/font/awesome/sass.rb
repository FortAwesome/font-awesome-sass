require 'font/awesome/sass/version'

if defined?(Rails::Engine)
  require 'font/awesome/sass/engine'
else
  require 'font/awesome/sass/sprockets'
end
