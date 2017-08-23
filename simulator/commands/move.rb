module Simulator
  module Commands
    class Move < Simulator::Command
      def execute
        return false unless robot_placed?
        puts 'MOVE COMMAND'
      end
    end
  end
end
