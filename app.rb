require './environment'

module FormsLab
  class App < Sinatra::Base


  get '/' do
    erb :"pirates/new"
  end

  get '/new' do
    erb :"pirates/new"
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])
    params[:pirate][:ships].each do |ship|
      Ship.new(ship)
      @ships = Ship.all
    end
    erb :"pirates/show"
  end

end

    # code other routes/actions here
end
