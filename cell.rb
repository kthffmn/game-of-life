######################### => false => dead
### L I F E   C E L L ###
######################### => true => alive

require './game.rb'

class Cell
	attr_reader :x, :y #:game
	attr_accessor :status

	def initialize(x, y)
		@x = x
		@y = y
		@status = false
		#@game = game
	end

	def neighbor_array
		neighbor_corrdinates = [ game.board[(x + 1)][(y + 1)],
								 game.board[(x + 1)][(y - 1)], 
								 game.board[(x + 1)][y], 
								 game.board[(x - 1)][(y + 1)],
								 game.board[(x - 1)][(y - 1)], 
								 game.board[(x - 1)][y], 
								 game.board[x][(y + 1)], 
								 game.board[x][(y - 1)]        ]
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