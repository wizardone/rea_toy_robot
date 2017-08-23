module Simulator
  module Commands
    class Place < Simulator::Command
      def execute
        return false unless robot_placed?
        puts 'Place COMMAND'
      end
    end
  end
end

