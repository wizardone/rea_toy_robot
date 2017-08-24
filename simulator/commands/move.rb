
module Simulator
  module Commands
    class Move < Simulator::Command
      def execute
        return false unless valid?

        Place.execute(robot: robot, args: new_coordinates)
      end

      private

      def new_coordinates
        x, y = robot.coordinates
        case robot.facing
        when 'NORTH'
          [x, y+1, 'NORTH']
        when 'SOUTH'
          [x, y-1, 'SOUTH']
        when 'EAST'
          [x+1, y, 'EAST']
        when 'WEST'
          [x-1, y, 'WEST']
        end
      end
    end
  end
end
