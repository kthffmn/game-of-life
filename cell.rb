#########################______K_E_Y______
######## C E L L ########   false => dead
#########################   true => alive

require './game.rb'

class Cell
	attr_reader :x, :y, :game
	attr_accessor :status

	def initialize(x, y, game)
		@x = x
		@y = y
		@game = game
		@status = false
	end

	def nil?(row, column)
		if game.board[row] == nil
			nil
		elsif game.board[row][column] == nil
			nil
		else
			game.board[row][column]
		end
	end	

	def neighbor_array
		neighbor_corrdinates = [ nil?(x + 1, y + 1),
								 nil?(x + 1, y - 1), 
								 nil?(x + 1, y), 
								 nil?(x - 1, y + 1),
								 nil?(x - 1, y - 1), 
								 nil?(x - 1, y), 
								 nil?(x    , y + 1), 
								 nil?(x    , y - 1)       ]
		neighbor_corrdinates.compact
	end

	def alive_neighbors
		alive_neighbors = neighbor_array.select{|neighbor|neighbor.status==true}
	end

	def alive_count
		alive_num = alive_neighbors.count
	end

	def destiny
		if alive_count < 2 || alive_count > 3
			@status = false
		elsif alive_count == 3
			@status = true
		end
	end


end