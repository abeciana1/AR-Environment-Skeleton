# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

## Questions

* Which method(s) does Active Record create for you?

    Active Record has the `.all` method built-in. We can also call on the attributes of our class instances like `first_name` and `last_name` because that is stored in our database and just like in OO with attr_accessors and attr_readers, we can access that information to return a certain value.

* Which method(s) did you have to create yourself? Why? 

    I had to create the `Teacher#tenure` and the `Student.all_in_grade` methods.