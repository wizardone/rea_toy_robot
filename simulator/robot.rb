# Class to hold the robot logic
module Simulator
  class Robot

    attr_accessor :coordinates, :facing, :placed

    def initialize
      @coordinates = [0, 0]
      @facing = 'NORTH'
      @placed = false
    end

    def output
      "#{coordinates.join(',')},#{facing}"
    end
  end
end
