require "best_cars/version"

class Bestcars::Cars
  attr_accessor :name :years :type :origin :position :description
  
  @@all = []
  
  def initialize(name, years, type, position, origin, description)
    @name = name
    @years = years
    @type = type
    @origin = origin
    @description = origin
    @position = position
    
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
 def self.reset_all 
    @@all.clear 
  end 
 
  
end
