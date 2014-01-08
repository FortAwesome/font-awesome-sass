module Font
  module Awesome
    module Sass
      module ViewHelpers
        def icon(icon, text=nil, options = {})
          options[:class] = ["fa", "fa-#{icon}"].concat(Array(options[:class])).join(' ')
          html = content_tag(:i, nil, options)
          html << " #{text}" if text
          html
        end
      end
    end
  end
end