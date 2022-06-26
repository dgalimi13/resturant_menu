class ResturantMenu::Item
    attr_accessor :name, :ingredients
    @@all = []

    def initialize(name)
    @name = name 
    @ingredients = []
    save
    end

    def self.all
        ResturantMenu::Scraper.scrape_items if @@all.empty?
        @@all
        
    end

end 