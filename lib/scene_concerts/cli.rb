class Scene::CLI

  def call
    puts "Welcome to the Scene CLI app!"
    list_concerts
    menu
  end

  def list_concerts
    puts ""
    puts "Today's concerts are:"
    Scene::Scraper.scrape_concerts
    @concerts = Scene::Concert.all
    @concerts.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.name} - #{concert.price} - #{concert.venue}"
    end
    puts ""
   end

   def menu
     input = nil
     while input != "exit"
       puts "Please enter the number of a listed concert for more information."
       puts "To list concerts again, type list. To exit, type exit."
       input = gets.strip

      if input.to_i > 0
        concert = @concerts[input.to_i - 1]
          puts "Here are the details:"
          Scene::Scraper.scrape_details(concert)
          puts "#{concert.time} - #{concert.address} - #{concert.neighborhood} - #{concert.phone}."

        elsif input == "list"
          list_concerts
        elsif input == "exit"
          goodbye
        else
         puts "I'm not sure what you mean. Please enter list or exit."
        end
      end
    end

     def goodbye
	     puts "Check back tomorrow for more exciting concerts!"
     end

end
