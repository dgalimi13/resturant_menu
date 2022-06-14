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
    
end 