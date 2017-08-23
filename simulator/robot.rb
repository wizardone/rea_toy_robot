# Class to hold the robot logic
module Simulator
  class Robot

    VALID_DIRECTIONS = %w(NORTH SOUTH EAST WEST).freeze
    attr_accessor :board, :coordinates, :facing, :placed

    def initialize(board:)
      @board = board
      @coordinates = [0, 0]
      @facing = 'NORTH'
      @placed = false
    end

    def output
      "#{coordinates.join(',')},#{facing}"
    end
  end
end
