module Simulator
  module Commands
    class Right < Simulator::Command
      def execute
        return false unless robot_placed?
        puts 'Right COMMAND'
      end
    end
  end
end

