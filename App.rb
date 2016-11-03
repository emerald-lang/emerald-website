require 'sinatra/base'

# TODO: make emerald gem for ruby that lets you use
# emerald directly in ruby style apps.
class Routes < Sinatra::Base
  get '/' do
    erb :index
  end

  # use gsub method to find all instances of
  # tokens and then replace them with css
  # classes scoped to them for styles.

  run! if app_file == $PROGRAM_NAME
end
