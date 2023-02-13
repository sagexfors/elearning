# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a teacher and 10 students
User.create(email: "teacher1@school.com", role: "teacher", password: "registration")

10.times do |i|
  User.create(email: "student#{i+1}@school.com", role: "student", password: "registration")
end

# Create 5 subjects
subjects = ["Math", "Science", "History", "English", "Art"]

subjects.each do |subject|
  Subject.create(name: subject, description: "This is a description for #{subject}", user_id: 1)
end

subjects = Subject.all

# create 2 lessons and 2 activites for each subject

subjects.each do |subject|
  Lesson.create(name: "Lesson 1", description: "This is a description for Lesson 1", url: "https://drive.google.com", subject_id: subject.id)
  Lesson.create(name: "Lesson 2", description: "This is a description for Lesson 2", url: "https://drive.google.com", subject_id: subject.id)
  Activity.create(name: "Activity 1", description: "This is a description for Activity 1", url: "https://drive.google.com", subject_id: subject.id)
  Activity.create(name: "Activity 2", description: "This is a description for Activity 2", url: "https://drive.google.com", subject_id: subject.id)
end