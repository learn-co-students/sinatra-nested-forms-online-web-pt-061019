class Ship
    attr_reader :type, :name, :booty
    @@ships = []

    def initialize(params)
        @type = params[:type]
        @name = params[:name]
        @booty = params[:booty]
        SHIPS << self
    end

    def self.all
        @@ships.all
    end

    def self.clear
        @@ships.clear
    end

end