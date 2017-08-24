module Simulator
  class Board

   # [0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0]

    attr_reader :max_position, :min_position

    def initialize(max_position: 5, min_position: 0)
      @max_position = max_position
      @min_position = min_position
    end

    def position_possible?(coordinates)
      x, y = coordinates
      (x <= max_position && x >= min_position) && (y <= max_position && y >= min_position)
    end
  end
end
