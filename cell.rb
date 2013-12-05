#########################______K_E_Y______
######## C E L L ########   false => dead
#########################   true => alive

require './game.rb'

class Cell
	attr_reader :x, :y, :game
	attr_accessor :status, :destiny

	def initialize(x, y, game)
		@x = x
		@y = y
		@game = game
		@status = false
		@destiny = false
	end

	def nil?(column, row) #Sara's idea:
		if row >= 0 && column >= 0 && row < game.height && column < game.width
			game.board[column][row]
		else
			nil
		end
	end

	def neighbor_array
		neighbor_corrdinates = [ nil?(x + 1, y + 1),
								 nil?(x + 1, y - 1), 
								 nil?(x + 1, y    ), 
								 nil?(x - 1, y + 1),
								 nil?(x - 1, y - 1), 
								 nil?(x - 1, y    ), 
								 nil?(x    , y + 1), 
								 nil?(x    , y - 1)  ]
		neighbor_corrdinates.compact
	end

	def alive_neighbors
		g = neighbor_array.select{|neighbor|neighbor.status==true}
		# print [x,y]
		# print "\n"
		# print g.map { |e| [e.x, e.y, e.status] }
		# print "\n"
		# g
	end

	def alive_count
		alive_num = alive_neighbors.count
	end

	def set_destiny
		if alive_count < 2 || alive_count > 3
			@destiny = false
		elsif alive_count == 3
			@destiny = true
		else
			@destiny = @status
		end
	end
	
end