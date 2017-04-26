require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    configure do
      set :views, 'views/pirates'
    end

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])

      erb :show
    end

  end

end
