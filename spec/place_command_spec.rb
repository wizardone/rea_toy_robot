require 'spec_helper'

RSpec.describe Simulator::Commands::Place do

  let(:board) { Simulator::Board.new }
  let(:robot) { Simulator::Robot.new(board: board) }
  let(:initial_coordinates) { [1, 2, 'SOUTH'] }

  describe '#execute' do
    it 'executes the right command' do
      described_class.new(robot: robot, args: initial_coordinates).execute

      expect(robot.facing).to eq 'SOUTH'
      expect(robot.coordinates).to match_array [1, 2]
      expect(robot.placed).to be true
    end
  end
end
