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

	def neighbor_array
		neighbor_corrdinates = [[(x + 1), (y + 1)],
		[(x + 1), (y - 1)], [(x + 1), y], [(x - 1), (y + 1)],
		[(x - 1), (y - 1)], [(x - 1), y], [x, (y + 1)], [x, (y - 1)]]
	end

	def alive_array
		alive_array = neighbor_array.select{|n|n.status==true}
	end

	def alive_count
		alive_num = alive_array.count
	end

	def destiny
		case
			when alive_count < 2
				@status = false
			when alive_count == 2
				@status = @status
			when alive_count == 3
				@status = true
			when alive_count > 3
				@status = false
			else
				"confused"
		end
	end
end