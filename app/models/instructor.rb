class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student, test_name)
    arr = BoatingTest.all.select{|test| test.student.first_name == student}
    test = arr.select{|test| test.test_name == test_name}
    test.map{|test| test.test_status = "passed"}
  end

  def self.fail_student(student, test_name)
    arr = BoatingTest.all.select{|test| test.student.first_name == student}
    test = arr.select{|test| test.test_name == test_name}
    test.map{|test| test.test_status = "failed"}
  end

  def pass_student_ins(student_name)
    BoatingTest.all.map do |test|
      if test.student.first_name == student_name && test.instructor == self
        test.test_status = "passed"
      end
    end
  end
  #pass_student test by this instructor

  def self.student_grade_percentage(student_first_name)
    student_test = BoatingTest.all.select{|test| test.student.first_name == student_first_name}
    student_test_count = student_test.length
    test_passed = student_test.select{|test| test.test_status == "passed"}.length
    "#{(test_passed.to_f / student_test_count * 100).round(2)}%"
  end
end #end with class
