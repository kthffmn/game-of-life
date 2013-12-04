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

	def make_alive_cells(num_alive, imput)
		num_alive.times do
			@board[rand(0...imput)][rand(0...imput)].status = true
		end
	end

	def call_destiny(imput)
		w_counter = 0
		h_counter = 0
		while w_counter < imput do
			while h_counter < imput do
				@board[w_counter][h_counter].destiny
				h_counter += 1
			end
		h_counter = 0
		w_counter +=1
		end
	end

end 