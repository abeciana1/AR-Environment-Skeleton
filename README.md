# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

## Additional Deliverables
<!-- - A Student belongs to a Teacher -->
<!-- - Student#teacher should return the teacher that student belongs to
- Teacher#students should return a list of all the students that belong to this teacher -->

### Changing to Many-to-Many

<!-- - A Student has many Teachers through GradeLevel
- A Teacher has many Students through GradeLevel
You should have a complete seeds file  -->

* What changes did you make to your app? Why?

I did the remapping so that I could visually see what the new changes are.

I removed the `grade_level_id` columm in the `teachers` and `students` tables because `GradeLevel` is a now a class and instances of `Teacher` and `Student` belong to `GradeLevel`.

I removed the `teacher_id` column from the `students` table because changed from a has-many/belongs to association to a has-many-through association.

I created the join class model and table, `GradeLevel` and `grade_levels` respectively to reflect the new deliverables. The table was created so that it could hold `students` and `teachers` foreign keys

For macro associations, I changed the `Teacher` and `Student` classes because I needed to show that they don't have a direct or one-to-many assocation any more. The have an association through a join table.

```ruby
    has_many :grade_levels
    has_many :students, through: :grade_levels
```
``` ruby
    has_many :grade_levels
    has_many :teachers, through: :grade_levels
```
Similarly, I added the macro association to the `GradeLevel` class so that instances of the `Student` class can access the information about `Teacher` class instances that are have relationship by being within the same row on the `grade_levels` table.
``` ruby
    belongs_to :student
    belongs_to :teacher
```
I also added `ActiveRecord::Base` inheritance to `GradeLevel` class so that the class can inherit the built-in methods that ActiveRecord has. 

I edited and refactored the seed file to reflect change in associations. Otherwise there would have been argument error issues with providing more information than Ruby expected. 

Additionally, I created assocation methods `Teacher#students` and `Student#teachers` because particular `Student` instances should know the `Teacher` instances that they're assocaited within `grade_levels` and vice versa with `Teachers` instance and `Student` instances. I also created `GradeLevel.students` and `GradeLevel.teachers` for any future class method deliverables that might require having a list of all teacher instances and student instances.


## Questions

* Which method(s) does Active Record create for you?

    Active Record has the `.all` method built-in. We can also call on the attributes of our class instances like `first_name` and `last_name` because that is stored in our database and just like in OO with attr_accessors and attr_readers, we can access that information to return a certain value.

* Which method(s) did you have to create yourself? Why? 

    I had to create the `Teacher#tenure` and the `Student.all_in_grade` methods.


