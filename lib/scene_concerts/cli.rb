class Scene::CLI


  def call
    list_concerts
    menu
    goodbye
    puts "Hey!"
  end


  #      @deals = DailyDeal::Deal.today
  #      @deals.each.with_index(1) do |deal, i|
  #        puts "#{i}. #{deal.name} - #{deal.price} - #{deal.availability}"
  #      end
  #    end

  def list_concerts
    puts "Today's concerts are:"
    @concerts = Scene::Concert.scrape_concerts
    @concerts.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.name} - #{concert.genre}, #{concert.time}, #{concert.price}. Venue - #{concert.venue}"
    end
   end

   def menu
     input = nil
     while input != "exit"
       puts "Please enter the number of a listed concert for address, neighborhood, and phone number. To list concerts again, enter list. To exit, type exit."
       input = gets.strip.downcase

       if input.to_i > 0
         the_concert = @concerts[input.to_i - 1]
         puts "#{i}. #{concert.name} - #{concert.genre}, #{concert.time}, #{concert.price}. Venue - #{concert.venue}"
        elsif input == "list"
          	list_concerts
        else
         puts "I'm not sure what you mean. Please enter list or exit."
        end
      end
    end


          # when “1”
		      #   puts "Address: #{concert_1_address}, Neighborhood: #{concert_1_neighborhood},
          #        Phone: call #{concert_1_phone} for more information." #should build a nested hash for this info
          # when “2”
          #   puts "Address: #{concert_1_address}, Neighborhood: #{concert_1_neighborhood},
          #        Phone: call #{concert_1_phone} for more information." #should build a nested hash for this info
	        # when “exit”


    def goodbye
	     puts "Check back tomorrow for more exciting concerts!"
     end


end
