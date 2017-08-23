module Simulator
  module Commands
    class Right < Simulator::Command
      def execute
        return false unless robot_placed?

        Place.execute(robot: robot, args: new_coordinates)
      end

      def new_coordinates
        x, y = robot.coordinates
        case robot.facing
        when 'NORTH'
          [x, y, 'EAST']
        when 'SOUTH'
          [x, y, 'WEST']
        when 'EAST'
          [x, y, 'SOUTH']
        when 'WEST'
          [x, y, 'NORTH']
        end
      end
    end
  end
end
