module Simulator
  module Commands
    class Left < Simulator::Command
      def execute
        return false unless valid?

        Place.execute(robot: robot, args: new_coordinates)
      end

      def new_coordinates
        x, y = robot.coordinates
        case robot.facing
        when 'NORTH'
          [x, y, 'WEST']
        when 'SOUTH'
          [x, y, 'EAST']
        when 'EAST'
          [x, y, 'NORTH']
        when 'WEST'
          [x, y, 'SOUTH']
        end
      end
    end
  end
end
