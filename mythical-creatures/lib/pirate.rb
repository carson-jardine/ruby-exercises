class Pirate
  attr_reader :name,
              :job,
              :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_act_count = 0
    @booty = 0
  end

  def cursed?
    if @heinous_act_count >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @heinous_act_count += 1
  end

  def rob_ship
    @booty += 100

  end
end
