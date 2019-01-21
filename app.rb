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
      
      @pirate.name = params[:pirate].name 
      @pirate.height = params[:pirate].height 
      @pirate.weight = params[:pirate].weight 
      @ships[0].name = params[:pirate][ships][0][name]
      @ships[0].type = params[:pirate][ships][0][type]
      @ships[0].booty = params[:pirate][ships][0][booty]
      @ships[1].name = params[:pirate][ships][1][name]
      @ships[1].type = params[:pirate][ships][1][type]
      @ships[1].booty = params[:pirate][ships][1][booty]
      
      erb :show
      
    end 
    

  end
end
