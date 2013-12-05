########################################
#######  R A N D O M    A P P  #########
########################################

require './game.rb'
require './cell.rb'

# retrieves custom length/width from user, assuming it's going be a square
def get_height
	print "Enter a number between 3 and 30 to choose height: "
	gets.chomp.to_i
end

def get_width
	print "Enter a number between 3 and 30 to choose width: "
	gets.chomp.to_i
end
# generates random number of alive cells between 7 and the total number of cells
def num_alive(width, height)
	num_of_total_cells = width * height
 	rand(7...num_of_total_cells)
end

#####################################################
############### H E R E    W E    G O : #############
##################################################### Get size of board
width = get_width
height = get_height
##################################################### Make board
game = Game.new(height, width)
##################################################### Makes cells in every location on board
game.make_cells
##################################################### Change some cell statuses to alive
num_alive = num_alive(width, height)
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
	while true
		game.select_destiny
		game.swap
		puts "\e[H\e[2J"
		game.prints_status
		counter += 1
		puts "Generation #{counter}."
		puts "Enter [control][c] at any point to quit"
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