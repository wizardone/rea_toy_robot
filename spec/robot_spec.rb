require 'spec_helper'

RSpec.describe Simulator::Robot do

  let(:board) { Simulator::Board.new }

  describe 'valid facing directions' do
    it 'returns an array of valid facing directions for the robot' do
      expect(described_class::VALID_DIRECTIONS).to match_array %w(NORTH SOUTH EAST WEST)
    end
  end

  describe '#initialize' do
    it 'initializes the robot' do
      robot = described_class.new(board: board)

      expect(robot.coordinates).to eq [0, 0]
      expect(robot.placed).to eq false
      expect(robot.board).to eq board
    end
  end

  describe '#output' do
    it 'outputs the necessary information for the robot' do
      robot = described_class.new(board: board)

      expect(robot.output).to eq "0,0,NORTH"
    end
  end
end
