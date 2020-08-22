class Werewolf
  attr_reader :name, :location, :victims

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @victims = []
  end

  def human?
    @human
  end

  def change!
    if self.human?
      @human = false
      @wolf = true
    elsif !self.human?
      @human = true
      @wolf = false
    end
  end

  def wolf?
    @wolf
  end

  def hungry?
    if self.wolf? && @victims.empty?
      true
    else
      false
    end
  end

  def consume(victim)
    if self.wolf?
      @victims << victim
      victim.eaten
    end
  end
end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end

  def eaten
    @status = :dead
  end
end
