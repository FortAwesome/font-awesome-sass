module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, options={})
          content_class = "fa fa-#{icon}"
          content_class << " #{options[:class]}" if options.key?(:class)
          options[:class] = content_class

          text = options.delete(:text)
          icon_text = options.delete(:icon_text)

          html = content_tag(:i, icon_text.html_safe, html_options)
          html << " #{text}" unless text.blank?
          html.html_safe
        end
      end
    end
  end
end
