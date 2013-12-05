#########################
#######  A P P  #########
#########################

require './game.rb'
require './cell.rb'

def get_imput
	print "Enter a number between 3 and 10 to choose length and width: "
	input = gets.chomp
end

def num_alive(input)
	num_of_total_cells = input ^ 2
	rand(3...num_of_total_cells)
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
puts "1. Board made, alive cells randomly selected (first generation):"
game.prints_status
##################################################### Run 'destiny' on each cell
game.select_destiny
##################################################### Swaps 'destiny' with 'status'
game.swap
##################################################### Prints board
puts "2. Second generation:"
game.prints_status