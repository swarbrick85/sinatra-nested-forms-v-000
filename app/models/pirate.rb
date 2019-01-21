class Pirate
  
  attr_accessor :name, :weight, :height, :ships 
  @@all = []
  
  def initialize(p) 
    @@all << self
    
  end
  
  def self.all 
    @@all
  end 
end