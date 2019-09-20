class Ship
    attr_reader :type, :name, :booty
    SHIPS = []

    def initialize(params)
        @type = params[:type]
        @name = params[:name]
        @booty = params[:booty]
        SHIPS << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        SHIPS.clear
    end

end