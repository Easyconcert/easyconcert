helpers do
  def link_to(text, href, options = {})
    optionstr = options.map {|k,v| "#{k}=\"#{v}\""}.join(" ")
    "<a href='#{href}' #{optionstr}>#{text}</a>"
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
end
