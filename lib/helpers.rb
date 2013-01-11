helpers do

  def current_locale
    I18n.locale
  end
  
  def t(*args)
    I18n.t(*args)
  end

  def link_to(text, href, options = {})
    options[:locale] = current_locale unless options.has_key?(:locale)
    path = "/#{options[:locale]}#{href}"
    options.merge! class: "active" if request.path_info.include?(href)
    optionstr = options.map {|k,v| "#{k}=\"#{v}\""}.join(" ")
    "<a href='#{path}' #{optionstr}>#{text}</a>"
  end

  def image_tag(src)
    "<img src='/images/#{src}' />"
  end

  def render_static(path, layout="application")
    if layout != false
      layout = File.read("views/layout/#{layout}.erb").force_encoding('utf-8') 
    end
    begin
      markdown File.read("views/#{path}.md").force_encoding('utf-8'), 
       layout: layout
    rescue Errno::ENOENT
      erb File.read("views/#{path}.erb").force_encoding('utf-8'), layout: layout rescue pass
    end
  end

  def easyconcert_tag
    "<span class='easy'>easy</span>concert"
  end

  def locale_links
    settings.locales.map do |locale|
      if current_locale == locale.to_sym
        "<b>" + locale + "</b>"
      else
        "<span>" + link_to(locale, request.path_info.gsub(/^\/(en|de)/, ''), locale: locale) + "</span>"
      end
    end.join(" | ")
  end

  def nav_tree
    [
     [t("nav.idea"),    "/idea"],
     [t("nav.product"), "/product"],
     [t("nav.team"),    "/team"]
    ]
  end
end
