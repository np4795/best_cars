class Bestcars::Scraper

 def self.scraper_content
 cars = []
 html = "https://www.telegraph.co.uk/guides/100-best-cars/"
 doc = Nokogiri::HTML(open(html))
 cars_list = doc.css('div.car')
 cars_list.each do |car_rank|
   car= {
      :name = car.css('div.title').text
      :years = car.css('div.years').text
      :type = car.css(div.type').text
      :position = car.css('div.position').text
      :origin = car.css('div.origin').text
      :description = carlist.css('div.description').text
      }
       cars << car
      end
      
      cars.each do |car|
       Cars.new(car_rank)
     end
   end
 end