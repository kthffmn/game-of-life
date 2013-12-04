##########################
#######  G A M E #########
##########################

require './cell.rb'

class Game
	attr_reader :board, :width, :height

	def initialize(imput)
		@width = imput
		@height = imput
		@board = Array.new(width) {Array.new(height)}
	end

	def make_cells
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < height do
				@board[w_counter][h_counter] = Cell.new(w_counter, h_counter, self)
				h_counter += 1
			end
			h_counter = 0
			w_counter += 1
		end
	end

	def make_alive_cells(num_alive, imput)
		num_alive.times do
			@board[rand(0...imput)][rand(0...imput)].status = true
		end
	end

	def select_destiny(imput)
		w_counter = 0
		h_counter = 0
		while w_counter < imput do
			while h_counter < imput do
				if @board[w_counter][h_counter].alive_count != 0 || @board[w_counter][h_counter].status = true
		 			@board[w_counter][h_counter].destiny
					h_counter += 1
				end
			end
		h_counter = 0
		w_counter +=1
		end
	end
end 









