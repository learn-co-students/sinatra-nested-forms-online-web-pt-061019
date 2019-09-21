require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    # get "/pirates" do
    #
    #         "Hello"
    #
    #   erb :'pirates/show'
    #
    #
    # end

    # post "/pirates/show" do
    #
    #
    #
    #   # Create a pirate
    #   # @pirate = Pirate.new(params['pirate']['name'], params['pirate']['weight'], params['pirate']['height'])
    #
    #   # @pirate_name = params[:pirate][:name]
    #   # @pirate_weight = params[:pirate][:weight]
    #   # @pirate_height = params[:pirate][:height]
    #
    #   # Create ships
    #
    #   # params['pirate']['ships'].each do |ship_info|
    #   #   @ship = Ship.new(ship_info['name'],ship_info['type'], ship_info['booty'])
    #   # end
    #   #
    #   # @ship
    #
    #
    #   # @pirate_name = @pirate.name
    #   # @pirate_weight = params[:pirate][:weight]
    #   # @pirate_height = params[:pirate][:height]
    #   # ["pirate", {"name"=>"Shannon Crabill", "weight"=>"123", "height"=>"213", "ships"=>[{"name"=>"bdsds", "type"=>"23", "booty"=>"12"}, {"name"=>"dfg", "type"=>"fdg", "booty"=>"fdg"}]}]
    #   # params # Use this to expose all params
    #
    #     "Hello World"
    #
    #   erb :'pirates/show'
    #
    #
    # end

  end
end
