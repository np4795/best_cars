class BestCars::CLI
  
  def call
    BestCars::Scraper.scrape_cars
    puts ""
    puts "Here are the 100 best cars ever made!"
    number
    
  end
  
  
  def number
    puts ""
    puts "These are the car rankings from 100-1" 
    puts "Pick the car you would like to know more information about" #There are only 100 cars on the list therefore, index is from 0-99, ranking is inverse to integer so 0=rank 100.
    car_list
    input = gets.strip.to_i
    if input.between?(0,99)
      car = BestCars::Cars.find_by_id(input)
      list(car)
      menu
    else 
      puts 
      puts "Unable to find car, please try again"
    end
  end
  
  def menu 
     puts "Would you like to see the car list again?"
    input = gets.strip.downcase
    if input == "y" || input == "yes"
      core
    elsif input == "n" || input == "no"
      puts "Hope you enjoyed the list of cars!"
      exit
    else
      puts "Please enter 'Yes' or 'No'"
      menu
    end
  end
    
  
  def car_list
    BestCars::Cars.all.each.with_index(0) {|car, i| puts "#{i}"}
  end
  
  def list(car)
    puts
    
    puts "name: #{car.name}"
    puts "years: #{car.years}"
    puts "type: #{car.type}"
    puts "origin: #{car.origin}"
    puts "description #{car.description}"
    puts
  end
end
