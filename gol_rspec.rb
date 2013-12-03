#################################
###  R S P E C  	G A M E S ###
#################################

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
 	before do
 		game = Game.new(3,3)
 		game.make_cells
 		game.board[2][2].status = true
 	end
	it "should die if it has less than two live neighbors" do
		expect(game.board[2][2]).to eq(false)
	end
end


# describe Game, "#neighbors" do
#  	before do
#  		game = Game.new(3,3)
#  		game.make_cells
#  		game.board[2][2].status = true
#  	end
# 	it "should die if it has less than two live neighbors" do
# 		expect(game.board[2][2]).to eq(false)
# 	end
# end

=begin
"should die if it has less than two live neighbors"
"should live if has 2-3 live neighbors"
"should die if has 4-8 live neighbors"
Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
	
=end
