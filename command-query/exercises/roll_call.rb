class RollCall

  def initialize
    @roll_call = []
  end

  def longest_name
    @roll_call.max_by {|name| name.length}
  end

  def <<(name)
    @roll_call << name
  end
end
