require_relative "./resturant_menu/version"
require_relative "./resturant_menu/cli"
require_relative "./resturant_menu/item"
require_relative "./resturant_menu/ingredient"
require_relative "./resturant_menu/scrapper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module ResturantMenu
  class Error < StandardError; end
  # Your code goes here...
end