require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here

    get '/' do

      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get 'pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :'pirates/show'
    end

    post '/pirates' do
    
      pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])

      params[:pirate][:ships].each do |info|
        ship = Ship.new(info)
        ship.pirate = pirate
        ship.save
      end
      @ships = Ship.all

      redirect to "/pirates/#{pirate.pirate.id}"
    end
  end
end
