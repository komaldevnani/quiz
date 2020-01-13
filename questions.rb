require 'set'
class Question_coll
  @@list_of_quesno = Set.new
  
  def self.random_quesno(n,max)
    loop do
      @@list_of_quesno << rand(1..max)
      return @@list_of_quesno.to_a if @@list_of_quesno.size == n 
    end 
  end
      
end