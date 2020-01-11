require 'set'
require_relative 'store'
QUES_NO = 3
TOTAL_QUES = 3
data = [
  {ques: "first ques", options: ["a","b","c","d"], ans: "d"},
  {ques: "second ques", options: ["a","b","c","d"], ans: "c"},
  {ques: "third ques", options: ["a","b","c","d"], ans: "d"}
]
score=0
def input_ans
  input="e"
  while  !["a","b","c","d"].include?(input)
    puts "Your answer(a/b/c/d): "
    input = gets.chomp
  end
  input
end
  
def random_quesno(n,max)
  randoms = Set.new
  loop do
    randoms << rand(max)
    return randoms.to_a if randoms.size == n 
  end 
end

p "Welcome to quiz "
25.times{print "-"}
puts
result = Result.new
ques_no = random_quesno(QUES_NO,TOTAL_QUES)
ques_no.each do |no|
  a_ques = data[no]
  question = Questions.new(a_ques[:ques],a_ques[:options],a_ques[:ans])
  question.print_ques
  
  result.score_increament if question.check(input_ans)
  puts
end
puts result



