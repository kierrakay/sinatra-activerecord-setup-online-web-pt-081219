ENV['SINATRA_ENV'] ||= "development"
#above is telling sinatra to use development env for shotgun and testing suite when we run migrations we run this top line too so all connects  rake db:migrate SINATTRA_ENV_development
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do
  set :database, 'sqlite3:db/database.db'
end
require './app'