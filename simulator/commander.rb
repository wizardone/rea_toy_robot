require 'byebug'
# Class that acts as decision maker for the actual
# command to be executed. Keeps the logic encapsulated and
# separate from the main Command class
module Simulator
  class Commander

    AVAILABLE_COMMANDS = %w(MOVE PLACE LEFT RIGHT REPORT).freeze

    attr_reader :command, :robot

    def initialize(command:, robot:)
      @command = command
      @robot = robot
    end

    def call
      actual_command, args = command.split
      case actual_command
      when 'MOVE'
        Simulator::Commands::Move.execute(robot: robot)
      when 'PLACE'
        Simulator::Commands::Place.execute(robot: robot, args: args.split(','))
      when 'LEFT'
        Simulator::Commands::Left.execute(robot: robot)
      when 'RIGHT'
        Simulator::Commands::Right.execute(robot: robot)
      when 'REPORT'
        Simulator::Commands::Report.execute(robot: robot)
      else
        puts "Invalid command, available commands are #{AVAILABLE_COMMANDS.join(', ')}"
      end
    end
  end
end
