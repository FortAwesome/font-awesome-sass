module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, text = nil, html_options = {})
          text, html_options = nil, text if text.is_a?(Hash)

          icons = icon.is_a?(Array) ? icon : icon.to_s.split(" ")
          icons.map! { |i| "fa-#{i}" }
          content_class = "fa #{icons.join(' ')}"
          if html_options.key?(:class)
            if html_options[:class].is_a? Array
              html_options[:class] = html_options[:class].compact.join(' ')
            end
            content_class << " #{html_options[:class]}"
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
