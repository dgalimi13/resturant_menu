class ResturantMenu::CLI
    def call
        puts "Welcome to Resturant Menu App"
        @input = ""
         until @input == "exit"
         get_menu_items
         list_items
         get_user_item
         repeat
         end 
        goodbye
    end

    def list_items
        puts 'Choose a taco to see its ingredients'
        sorted = @items.sort { |a, b| a.name <=> b.name }
        sorted.each_with_index do  |item, index|
          puts "#{index+1}. #{item.name}"
        end
    end

    def get_user_item
        chosen_item = gets.strip.to_i
        show_ingredients_for(chosen_item) if valid_input(chosen_item, @items)
    end

    def show_ingredients_for(chosen_item)
        item = @items[chosen_item - 1]
        item.get_ingredients 
        puts "Here are the ingredients for #{item.name}"
        puts item.ingredients[chosen_item - 1].name
        puts "hit enter to continue"
        get_user_item
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end
    
end 