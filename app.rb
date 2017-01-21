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
	erb :index
end