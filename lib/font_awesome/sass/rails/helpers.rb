module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, text = nil, html_options = {})
          text, html_options = nil, text if text.is_a?(Hash)

          content_class = "fa fa-#{icon}"
          if html_options.key?(:class)
            if html_options[:class].is_a? Array
              content_class << " #{html_options[:class].compact.join(' ')}"
            else
              content_class << " #{html_options[:class]}"
            end
          end
          html_options[:class] = content_class

          html = content_tag(:i, nil, html_options)
          html << ' ' << text.to_s unless text.blank?
          html
        end
      end
    end
  end
end
