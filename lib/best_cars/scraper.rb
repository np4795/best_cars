require 'pry'
class Scraper
  
  def self.scrape_cars
    cars = []
    html = open("https://www.telegraph.co.uk/guides/100-best-cars/")
      doc = Nokogiri::HTML(html)
      cars_data = doc.css('div.car-data')
      cars_data.each do |cars_data|
      
        data = {
          :name => cars_data.css('div.car-data div.title').text,
          :years => cars_data.css('div.car-data div.years').text,
          :type => cars_data.css('div.car-data div.type').text,
          :origin => cars_data.css('div.car-data div.origin').text,
          :description => cars_data.css('div.car-data div.description').text
        }
        cars << data
      end
    
      
    end
 end
      
      
  
 
      

