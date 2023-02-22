# frozen_string_literal: true

# Create a teacher and 10 students
teacher = User.create(email: 'teacher1@school.com', role: 'teacher', password: 'registration')

10.times do |i|
  User.create(email: "student#{i + 1}@school.com", role: 'student', password: 'registration')
end

# Create 5 subjects
subjects = %w[Math Science]

subjects.each do |subject|
  Subject.create(name: subject, description: "This is a description for #{subject}", user_id: teacher.id)
end

subjects = Subject.all

# create 1 lesson and 1 activity for each subject

subjects.each do |subject|
  Lesson.create(name: 'Lesson 1', description: 'This is a description for Lesson 1', subject_id: subject.id)
  Activity.create(name: 'Activity 1', description: 'This is a description for Activity 1', subject_id: subject.id)
end
