#########################
#######  A P P  #########
#########################

require './game.rb'
require './cell.rb'

def get_imput
	puts "Enter a number between 3 and 100: "
	imput = gets.chomp
	if imput.is_a? Integer && imput > 2 && imput < 101
		imput
	else
		imput = 10
	end
	imput
end


# get width and height of grid
imput = get_imput
# make a new game using user imput
game = Game.new(imput, imput)
# make cells in each location of grid
game.make_cells
# change some cells to alive*************************************************
num_alive = num_alive(imput)
game.make_alive_cells(num_alive, imput, self)
# run destiny on each cell
game.call_destiny(imput, self)