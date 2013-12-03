##########################
### L I F E    G A M E ###
##########################

require './cell.rb'

class Game
	attr_reader :board

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
				@board[w][h] = Cell.new(w, h)
				h += 1
			end
			w += 1
		end
	end

end 