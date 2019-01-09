require 'rack'

class PersonalSite

  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    when '/about' then about
    when '/main.css' then css
    else
      error
    end
  end

  def self.index
    render_view("index.html")
  end

  def self.error
    render_view("error.html", '404')
  end

  def self.about
    render_view("about.html")
  end

  def self.css
    render_static("main.css")
  end

  def self.render_view(file, code = '200')
    [code, {"Content-type" => "text/html"}, [File.read("./app/views/#{file}")]]
  end

  def self.render_static(asset, code = '200')
    [code, {"Content-type" => "text/css"}, [File.read("./public/#{asset}")]]
  end

end
