require 'rubygems'
require 'bundler'
#require 'sinatra'
Bundler.setup
Bundler.require

APP_BASE = File.dirname(__FILE__)
$LOAD_PATH << "#{APP_BASE}/lib"

#ENVIRONMENT = ENV['DB'] || 'development'
#config = YAML.load(File.read('db/config.yml'))[ENVIRONMENT]
#ActiveRecord::Base.establish_connection(config)

REDIS = Redis.new #config[:redis]

def show_log
  logger = Logger.new STDOUT
  logger.level = Logger::DEBUG
end
