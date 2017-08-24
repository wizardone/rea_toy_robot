require 'spec_helper'

RSpec.describe Simulator::Command do

  let(:board) { Simulator::Board.new }
  let(:robot) { Simulator::Robot.new(board: board) }
  let(:args) { [2,3,'NORTH'] }

  describe '.execute' do
    it 'executes the given command' do
      command = instance_double(Simulator::Command, execute: true)

      expect(described_class).to receive(:new) { command }

      described_class.execute(robot: robot)
    end
  end

  describe '#initialize' do
    it 'initializes the command with arguments' do
      command = described_class.new(robot: robot, args: [2,3,'NORTH'])

      expect(command.robot).to eq robot
      expect(command.args).to eq args
    end
  end

  describe '#execute' do
    it 'raises a not implemented error from the base class' do
      expect {
        described_class.new(robot: robot, args: [2,3,'NORTH']).execute
      }.to raise_error NotImplementedError
    end
  end

  describe '#valid?' do
    it 'returns true - the command is valid' do
      robot.placed = true
      command = described_class.new(robot: robot, args: [2,3,'NORTH'])

      expect(command.valid?).to be true
    end

    it 'returns false - the command is not valid' do
      robot.placed = false
      command = described_class.new(robot: robot, args: [2,3,'NORTH'])

      expect(command.valid?).to be false
    end
  end
end
