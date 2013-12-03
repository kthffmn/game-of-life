####################################
### L I F E   R S P E C  C E L L ###
####################################

require './cell.rb'

describe Cell, "#initialize" do
	it "should be able to initialize a cell class" do
    	lambda {Cell.new}.should_not raise_error
 	end
 end

 describe Cell, "#neighbors" do
	it "should die if it has less than two live neighbors" do
		expect(Cell.new.neighbors.count).to eq(0)
	end
end

describe Cell, "#method" do
	context "cell untility methods" do
		before do
			@cell =  Cell.new
		end
		new_cell = @cell.spawn_at(5,5)
		new_cell.is_a?(Cell).should be_true
		expect(new_cell.x)to eq(5)
		expect(new_cell.y)to eq(5)
	end
end


=begin
	
"should live if has 2-3 live neighbors"
"should die if has 4-8 live neighbors"
Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
	
=end
