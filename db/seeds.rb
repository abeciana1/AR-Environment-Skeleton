require 'pry'
Student.destroy_all
Teacher.destroy_all

# Teachers
metz = Teacher.create(last_name: "Metz", grade_level: "tenth", years_of_experience: 20)
django = Teacher.create(last_name: "Django", grade_level: "tenth", years_of_experience: 4)


# Students
alex = Student.create(first_name: "Alex", last_name: "Beciana", grade_level: "ninth", teacher_id: metz.id)
tashawn = Student.create(first_name: "Tashawn", last_name: "Williams", grade_level: "tenth", teacher_id: django.id)


Student.all_in_grade("tenth")

metz.tenure
