module Simulator
  module Commands
    class Report < Simulator::Command
      def execute
        return false unless valid?
        puts robot.output
      end
    end
  end
end

