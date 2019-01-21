require './environment'
require_relative './app/models/pirate'
require_relative './app/models/ship'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end 
    
    get '/new' do 
      erb :new 
    end 
    
    post '/pirates' do 
      
     
      @pirate = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
 
      @ships = Ship.all
 binding.pry
      erb :show
      
    end 
    

  end
end
