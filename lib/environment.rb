
require 'pry'
require 'open-uri'
require 'nokogiri'



require_relative "./best_cars/version"
require_relative "./best_cars/cli"
require_relative "./best_cars/cars"
require_relative "./best_cars/scraper"

module BestCars
  class Error < StandardError; end
  # Your code goes here...
end
