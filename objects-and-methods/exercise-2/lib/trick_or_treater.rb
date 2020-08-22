class TrickOrTreater
  attr_reader :bag

  def initialize(costume, sugar_level = 0)
    @costume = costume
    @bag = Bag.new
    @sugar_level = sugar_level
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.count
  end

  def eat
    eaten = bag.candies.pop
    @sugar_level += eaten.sugar
  end

  def sugar_level
    @sugar_level
  end
end
