class Wizard
  attr_reader :name
  attr_accessor :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(chant)
    "sudo #{chant}"
  end

  def cast
    @cast_count += 1
    "MAGIC MISSLE!"
  end

  def rested?
    if @cast_count >= 3
      false
    else
      @rested
    end
  end



end
