
class Cars
  attr_accessor :name, :years, :type, :origin, :description
  
  @@all = []
  
  def initialize(name)
    @name = name
    @years = years
    @type = type
    @origin = origin
    @description = description
    
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
end
