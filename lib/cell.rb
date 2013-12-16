#########################
######## C E L L ########
#########################

class Cell
	attr_reader :x, :y, :game
	attr_accessor :status, :destiny, :age

	def initialize(x, y, game)
		@x = x
		@y = y
		@game = game
		@status = false
		@destiny = false
		@age = 0
	end

	def nil?(column, row) #Sara's idea:
		if row >= 0 && column >= 0 && row < game.height && column < game.width
			game.board[column][row]
		else
			nil
		end
	end

	def neighbor_array
		neighbor_coordinates = [ nil?(x + 1, y + 1),
								 nil?(x + 1, y - 1), 
								 nil?(x + 1, y    ), 
								 nil?(x - 1, y + 1),
								 nil?(x - 1, y - 1), 
								 nil?(x - 1, y    ), 
								 nil?(x    , y + 1), 
								 nil?(x    , y - 1)  ]
		neighbor_coordinates.compact
	end

	def alive
		if @status == true
			true
		else
			false
		end
	end

	def alive_neighbors
		container = []
		neighbor_array.each do |neighbor|
			if neighbor.alive == true
				container << neighbor
			end
		end
		container
		# commented out code represents my attempts to debug:
		# print [x,y]
		# print "\n"
		# print g.map { |e| [e.x, e.y, e.status] }
		# print "\n"
	end

	def alive_count
		alive_num = alive_neighbors.count
	end

	def set_destiny
		if alive_count < 2 || alive_count > 3
			@destiny = false
			@age = 0
		elsif alive_count == 3
			@destiny = true
			@age += 1
		elsif alive_count == 2 && @status == true
			@destiny = @status
			@age +=1
		elsif alive_count == 2 && @status == false
			@destiny = @status
		end
	end

end