class Pirate
  
  attr_accessor :name, :weight, :height, :ships 
  @@all = []
  
  def initialize(name, weight, height, ship1, ship2) 
    @@all << self
    @ships = [ship1, ship2]
  end
  
  def self.all 
    @@all
  end 
end