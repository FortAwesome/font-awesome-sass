module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(style, name, text = nil, html_options = {})
          text, html_options = nil, text if text.is_a?(Hash)

          content_class = "#{style} fa-#{name}"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          html_options[:class] = content_class
          html_options['aria-hidden'] ||= true

          html = content_tag(:i, nil, html_options)
          html << ' ' << text.to_s unless text.blank?
          html
        end

        def stacked_icon(icon1, icon2, html_options={})
          content_class = "fa-stack"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          html_options[:class] = content_class
          content_tag(:span, icon1+icon2, html_options).html_safe
        end
      end
    end
  end
end
