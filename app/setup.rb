require 'bundler/setup'
require 'pakyow'

Pakyow::App.define do
  configure do
    Bundler.require :default, Pakyow::Config.env

    if defined?(Dotenv)
      env_path = ".env.#{Pakyow::Config.env}"
      Dotenv.load env_path if File.exist?(env_path)
      Dotenv.load
    end

    app.name = 'webapp'
  end

  configure :development do
    # development config goes here
  end

  onfigure :production do
    realtime.redis = { url: ENV['REDIS_URL'] }
  end
end
