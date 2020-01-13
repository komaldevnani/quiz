require_relative 'questions'
require_relative 'user'
require_relative 'result'
require_relative 'question'
require 'bundler'
Bundler.require

QUES_NO = 3
TOTAL_SCORE = QUES_NO * 1
TOTAL_QUES = 3
i=1
session = GoogleDrive::Session.from_service_account_key("client.json")
spreadsheet = session.spreadsheet_by_title("quiz questions")
worksheet = spreadsheet.worksheets.first

user = User.new
result = Result.new

ques_no = Question_coll.random_quesno(QUES_NO,TOTAL_QUES)
ques_no.each do |no|
  r = worksheet.rows[no]                        #getting question at row 'no'th
  question = Question.new(r[1],r[2..5],r[6])    #creating a question object
  puts "#{i}. #{question}"
  
  result.score_change if question.check(user.input_ans)
  puts
  i+=1
end
puts result
