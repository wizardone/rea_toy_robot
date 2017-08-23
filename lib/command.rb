# Main command class implementing a command pattern,
# actual commands inherit from it
class Command

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def execute
    raise NotImplementedError
  end
end
