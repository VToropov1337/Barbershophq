#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'
require 'rake'

# создаем подключеие к базе данных! Надо запомнить
set :database, "sqlite3:barbershop.db"



class Client < ActiveRecord::Base
end
# rake db:create_migration NAME=create_clients

class Barber < ActiveRecord::Base
  end

  # rake db:create_migration NAME=create_barbers


get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end