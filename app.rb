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

      @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])

      params[:pirate][:ships].each do |details|
        Ship.new(name: details[:name], type: details[:type], booty: details[:booty])
      end

      @ships = Ship.all

      erb :"pirates/show"

    end

  end
end


# 	
# {"name"=>"anthony", "weight"=>"111", "height"=>"123", "ships"=>[{"name"=>"amber", "type"=>"111", "booty"=>"234"}, {"name"=>"yahoo", "type"=>"raider", "booty"=>"rich"}]}