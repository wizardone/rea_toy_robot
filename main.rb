simulator = File.expand_path('simulator', __dir__)
$LOAD_PATH.unshift(simulator) unless $LOAD_PATH.include?(simulator)

require_relative 'simulator/app'

app = Simulator::App.new
app.start
