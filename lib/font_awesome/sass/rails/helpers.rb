module FontAwesome
  module Sass
    module Rails
      module ViewHelpers
        def icon(icon, text="", html_options={})
          content_class = "fa fa-#{icon}"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          html_options[:class] = content_class

          html = content_tag(:i, nil, html_options)
          html << " #{text}" unless text.blank?
          html.html_safe
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
