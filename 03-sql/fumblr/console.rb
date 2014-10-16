require 'pry'
require 'sinatra'
require 'active_record'

config = {
  adapter: 'postgresql',
  # mac host: 'localhost',
  username: 'daniel',
  database: 'fumblr' 
}

ActiveRecord::Base.establish_connection(config)

class Post < ActiveRecord::Base
end

binding.pry