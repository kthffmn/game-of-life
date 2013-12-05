#########################################
#######  G L I D E R     A P P  #########
#########################################

require './game.rb'
require './cell.rb'

#####################################################
############### H E R E    W E    G O : #############
#####################################################

##################################################### Make 40 x 40 board
game = Game.new(40)
##################################################### Makes cells in every location on board
game.make_cells
##################################################### Make Gosper glider gun
# Block
game.board[5][1].status = true
game.board[5][2].status = true
game.board[6][1].status = true
game.board[6][2].status = true

# Block
game.board[3][35].status = true
game.board[3][36].status = true
game.board[4][35].status = true
game.board[4][36].status = true

# 11-18
game.board[5][11].status = true # 1
game.board[6][11].status = true # 2
game.board[7][11].status = true # 3
game.board[4][12].status = true # 4
game.board[8][12].status = true # 5
game.board[3][13].status = true # 6
game.board[9][13].status = true # 7
game.board[3][14].status = true # 8
game.board[9][14].status = true # 9
game.board[6][15].status = true # 10
game.board[4][16].status = true # 11
game.board[8][16].status = true # 12
game.board[5][17].status = true # 13
game.board[6][17].status = true # 14
game.board[7][17].status = true # 15
game.board[6][18].status = true # 16

# 21-25
game.board[3][21].status = true # 1
game.board[4][21].status = true # 2
game.board[5][21].status = true # 3
game.board[3][22].status = true # 4
game.board[4][22].status = true # 5
game.board[5][22].status = true # 6
game.board[2][23].status = true # 7
game.board[6][23].status = true # 8
game.board[1][25].status = true # 9
game.board[2][25].status = true # 10
game.board[6][25].status = true # 11
game.board[7][25].status = true # 12

##################################################### Prints board
puts "First generation:"
game.prints_status
##################################################### Prompts user to continue
print "Continue? (y/n): "
input2 = gets.chomp
##################################################### Prints infinte loop of generations
counter = 1
if input2 == "y"
	puts "Enter [control][c] at any point to quit"
	sleep 2
	while true
		game.select_destiny
		game.swap
		puts "\e[H\e[2J"
		game.prints_status
		counter += 1
		puts "Generation #{counter}."
		sleep 0.1
	end
###################################################### Exits if user does not want to view any more generations
else
	puts "Okay cool I'll just go over here then *shuffles away awkwardly*"
	exit
end

#####################################################
#################### T H E    E N D #################
#####################################################