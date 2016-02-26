module EmmetFontAwesome
  module FontAwesomeHelper
    def fa_icon(icon, options = {})
      options_class = " #{options[:class]}" if options[:class]
      options[:class] = "fa fa-#{icon}#{options_class}"
      content_tag :i, nil, options
    end

    def fa_fw_icon(icon, options = {})
      options_class = " #{options[:class]}" if options[:class]
      options[:class] = "fa-fw#{options_class}"
      fa_icon(icon, options)
    end

    def fa_icon_text(icon, text, options = {})
      "#{fa_fw_icon(icon, options)} #{text}"
    end
  end
end
