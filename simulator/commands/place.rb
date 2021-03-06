module Simulator
  module Commands
    class Place < Simulator::Command
      def execute
        return false unless valid?

        coordinates = args[0, 2]
        facing = args[2]

        robot.coordinates = coordinates.map(&:to_i)
        robot.facing = facing
        robot.placed = true
      end

      private

      def valid?
        args.size == 3 &&
        Simulator::Robot::VALID_DIRECTIONS.include?(args.last) &&
        board_position_valid?
      end

      def board_position_valid?
        coordinates = args[0, 2].map(&:to_i)
        robot.board.position_possible?(coordinates)
      end
    end
  end
end

