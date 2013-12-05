##########################
#######  G A M E #########
##########################

require './cell.rb'
require 'rainbow'

class Game
	attr_reader :board, :width, :height


	def initialize(width, height)
		@width = width
		@height = height
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
			current_cell = @board[rand(0...width)][rand(0...height)]
			current_cell.status = true
			current_cell.age = 1
		end
	end

	def select_destiny
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < height do
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
			while h_counter < height do
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
		red_color = 255
		blue_color = 0
		while w_counter < width do
			while h_counter < height do
				if @board[w_counter][h_counter].age == 0
					print " - ".color(:black)
				else
					if @board[w_counter][h_counter].age <= 255

						if board[w_counter][h_counter].age == 1
							blue_color == 0
						elsif @board[w_counter][h_counter].age < 5
							blue_color = @board[w_counter][h_counter].age * 51
						else
							blue_color = 255
						end

						if board[w_counter][h_counter].age == 1
							red_color == 255
						elsif @board[w_counter][h_counter].age < 5
							red_color = 255 - @board[w_counter][h_counter].age * 51
						else
							red_color = 0
						end

						print " O ".color(255, red_color, blue_color)
					else
						print " O ".color(255, 0, 255)
					end
				end
				h_counter += 1
			end
		h_counter = 0
		w_counter +=1
		print "\n"
		end
	end

	def makes_array_to_count
		array =[]
		w_counter = 0
		h_counter = 0
		while w_counter < width do
			while h_counter < height do
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