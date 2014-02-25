module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, options={})
          content_class = "fa fa-#{icon}"
          content_class << " #{options[:class]}" if options.key?(:class)
          options[:class] = content_class
          content_tag(:i, nil, options)
        end
      end
    end
  end
end
