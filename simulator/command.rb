# Main command class implementing a command pattern,
# actual commands inherit from it
module Simulator
  class Command

    attr_reader :robot, :args

    class << self
      def execute(robot:, args: nil)
        new(robot: robot, args: args).execute
      end
    end

    def initialize(robot:, args:)
      @robot = robot
      @args = args
    end

    def execute
      raise NotImplementedError
    end

    def robot_placed?
      robot.placed
    end
  end
end
