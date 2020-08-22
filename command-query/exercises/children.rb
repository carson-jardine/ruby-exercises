class Children
  attr_reader :children

  def initialize
    @children = []
  end

  def <<(child)
    @children << child
  end

  def eldest
    children.max {|x, y| x.age <=> y.age }
  end
end
