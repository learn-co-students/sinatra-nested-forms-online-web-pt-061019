class Ship
  SHIPS = []

  def self.all 
    SHIPS
  end
  
  def self.clear 
    SHIPS.clear
  end

  attr_reader :name, :type, :booty

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    SHIPS << self
  end
end