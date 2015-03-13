module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, *args)
          text, html_options = args
          text.is_a?(Hash) ? html_options = text : html_options = {}
          
          content_class = "fa fa-#{icon}"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          html_options[:class] = content_class

          html = content_tag(:i, nil, html_options)
          html << ' ' << text unless text.blank?
          html
        end
      end
    end
  end
end
