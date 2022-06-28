class ResturantMenu::Scraper
    def self.scrape_items
      doc = Nokogiri::HTML(open(websiteMenu))
      
      food = doc.css(foodDiv)
      
      food.each do |t|
        name = t.text
        ResturantMenu::Item.new(name)
        
      end 
    end

    
end  