class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = "Palomino"
    @tired_meter = 0
    @standing = true
    @laying = false
  end

  def shoot
    @tired_meter += 1
    if !self.cranky?
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @tired_meter += 1
    if !self.cranky?
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    if @tired_meter >= 3
      true
    else
      false
    end
  end

  def standing?
    @standing
  end

  def sleep
    if self.lay_down
      "Yassss"
    else
      "NO!"
    end
  end

  def laying?
    @laying
  end

  def lay_down
    @laying == true
    @standing == false
  end


end
