
require_relative "./best_cars/version"
require_relative "./best_cars/cli"
require_relative "./best_cars/cars"
require_relative "./best_cars/scraper"

require 'pry'
require 'open-uri'
require 'nokogiri'



module BestCars
  class Error < StandardError; end
end
