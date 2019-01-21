class Pirate
  
  attr_accessor :name, :weight, :height 
  @@all = []
  
  def initialize(params) 
    @@all << self
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
  end
  
  def self.all 
    @@all
  end 
end