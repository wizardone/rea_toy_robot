require 'spec_helper'

RSpec.describe Simulator::Commander do

  let(:board) { Simulator::Board.new }
  let(:robot) { Simulator::Robot.new(board: board) }
  let(:command) { Simulator::Commands::Place }

  describe 'available commands' do
    it 'returns an array of available commands' do
      expect(described_class::AVAILABLE_COMMANDS).to match_array %w(MOVE PLACE LEFT RIGHT REPORT)
    end
  end

  describe '#initialize' do
    it 'initializes the commander' do
      commander = described_class.new(command: 'MOVE', robot: robot)

      expect(commander.command).to eq 'MOVE'
      expect(commander.robot).to eq robot
    end
  end

  describe '#call' do
    it 'calls the MOVE command on the robot' do
      commander = described_class.new(command: 'MOVE', robot: robot)

      expect(Simulator::Commands::Move).to receive(:execute).with(robot: robot)

      commander.call
    end

    it 'calls the PLACE command on the robot' do
      commander = described_class.new(command: 'PLACE 1,2,NORTH', robot: robot)

      expect(Simulator::Commands::Place).to receive(:execute).with(robot: robot, args: ['1','2','NORTH'])

      commander.call
    end

    it 'calls the LEFT command on the robot' do
      commander = described_class.new(command: 'LEFT', robot: robot)

      expect(Simulator::Commands::Left).to receive(:execute).with(robot: robot)

      commander.call
    end

    it 'calls the RIGHT command on the robot' do
      commander = described_class.new(command: 'RIGHT', robot: robot)

      expect(Simulator::Commands::Right).to receive(:execute).with(robot: robot)

      commander.call
    end

    it 'calls the REPORT command on the robot' do
      commander = described_class.new(command: 'REPORT', robot: robot)

      expect(Simulator::Commands::Report).to receive(:execute).with(robot: robot)

      commander.call
    end
  end
end
