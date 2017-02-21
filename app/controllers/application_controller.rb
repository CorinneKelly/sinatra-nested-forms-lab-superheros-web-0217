require 'sinatra/base'
# require '../models/teams.rb'
# require '../models/super_heros.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :"../views/team"
    end

    post '/teams' do
    	@team = Teams.new(params[:team][:name], params[:team][:motto])
    	params[:team][:members].each do |member|
    		SuperHeros.new(member["name"], member["power"], member["biography"])
    	end

    	@all_heros = SuperHeros.all
    	@hero_one = @all_heros[0]
    	@hero_two = @all_heros[1]
    	@hero_three = @all_heros[2]
    	erb :"../views/super_hero"

    end

end
