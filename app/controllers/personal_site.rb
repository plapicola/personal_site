require 'rack'

class PersonalSite

  def self.call(env)
    ['200', {'Content-type' => 'text/html'}, ['Welcome!']]
  end

end
