require 'pry'
Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
Book.destroy_all


#Teacher
metz = Teacher.create(last_name: "Metz", years_of_experience: 20, grade: "first")
django = Teacher.create(last_name: "Django", years_of_experience: 4, grade: "second")

# Book
book1 = Book.create(title: "Ruby Programming")
book2 = Book.create(title: "Biology")

#Student
alex = Student.create(first_name: "Alex", last_name: "Beciana", grade: "first", book_id: book1)
tashawn = Student.create(first_name: "Tashawn", last_name: "Williams", grade: "second", book_id: book2)

#GradeLevel
school1 = School.create(name: "ps1", student_id: alex.id, teacher_id: metz.id)
school2 = School.create(name: "ps1", student_id: tashawn.id, teacher_id: django.id)
school3 = School.create(name: "ps1", student_id: alex.id, teacher_id: django.id)