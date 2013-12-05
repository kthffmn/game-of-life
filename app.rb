#########################
#######  A P P  #########
#########################

require './game.rb'
require './cell.rb'

def get_imput
	print "Enter a number between 3 and 30 to choose length and width: "
	input = gets.chomp
end

def num_alive(input)
	num_of_total_cells = input ** 2
 	rand(7...num_of_total_cells)
end

##################################################### Get size of board
input = get_imput.to_i
##################################################### Make board
game = Game.new(input)
##################################################### Makes cells in every location on board
game.make_cells
##################################################### Change some cell statuses to alive
num = num_alive(input)
game.make_alive_cells(num)
##################################################### Prints board
puts "First generation:"
game.prints_status
##################################################### Prompts user to continue
print "Continue? (y/n): "
input2 = gets.chomp
##################################################### Prints infinte loop of generations
if input2 == "y"
	puts "Enter [control][c] at any point to quit"
	sleep 2
	while true
		game.select_destiny
		game.swap
		puts "\e[H\e[2J"
		game.prints_status
		sleep 0.1
	end
else
	puts "Okay cool I'll just go over here then *shuffles away awkwardly*"
end