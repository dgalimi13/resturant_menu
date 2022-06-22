class ResturantMenu::Ingredient
    attr_accessor :name, :item 
    @@all = []

    def initialize(name, item)
        @name = name 
        @item = item
        add_to_item
        save
    end

    

end