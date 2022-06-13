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
end 