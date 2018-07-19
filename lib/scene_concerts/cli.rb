class Scene::CLI


  def call
    list_concerts
    menu
    goodbye
    puts "Hey!"
  end

  def list_concerts
    puts "Today's concerts are:"

	   <<-DOC
     “1. Vans Warped Tour - Rock & Pop, 12:30 p.m., $58.50.  Venue - Blossom
         Further information - Address: "1145 W. Steels Corners Rd.",
                               Neighborhood: "Akron/Summit County",
	                             Phone: "call 216-231-1111 for more information.”

     “2. Alan Greene (in the Supper Club) - Rock & Pop, 6 p.m., free.  Venue - Music Box Supper Club
         Further Information - Address: "1148 Main Ave.",
                               Neighborhood: "Downtown/Flats/Warehouse District",
                               Phone: "call 216-242-1250 for more information.”
     DOC

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
         puts "I'm not sure what you mean.  Please enter list or exit."
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
