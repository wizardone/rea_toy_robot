require 'spec_helper'

RSpec.describe Simulator::Commands::Report do

  let(:board) { Simulator::Board.new }
  let(:robot) { Simulator::Robot.new(board: board) }
  let(:initial_coordinates) { [1, 2, 'SOUTH'] }

  before do
    # Place the robot anywhere so it is a valid command
    Simulator::Commands::Place.execute(robot: robot, args: initial_coordinates)
  end

  describe '#execute' do
    it 'executes the report command' do
      expect(robot).to receive(:output)

      described_class.new(robot: robot, args: nil).execute
    end
  end
end
