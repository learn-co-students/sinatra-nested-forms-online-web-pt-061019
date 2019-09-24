# class Pirate < ActiveRecord::Base
#   has_many :ships

  class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initilize(params)
    @name = params[:name]
    @weight = params[:weights]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
