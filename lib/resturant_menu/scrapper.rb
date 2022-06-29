class ResturantMenu::Scraper
    def self.scrape_items
      doc = Nokogiri::HTML(open(websiteMenu))
      
      food = doc.css(foodDiv)
      
      food.each do |t|
        name = t.text
        ResturantMenu::Item.new(name)
        
      end 
    end

    def self.scrape_ingredients(item)
        doc = Nokogiri::HTML(open(source))
        
        ingredients = doc.css(div)
    
  
        ingredients.each do |t|
          name = t.text
          
          ResturantMenu::Ingredient.new(name,item)
        end 

    
end  