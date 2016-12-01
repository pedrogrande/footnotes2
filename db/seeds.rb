# Adding a default admin user
user = User.create(email: 'admin@example.com', password: '12345678')
puts "User added with email: admin@example.com and password: 12345678"
user.add_role :admin
puts "User given role of admin"


year_groups = [
  { 'name' => 'Year 7', 'code' => 'y7' },
  { 'name' => 'Year 8', 'code' => 'y8' },
  { 'name' => 'Year 9', 'code' => 'y9' },
  { 'name' => 'Year 10', 'code' => 'y10' },
  { 'name' => 'Year 11', 'code' => 'y11' },
  { 'name' => 'Year 12', 'code' => 'y12' },
  { 'name' => '18 - 20', 'code' => 'y0' }
]

year_groups.each do |yg|
  YearGroup.create(name: yg['name'], code: yg['code'])
  puts "#{yg['name']} YearGroup created"
end

quiz = Quiz.create(name: 'Year 7 Quiz', description: 'Yeah', year_group_id: 1)
puts "Quiz created: #{quiz.name}"
question_type = QuestionType.create(name: 'Choose 3')
puts "Question type created: #{question_type.name}"
question = Question.create(question_type_id: 1, order: 1, title: 'Question 1', description: 'Describe question 1')
puts "Question created: #{question.title}"
quiz.questions << question
puts "Question added to quiz"
answer1 = Answer.create(question_id: question.id, order: 1, title: 'Answer 1', image: 'image1.jpg')
puts "Answer created: #{answer1.title}"
answer2 = Answer.create(question_id: question.id, order: 2, title: 'Answer 2', image: 'image2.jpg')
puts "Answer created: #{answer2.title}"
answer3 = Answer.create(question_id: question.id, order: 3, title: 'Answer 3', image: 'image3.jpg')
puts "Answer created: #{answer3.title}"
