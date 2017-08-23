module Simulator
  module Commands
    class Left < Simulator::Command
      def execute
        return false unless robot_placed?
        puts 'Left COMMAND'
      end
    end
  end
end

