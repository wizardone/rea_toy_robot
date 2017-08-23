require_relative 'robot'
require_relative 'board'
require_relative 'command'
require_relative 'commander'
Dir[File.join(File.dirname(__FILE__), 'commands', '*.rb')].sort.each { |file| require file }

# Main application class. Keeps references to the robot and board
module Simulator
  class App

    attr_reader :robot, :board, :started

    def initialize
      @board = Board.new
      @robot = Robot.new(board: board)
      @started = true
    end

    def start
      puts 'Starting toy robot application'
      while started
        command = $stdin.gets.chomp
        Commander.new(command: command, robot: robot).call
      end
    end
  end
end
