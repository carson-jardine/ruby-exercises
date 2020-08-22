class Adult
  def initialize
    @drink_count = 0 
  end

  def sober?
    if @drink_count >= 3
      false
    else
      true
    end
  end

  def consume_an_alcoholic_beverage
    @drink_count += 1
  end
end
