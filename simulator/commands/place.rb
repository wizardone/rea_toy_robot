module Simulator
  module Commands
    class Place < Simulator::Command
      def execute
        return false unless arguments_valid?

        coordinates = args[0, 2]
        facing = args[2]

        robot.coordinates = coordinates.map(&:to_i)
        robot.facing = facing
        robot.placed = true
      end

      private

      def arguments_valid?
        args.size == 3
      end
    end
  end
end

