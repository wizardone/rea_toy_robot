require 'spec_helper'

RSpec.describe Simulator::Board do

  describe '#initialize' do
    it 'initializes the board with max and min positions' do
      board = described_class.new(max_position: 5, min_position: 0)

      expect(board.max_position).to eq 5
      expect(board.min_position).to eq 0
    end
  end

  describe '#position_possible?' do
    let(:board) { described_class.new(max_position: 5, min_position: 0) }
    it 'returns true - the position is within the board limits' do
      expect(board.position_possible?([3, 2])).to be true
    end

    it 'returns false - the position is not within the board limits' do
      expect(board.position_possible?([-3, 0])).to be false
    end
  end
end
