class Pirate

  attr_accessor :name, :weight, :height

  @@PIRATES = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@PIRATES << self
  end

  # def initialize(pirate_info)
  #   @name = pirate_info["name"]
  #   @weight = pirate_info["weight"]
  #   @height = pirate_info["height"]
  #   @@PIRATES << self
  # end

  def self.all
    @@PIRATES
  end

end
