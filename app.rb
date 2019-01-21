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
      
      @pirate = Pirate.new 
      ship1 = Ship.new 
      ship2 = Ship.new 
      @ships = [ship1, ship2]
      
      
      
      erb :show
      
    end 
    

  end
end
