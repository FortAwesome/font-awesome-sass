module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, text=nil, html_options={})
          text, html_options = nil, text if text.is_a?(Hash)
          content_class = "fa fa-#{icon}"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          html_options[:class] = content_class

          html = content_tag(:i, nil, html_options)
          html << " #{text}" unless text.blank?
          html.html_safe
        end
      end
    end
  end
end
