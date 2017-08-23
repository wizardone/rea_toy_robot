# Main command class implementing a command pattern,
# actual commands inherit from it
module Simulator
  class Command

    attr_reader :robot

    class << self
      def execute(robot:)
        new(robot: robot).execute
      end
    end

    def initialize(robot:)
      @robot = robot
    end

    def execute
      raise NotImplementedError
    end

    def robot_placed?
      robot.placed
    end
  end
end
