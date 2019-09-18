require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      # "Welcome to the Nested Forms Lab!"
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end
    
    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      # binding.pry
      # @pirate = Pirate.find(params["id"])
      @pirate = Pirate.find(params[:id])
      erb :'pirates/show'
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      @ships = params[:pirate][:ships].map do |ship_data|
        ship = Ship.new(ship_data)
        # ship.priate = pirate
        # ship.save
        # binding.pry
      end

      # redirect to "pirate/#{pirate.id}"
      erb :'pirates/show'
    end

  end
end
