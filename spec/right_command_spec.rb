require 'spec_helper'

RSpec.describe Simulator::Commands::Right do

  let(:board) { Simulator::Board.new }
  let(:robot) { Simulator::Robot.new(board: board) }
  let(:initial_coordinates) { [1, 2, 'SOUTH'] }
  let(:new_coordinates) { [1, 2, 'WEST'] }

  before do
    # Place the robot anywhere so it is a valid command
    Simulator::Commands::Place.execute(robot: robot, args: initial_coordinates)
  end

  describe '#execute' do
    it 'executes the right command' do
      expect(Simulator::Commands::Place).to receive(:execute).with(robot: robot, args: new_coordinates)

      described_class.new(robot: robot, args: nil).execute
    end
  end
end
