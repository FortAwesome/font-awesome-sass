module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(style, name, text = nil, html_options = {})
          text, html_options = nil, text if text.is_a?(Hash)

          content_class = "#{style} fa-#{name}"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          content_class << " fa-#{html_options[:size]}"; html_options.delete(:size) if html_options.key?(:size)
          html_options[:class] = content_class

          html = content_tag(:i, nil, html_options)
          html << ' ' << text.to_s unless text.blank?
          html
        end
      end
    end
  end
end
