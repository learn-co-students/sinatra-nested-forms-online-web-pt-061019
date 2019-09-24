# class Ship < ActiveRecord::Base
#   belongs_to :pirate

  class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def initilize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    self.all.clear
  end
end
