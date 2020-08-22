class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @meal_count = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @meal_count += 1
    if @meal_count >= 3
      @hungry = false
    end 
  end

end
