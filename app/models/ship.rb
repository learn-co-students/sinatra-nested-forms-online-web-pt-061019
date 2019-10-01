class Ship
    attr_accessor :name, :type, :booty

    # @@ships = []
    SHIPS = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        SHIPS << self
    end

    def self.all
        # @@ships
        SHIPS
    end

    def self.clear
        # @@ships.clear
        SHIPS.clear
    end
end