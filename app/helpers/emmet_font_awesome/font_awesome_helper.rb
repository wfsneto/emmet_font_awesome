module EmmetFontAwesome
  module FontAwesomeHelper
    def fa_icon(icon, options = {})
      options[:class] = fa_classes(icon, options)
      content_tag :i, nil, options
    end

    def fa_fw_icon(icon, options = {})
      fa_icon("fw #{icon}", options)
    end

    def fa_icon_text(icon, text, options = {})
      "#{fa_fw_icon(icon, options)} #{text}".html_safe
    end

    def fa_classes(icon, options = {})
      icon = icon.to_s.split(' ').uniq.join(' fa-')
      options_class = " #{options[:class]}" if options[:class]
      "fa fa-#{icon}#{options_class}"
    end
  end
end
