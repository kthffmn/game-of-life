######################### => false => dead
### L I F E   C E L L ###
######################### => true => alive

class Cell
	attr_reader :x, :y
	attr_accessor :status

	def initialize(x, y)
		@x = x
		@y = y
		@status = false
	end

	def neighbors(x, y)
		neighbor_corrdinates = [[(x + 1), (y + 1)],
		[(x + 1), (y - 1)], [(x + 1), y], [(x - 1), (y + 1)],
		[(x - 1), (y - 1)], [(x - 1), y], [x, (y + 1)], [x, (y - 1)]]
	end
end