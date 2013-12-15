########################################
#######  R A N D O M    A P P  #########
########################################

require './game.rb'
require './cell.rb'
require 'rainbow'
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
if input2 == "y" || input2 == "Y" 
	while true
		game.select_destiny
		game.swap
		puts "\e[H\e[2J"
		game.prints_status
		counter += 1
		print "        Key".color(96, 96, 96)
		puts "            Generation #{counter}.".color(96, 96, 96)
		puts "color       age".color(96, 96, 96)
		print "red          0".color(255, 0, 0)
		puts "         Enter [control][c]".color(96, 96, 96)
		print "orange       1".color(255, 128, 0)
		puts "         at any point to quit".color(96, 96, 96)
		puts "yellow       2".color(255, 255, 0)
		puts "green        3".color(0, 255, 0)
		puts "blue         4".color(0, 0, 255)
		puts "purple       5+".color(127, 0, 255)
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