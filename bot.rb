require 'rack/contrib'
require 'rubygems'
require 'sinatra'
require 'json'

class QueueBot < Sinatra::Base

  before '/*' do
    if params['token'] != ENV['SLACK_TOKEN']
      halt 401, 'Not Authorized'
    end
  end

  post '/api/v1/queue/?' do
    text = params['text']
  end
end
