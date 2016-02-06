require 'rubygems'
require 'sinatra'
require 'json'

class QueueBot < Sinatra::Base
  before '/*' do
    data = JSON.parse(request.body.read)
    if data['token'] != ENV['SLACK_TOKEN']
      halt 401, 'Not Authorized'
    end
  end

  post '/api/v1/queue/?' do
    data = JSON.parse(request.body.read)
    text = data['text']
  end
end
