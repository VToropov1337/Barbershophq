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
	validates :name, presence:true
	validates :phone, presence:true
	validates :datestamp, presence:true
	validates :color, presence:true  
end
# rake db:create_migration NAME=create_clients

class Barber < ActiveRecord::Base
  end

  # rake db:create_migration NAME=create_barbers
before do

end 

get '/' do
	@barbers = Barber.all
	erb :index 
end

get '/visit' do
	erb :visit
	end


post '/visit' do


	c = Client.new params[:client]
	if c.save
		erb "<h2> ok, everything good </h2>"
	else
		@error = c.errors.full_messages.first
		erb :visit
	end
end