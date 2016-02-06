require "rubygems"
require "sinatra"
require "rack/contrib"

require File.expand_path '../bot.rb', __FILE__

use Rack::PostBodyContentTypeParser
run QueueBot
