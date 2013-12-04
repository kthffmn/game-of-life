#########################
#######  A P P  #########
#########################

require './game.rb'
require './cell.rb'

def get_imput
	puts "Enter a number between 3 and 10 to choose length and width: "
	input = gets.chomp
end

def num_alive(input)
	num_of_total_cells = input ^ 2
	rand(3...num_of_total_cells)
end


# get width and height of grid
input = get_imput.to_i
# make a new game using user input
game = Game.new(input)
# make cells in each location of grid
game.make_cells
# change some cells to alive
num = num_alive(input)
game.make_alive_cells(num)
# run destiny on each cell that's surrounded by at least one cell
game.prints_status
puts game.array_count


#game.select_destiny
# prints statuses

#game.prints_status





