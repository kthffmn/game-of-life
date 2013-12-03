####################################
### L I F E   R S P E C  C E L L ###
####################################

require './cell.rb'

describe Class, "#method" do

	it "should be able to initialize a cell class" do
    	lambda {Cell.new}.should_not raise_error
 	end

	it "should die if it has less than two live neighbours" do
		expect(Cell.new.neighbor_count).to eq(0)
	end

end

=begin
	
Any live cell with two or three live neighbours lives on to the next generation.
Any live cell with more than three live neighbours dies, as if by overcrowding.
Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
	
=end
