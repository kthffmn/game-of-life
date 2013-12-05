##########################
#######  G A M E #########
##########################

require './cell.rb'

class Game
	attr_reader :board, :width, :height


	def initialize(input)
		@width = input
		@height = input
		@board = Array.new(width) {Array.new(height)}
	end

	def make_cells #Sterling's idea
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
		#puts w_counter
	end

	def make_alive_cells(num_alive)
		num_alive.times do
			@board[rand(0...width)][rand(0...width)].status = true
		end
	end

	def select_destiny
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < width do
		 		@board[w_counter][h_counter].set_destiny
				h_counter += 1
			end
			h_counter = 0
			w_counter +=1
		end
	end

	def swap
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < width do
		 		@board[w_counter][h_counter].status = @board[w_counter][h_counter].destiny
				h_counter += 1
			end
			h_counter = 0
			w_counter +=1
		end
	end


	def prints_status
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < width do
				print " O " if @board[w_counter][h_counter].status == true
				print " - " if @board[w_counter][h_counter].status == false
				h_counter += 1
			end
		h_counter = 0
		w_counter +=1
		print "\n"
		end
		array
	end

	def makes_array_to_count
		array =[]
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < width do
				array << @board[w_counter][h_counter].status
				h_counter += 1
			end
		h_counter = 0
		w_counter +=1
		end
		array
	end

	def array_count
		makes_array_to_count.length
	end
end