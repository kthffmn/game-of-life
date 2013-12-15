require "bundler"
Bundler.require

require "./lib/game.rb"
require "./lib/cell.rb"

module Name
	class App < Sinatra::Application
    @@game = Game.new(50, 50)
    @@game.make_cells

		get "/" do
			erb :home
		end

		get "/randomize" do
			@@game.make_alive_cells(rand(7...2000))
			@@game.select_destiny
			@@game.swap
			@my_board = @@game.board
			@blue = "background-color: blue"
			@black = "background-color: black"
			erb :rand_index
		end

		get "/glider-gun" do
				# Left Block
				game.board[5][1].status = true
				game.board[5][2].status = true
				game.board[6][1].status = true
				game.board[6][2].status = true

				game.board[5][1].age = 1
				game.board[5][2].age = 1
				game.board[6][1].age = 1
				game.board[6][2].age = 1

				# Right Block
				game.board[3][35].status = true
				game.board[3][36].status = true
				game.board[4][35].status = true
				game.board[4][36].status = true

				game.board[3][35].age = 1
				game.board[3][36].age = 1
				game.board[4][35].age = 1
				game.board[4][36].age = 1

				# Columns 11-18
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

				game.board[5][11].age = 1 # 1
				game.board[6][11].age = 1 # 2
				game.board[7][11].age = 1 # 3
				game.board[4][12].age = 1 # 4
				game.board[8][12].age = 1 # 5
				game.board[3][13].age = 1 # 6
				game.board[9][13].age = 1 # 7
				game.board[3][14].age = 1 # 8
				game.board[9][14].age = 1 # 9
				game.board[6][15].age = 1 # 10
				game.board[4][16].age = 1 # 11
				game.board[8][16].age = 1 # 12
				game.board[5][17].age = 1 # 13
				game.board[6][17].age = 1 # 14
				game.board[7][17].age = 1 # 15
				game.board[6][18].age = 1 # 16

				# Columns 21-25
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

				game.board[3][21].age = 1 # 1
				game.board[4][21].age = 1 # 2
				game.board[5][21].age = 1 # 3
				game.board[3][22].age = 1 # 4

				game.board[4][22].age = 1 # 5
				game.board[5][22].age = 1 # 6
				game.board[2][23].age = 1 # 7
				game.board[6][23].age = 1 # 8
				game.board[1][25].age = 1 # 9
				game.board[2][25].age = 1 # 10
				game.board[6][25].age = 1 # 11
				game.board[7][25].age = 1 # 12
			@@game.select_destiny
			@@game.swap
			@my_board = @@game.board
			@blue = "background-color: blue"
			@black = "background-color: black"
			erb :g_g_index
		end
	end
end