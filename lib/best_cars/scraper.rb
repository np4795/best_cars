class BestCars::Scraper
  
  def self.scrape_cars
    html = open("https://www.telegraph.co.uk/guides/100-best-cars/")
      doc = Nokogiri::HTML(html)
      data = doc.css('div.car-data')
      data.each_with_index do |info, i|
          car = BestCars::Cars.new
          car.name = info.css('div.title').text,
          car.years = info.css('div.years').text,
          car.type = info.css('div.type').text,
          car.origin = info.css('div.origin').text,
          car.description = info.css('div.description').text
        end
      end
    end
      
      

