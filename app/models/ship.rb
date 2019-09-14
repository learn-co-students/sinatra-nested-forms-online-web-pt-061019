class Ship
    attr_accessor :name, :type, :booty

    # @@ships = []
    SHIPS = []

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
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