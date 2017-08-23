# Class that acts as decision maker for the actual
# command to be executed. Keeps the logic encapsulated and
# separate from the main Command class
class Commander

  AVAILABLE_COMMANDS = %w(MOVE PLACE LEFT RIGHT REPORT).freeze

  attr_reader :command

  def initialize(command:)
    @command = command
  end

  def call
    case command
    when 'MOVE'
      puts 'move'
    when 'PLACE'
      puts 'place'
    when 'LEFT'
      puts 'left'
    when 'RIGHT'
      puts 'right'
    when 'REPORT'
      puts 'report'
    else
      puts "Invalid command, available commands are #{AVAILABLE_COMMANDS.join(', ')}"
    end
  end
end
