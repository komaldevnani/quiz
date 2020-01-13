class Question
  attr_accessor :question, :options, :answer
    
  def initialize(question, options, answer)
    @question = question
    @options = options
    @answer = answer
  end

  def check(user_ans)
    @answer == user_ans
  end
  
  def to_s
    "#{@question} \n#{@options.join("\n")}"
  end
end

