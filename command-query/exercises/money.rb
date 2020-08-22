class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(n)
    @amount += n
  end

  def spend(n)
    if n > @amount
      "You can't spend what you don't have"
    else
      @amount -= n
    end   
  end
end
