class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(type)
    candies.shift
  end

  def take(n)
    taken = candies.shift(n)   
  end



end
