require 'pry'
Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all


#Teacher
metz = Teacher.create(last_name: "Metz", years_of_experience: 20)
django = Teacher.create(last_name: "Django", years_of_experience: 4)


#Student
alex = Student.create(first_name: "Alex", last_name: "Beciana")
tashawn = Student.create(first_name: "Tashawn", last_name: "Williams")

#GradeLevel
grade_level1 = GradeLevel.create(student_id: alex.id, teacher_id: metz.id)
grade_level2 = GradeLevel.create(student_id: tashawn.id, teacher_id: django.id)
grade_level3 = GradeLevel.create(student_id: alex.id, teacher_id: django.id)