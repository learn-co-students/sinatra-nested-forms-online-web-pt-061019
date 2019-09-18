class Pirate
  PIRATES = []

  def self.all 
    PIRATES
  end

  attr_reader :name, :weight, :height
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight] 
    @height = params[:height]
    PIRATES << self
  end
end