# Main application class. Keeps references to the robot and board
require_relative 'robot'
require_relative 'board'
require_relative 'commander'

class App

  attr_reader :robot, :board, :commander, :started

  def initialize
    @robot = Robot.new
    @board = Board.new
    @started = true
  end

  def start
    puts 'Starting toy robot application'
    while started
      command = $stdin.gets.chomp
      Commander.new(command: command).call
    end
  end
end
