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
 
      params[:student][:courses].each do |details|
        Ship.new(details)
      end
 
      @courses = Course.all
 
      erb :show
      
    end 
      
      erb :show
      
    end 
    

  end
end
