#!/usr/bin/env ruby

require 'sinatra/base'

# TODO: make emerald gem for ruby that lets you use
# emerald directly in ruby style apps.
class Routes < Sinatra::Base
  get '/' do
    erb :index
  end

  # Parse emerald files here
  get '/docs' do
    erb :docs
  end

  run! if app_file == $PROGRAM_NAME
end
