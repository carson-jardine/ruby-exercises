class Student
  attr_reader :grade

  def initialize
    @grade = 'C'
  end

  def study
    if @grade == 'A'
      @grade = "A"
    else
      @grade = (@grade.ord - 1).chr
    end
    if @grade == "E"
      @grade = 'D'
    end 
  end

  def slack_off
    if @grade == 'F'
      @grade = 'F'
    else
      @grade = (@grade.ord + 1).chr
    end
    if @grade == 'E'
      @grade = 'F'
    end
  end
end
