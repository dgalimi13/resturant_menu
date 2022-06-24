class ResturantMenu::Ingredient
    attr_accessor :name, :item 
    @@all = []

    def initialize(name, item)
        @name = name 
        @item = item
        add_to_item
        save
    end

    def self.all 
        @@all 
    end 

    def add_to_item
        @item.ingredients << self unless @item.ingredients.include?(self)
    end

end