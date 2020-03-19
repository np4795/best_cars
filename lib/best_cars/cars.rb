class BestCars::Cars
  attr_accessor :name, :years, :type, :origin, :description
  
  @@all = []
  
  def initialize
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
  
  
   def self.find_by_id(id)
    self.all[id-1]
  end
  
end
