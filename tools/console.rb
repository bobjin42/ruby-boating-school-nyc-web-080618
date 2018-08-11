require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("yicheng")
student2 = Student.new("bob")
student3 = Student.new("linda")
student4 = Student.new("ava")

instructor1 = Instructor.new("instructor1")
instructor2 = Instructor.new("instructor2")
instructor3 = Instructor.new("instructor3")
instructor4 = Instructor.new("instructor4")

boatingtest1 = BoatingTest.new(student1, instructor3, "aa", "passed")
boatingtest2 = BoatingTest.new(student3, instructor2, "bb", "pending")
boatingtest3 = BoatingTest.new(student4, instructor4, "cc", "complete")
boatingtest4 = BoatingTest.new(student3, instructor4, "cc", "complete")
boatingtest5 = BoatingTest.new(student3, instructor1, "dd", "complete")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
