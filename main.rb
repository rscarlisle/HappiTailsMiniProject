 require 'pry'

# require 'rainbow'
 require_relative 'data'
binding.pry
menu_str_1 = "To Display all: (a)nimals, (c)lients"
menu_str_2 = "To Create: an a(n)nimal, a c(l)ient"
menu_str_3 = "To Adopt: a(d)opt an animal"
menu_str_4 = "To Return: r(e)turn an animal"

puts
puts "Welcome to Happi Trails Shelter"
puts
puts "Menu:"
puts
puts menu_str_1 + "\n" + menu_str_2 + "\n" + menu_str_3 + "\n" + menu_str_4 + "\n"
# puts
# puts
# puts "Display all: (a)nimals, (c)lients; Create: an a(n)nimal, a c(l)ient"

response = gets.chomp.downcase

	while response != "q"
	  case response
		  when "a"
		  	$shelter.display_animals
	  	  when "c"
	  	  	$shelter.display_clients
		  when "n"
		    $shelter.create_animal
	  	  when "l"
			$shelter.create_client
		  when "d"
			$shelter.adopt_pet(client_name, animal_name)
	  	  when "e"
			$shelter.return
	  end
	  puts "Display all: (a)nimals, (c)lients"
	  response = gets.chomp
	end
    puts "Goodbye."
