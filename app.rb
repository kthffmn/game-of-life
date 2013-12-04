#########################
#######  A P P  #########
#########################

require './game.rb'
require './cell.rb'

def get_imput
	puts "Enter a number between 3 and 20 to choose length and width: "
	imput = gets.chomp
	if imput.is_a? Integer 
		if imput > 2 && imput < 101
			imput
		else
			imput = 10
		end
	else
		imput = 10
	end
	imput
end

def num_alive(imput)
	num_of_total_cells = imput ^ 2
	rand(3...num_of_total_cells)
end


# get width and height of grid
imput = get_imput
# make a new game using user imput
game = Game.new(imput)
# make cells in each location of grid
game.make_cells
# change some cells to alive*************************************************
num = num_alive(imput)
game.make_alive_cells(num, imput)
# run destiny on each cell
game.call_destiny(imput)