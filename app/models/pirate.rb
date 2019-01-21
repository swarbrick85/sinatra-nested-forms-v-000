class Pirate
  
  attr_accessor :name, :weight, :height, :ships 
  @@all = []
  
  def initialize(params) 
    @@all << self
    @name = 
  end
  
  def self.all 
    @@all
  end 
end