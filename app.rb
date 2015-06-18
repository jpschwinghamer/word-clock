require "sinatra"
require "sinatra/activerecord"
require "slim"
require "sass"
require "compass"
require "autoprefixer-rails"
require "json"
require './environments'
require './models'

set :bind, '0.0.0.0'

get '/' do
  slim :index
end
