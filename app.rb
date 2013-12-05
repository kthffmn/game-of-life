########################################
#######  R A N D O M    A P P  #########
########################################

require './game.rb'
require './cell.rb'

# retrieves custom length/width from user, assuming it's going be a square
def get_imput
	print "Enter a number between 3 and 30 to choose length and width: "
	input = gets.chomp
end

# generates random number of alive cells between 7 and the total number of cells
def num_alive(input)
	num_of_total_cells = input ** 2
 	rand(7...num_of_total_cells)
end

#####################################################
############### H E R E    W E    G O : #############
##################################################### Get size of board
input = get_imput.to_i
##################################################### Make board
game = Game.new(input)
##################################################### Makes cells in every location on board
game.make_cells
##################################################### Change some cell statuses to alive
num_alive = num_alive(input)
game.make_alive_cells(num_alive)
##################################################### Prints board
puts "First generation:"
game.prints_status
##################################################### Prompts user to continue
print "Continue? (y/n): "
input2 = gets.chomp
##################################################### Prints infinte loop of generations
counter = 1
if input2 == "y"
	puts "Enter [control][c] at any point to quit"
	sleep 2
	while true
		game.select_destiny
		game.swap
		puts "\e[H\e[2J"
		game.prints_status
		counter += 1
		puts "Generation #{counter}."
		sleep 0.1
	end
###################################################### Exits if user does not want to view any more generations
else
	puts "Okay cool I'll just go over here then *shuffles away awkwardly*"
	exit
end

#####################################################
#################### T H E    E N D #################
#####################################################