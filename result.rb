class Result
  attr_accessor :score
  
  def initialize
    @score = 0
  end

  def score_change
    @score+=1
  end

  def compliment
    if @score == TOTAL_SCORE
      return "Great! you got all right answers."
    elsif score >= TOTAL_SCORE/2
      return "Good game."
    end
    "Can do better!"
  end

  def to_s
    "#{compliment} #{@score}/#{TOTAL_SCORE} questions correct."
  end
end