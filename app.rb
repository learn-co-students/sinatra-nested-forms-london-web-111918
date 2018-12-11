require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each { |ship_detail| Ship.new(ship_detail) }

      @ships = Ship.all

      # @ship = Ship.new(params[:name], params[:type], params[:booty])
      # @ship2 = Ship.new(params[:name], params[:type], params[:booty])
      #
      # @pirate_name = @pirate.name
      # @pirate_weight = @pirate.weight
      # @pirate_height = @pirate.height
      #
      # @ship_name = @ship.name
      # @ship_type = @ship.type
      # @ship_booty = @ship.booty
      #
      # @ship2_name = @ship2.name
      # @ship2_type = @ship2.type
      # @ship2_booty = @ship2.booty
      erb :"pirates/show"
    end
  end
end
