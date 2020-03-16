require 'pry'
class CLI
  
  def call
    Scraper.scrape_cars
    puts ""
    puts "Here are the 100 best cars ever made!"
    number
  end
  
  def car_list
    Cars.all
  end
  
  
  def number
    puts ""
    puts "These are the car rankings from 100-1" 
    puts "Pick the car you would like to know more information about" #There are only 100 cars on the list therefore, index is from 0-99, ranking is inverse to integer so 0=rank 100.
    car_list.each_with_index do |data, i|
      puts "#{i}"
    end
    
    list
  end
  
  def list
    input = nil
       car_number = (0..8).to_a 
    input = gets.strip.downcase 
    index = input.to_i - 1
      if input.to_i > 0 && car_number.include?(index)
        car_list[index].tap do |data| 
          puts
          puts "Name: #{data.name}"
          puts "Years: #{data.years}"
          puts "Origin: #{data.origin}"
          puts "Description #{data.description}"
          puts "Type #{data.type}"
          puts
        end
        
          
   
    
    puts ""
    puts "Are there any other cars you would like information about on this list? Enter Y or N"
    
    if input == "Y"
      call
    elseif input == "N"
      puts "Please return if you have any further inquiries on other cars"
      exit
      
    else
      puts "No item found, please try again"
      call
    end
  end
end

end
