require 'sinatra'

class App <Sinatra::Base
  get '/'do
    "<h1>Hello, World</h1>"
  end
end 