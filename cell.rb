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

	def rand_num(min, max)
		rand(min..max)
	end

	def make_alive_cells(num_alive, imput)
		alive.times do
			game.board[rand_num(0, imput)][rand_num(0, imput)].status = true
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