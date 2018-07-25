require 'faker'

# creates 10 courses
10.times do
  Course.create(name: Faker::GreekPhilosophers.name, description: Faker::GreekPhilosophers.quote)
end

# creates 30 students, each of them attending a course
30.times do
  Student.create(name: Faker::NewGirl.character, course_id: Course.all.sample.id)
end
