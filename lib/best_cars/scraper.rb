require 'pry'
class BestCars::Scraper
  
  def self.scrape_cars
    cars = []
    html = open("https://www.telegraph.co.uk/guides/100-best-cars/")
      doc = Nokogiri::HTML(html)
      cars_data = doc.css('div.car-data').text
      cars_data.each do |car_data|
        data = {
          :name => car_data.css('div.car-data div.title').text,
          :years => car_data.css('div.car-data div.years').text,
          :type => car_data.css('div.car-data div.type').text,
          :origin => car_data.css('div.car-data div.origin').text,
          :description => car_data.css('div.car-data div.description').text
        }
        cars << data
      end
    end
 end
      
      
  
 
      

