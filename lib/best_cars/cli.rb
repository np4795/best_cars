class Bestcars::CLI
  def begin
    Bestcars::Scraper.scrapter_content
    "Here is the list of the top 100 cars by telegraphUK!"
    ranks
  end
  
  
  def ranks
    puts "These are the car rankings from 100-1" 
    puts "Pick the car ranking you would like to know more information about" #There are only 100 cars on the list therefore, index is from 0-99
    input = gets.strip.to_i
    
    car_ranks(input)
    
    puts "What information would you like about this car"
    input = gets.strip
    
    cars_list = Bestcars::Cars.find(input.to_i)
    
    car_ranks(rank)
    
    puts ""
    puts "Are there any other cars you would like information about on this list? Enter Y or N"
    
    if input == "Y"
      begin
    elseif input == "N"
      puts "Please return if you have any further inquiries on other cars"
      exit
      
    else
      puts "No item found, please try again"
      begin
    end
  end
  
  def car_list_rank(rank)
    puts "Name: #{car.name}"
    puts "Years: #{car.years}"
    puts "Origin: #{car.origin}"
    puts "Description #{car.description}"
    puts "Position #{car.position}"
    
  end
  
  def goodbye
    puts "Thank you have a great day!"
  end
  
end