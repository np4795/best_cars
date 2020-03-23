class BestCars::Scraper

  def self.scrape_cars
    html = open("https://www.telegraph.co.uk/guides/100-best-cars/")
      doc = Nokogiri::HTML(html)
      data = doc.css('div.car-data')
      data.each_with_index do |info, i|
        name = info.css('div.title').text
        origin = info.css('div.origin').text
        description = info.css('div.description').text

          car = BestCars::Cars.new(name, origin, description)

        end
      end
    end
