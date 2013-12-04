##########################
#######  G A M E #########
##########################

require './cell.rb'

class Game
	attr_reader :board, :width, :height

	def initialize(width, height)
		@width = width
		@height = height
		@board = Array.new(width) {Array.new(height)}
	end

	def make_cells
		w = 0
		h = 0
		while w < width do
			while h < height do
				@board[w][h] = Cell.new(w, h, self)
				h += 1
			end
			h = 0
			w += 1
		end
	end

	def num_alive(imput)
		num_of_total_cells = imput ^ 2
		rand_num(3, num_of_total_cells)
	end

end 