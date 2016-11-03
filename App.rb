require 'sinatra/base'

class Routes < Sinatra::Base
  get '/' do
    return "Hello emerald!"
  end

  run! if app_file == $PROGRAM_NAME
end
