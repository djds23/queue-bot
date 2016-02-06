require 'rubygems'
require 'sinatra'
require 'json'

class QueueBot < Sinatra::Base
  post '/api/v1/queue/?' do
    data = JSON.parse(request.body.read)
    text = data['text']
  end
end
