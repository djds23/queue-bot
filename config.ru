require "rubygems"
require "sinatra"
require "rack/contrib"
require "slack-ruby-client"

Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end

require File.expand_path '../bot.rb', __FILE__

use Rack::PostBodyContentTypeParser
run QueueBot
