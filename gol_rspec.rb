##############################
###  R S P E C  	G O L  ###
##############################

require "./cell.rb"
require "./game.rb"

describe Cell, "#initialize" do
	it "should be able to initialize a cell class" do
    	lambda {Cell.new(2, 2)}.should_not raise_error
 	end
 end

describe Game, "#initialize" do
	it "should be able to initialize a board" do
    	lambda {Game.new(3, 3)}.should_not raise_error
 	end
 end

describe Game, "#make_cells" do
	it "should make a cell at a particular location on the board" do
		game = Game.new(3,3)
		game.make_cells
		expect(game.board[2][2]).to be_a(Cell)
 	end
 end

#  describe Cell, "#destiny" do

# 	it "should die if it has less than two live neighbors" do
# 		game = Game.new(3,3)
#  		game.make_cells
#  		game.board[1][1].status = true
# 		expect(game.board[1][1]).to eq(false)
# 	end

end

# 	it "should live if has 2-3 live neighbors" do
# 		game = Game.new(3,3)
#  		game.make_cells
#  		game.board[1][1].status = true
#  	 	game.board[1][0].status = true
#  		game.board[0][1].status = true
# 		expect(game.board[1][1]).to eq(true)
# 	end

# 	it "should die if has 4-8 live neighbors" do
# 		game = Game.new(3,3)
#  		game.make_cells
#  		game.board[1][1].status = true
#  	 	game.board[1][0].status = true
#  		game.board[0][1].status = true
#  	 	game.board[2][0].status = true
#  	 	game.board[0][0].status = true
# 		expect(game.board[1][1]).to eq(false)
# 	end

# 	it "should  come to life if it has 3 live neighbors" do
# 		game = Game.new(3,3)
#  		game.make_cells
#  		game.board[2][1].status = true
#  	 	game.board[1][0].status = true
#  		game.board[0][1].status = true
# 		expect(game.board[1][1]).to eq(true)
# 	end

# end
