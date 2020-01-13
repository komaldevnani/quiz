class User
  attr_accessor :input

  def initialize
  end
  
  def input_ans
    @input="e"
    while  !["a","b","c","d"].include?(input)
      puts "Your answer(a/b/c/d): "
      @input = gets.chomp
    end
    @input
  end
end