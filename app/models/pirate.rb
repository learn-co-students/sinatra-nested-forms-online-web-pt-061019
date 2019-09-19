  
class Pirate
    attr_accessor :name, :weight, :height

    # @@pirates = []
    PIRATES = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        PIRATES << self
    end

    def self.all
        # @@pirates
        PIRATES
    end
end
