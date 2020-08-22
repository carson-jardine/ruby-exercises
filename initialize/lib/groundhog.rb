class Groundhog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name=(n)
    @name = n
  end
end
