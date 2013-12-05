########################################
#######  S T A T I C    A P P  #########
########################################

require './game.rb'
require './cell.rb'

#####################################################
############### H E R E    W E    G O : #############
#####################################################

##################################################### Make 12 x 16 board
game = Game.new(16, 12)
##################################################### Makes cells in every location on board
game.make_cells
##################################################### Make static alive shapes
# Block
game.board[1][1].status = true
game.board[2][1].status = true
game.board[1][2].status = true
game.board[2][2].status = true
game.board[1][1].age = 1
game.board[2][1].age = 1
game.board[1][2].age = 1
game.board[2][2].age = 1

# Beehive
game.board[1][9 ].status = true
game.board[2][8 ].status = true
game.board[2][10].status = true
game.board[3][8 ].status = true
game.board[3][10].status = true
game.board[4][9 ].status = true
game.board[1][9 ].age = 1
game.board[2][8 ].age = 1
game.board[2][10].age = 1
game.board[3][8 ].age = 1
game.board[3][10].age = 1
game.board[4][9 ].age = 1

# Boat
game.board[7][1].status = true
game.board[7][2].status = true
game.board[8][1].status = true
game.board[8][3].status = true
game.board[9][2].status = true
game.board[7][1].age = 1
game.board[7][2].age = 1
game.board[8][1].age = 1
game.board[8][3].age = 1
game.board[9][2].age = 1

# Loaf
game.board[11][5].status = true
game.board[12][4].status = true
game.board[12][6].status = true
game.board[13][4].status = true
game.board[13][7].status = true
game.board[14][5].status = true
game.board[14][6].status = true
game.board[11][5].age = 1
game.board[12][4].age = 1
game.board[12][6].age = 1
game.board[13][4].age = 1
game.board[13][7].age = 1
game.board[14][5].age = 1
game.board[14][6].age = 1

##################################################### Prints board
puts "First generation:"
game.prints_status
##################################################### Prompts user to continue
print "Continue? (y/n): "
input2 = gets.chomp
##################################################### Prints infinte loop of generations
counter = 1
if input2 == "y"
	while true
		game.select_destiny
		game.swap
		puts "\e[H\e[2J"
		game.prints_status
		counter += 1
		puts "Generation #{counter}."
		puts "Enter [control][c] at any point to quit"
		sleep 1
	end
###################################################### Exits if user does not want to view any more generations
else
	puts "Okay cool I'll just go over here then *shuffles away awkwardly*"
	exit
end

#####################################################
#################### T H E    E N D #################
#####################################################