require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
require model
end

module Name
	class App < Sinatra::Application
		@@game = Game.new(50, 50)
		num_alive = rand(7...2025)
		@@game.make_alive_cells(num_alive)

		get '/' do
			erb :home
		end

		get '/randomize' do
			@@game.select_destiny
			@@game.swap
			@my_board = @@game.board
			@blue = "background-color: blue"
			@black = "background-color: black"
			erb :index
		end

		get '/glider-gun' do
			@@game.select_destiny
			@@game.swap
			@my_board = @@game.board
			@blue = "background-color: blue"
			@black = "background-color: black"
			erb :index
		end
	end
end