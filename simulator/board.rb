module Simulator
  class Board

   # [0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0,
   #  0, 0, 0, 0, 0]

    attr_reader :max, :min
    def initialize(max: 5, min: 0)
      @max = max
      @min = min
    end

    def position_possible?(coordinates)
      x, y = coordinates
      (x <= max && x >= min) && (y <= max && y >= min)
    end
  end
end
