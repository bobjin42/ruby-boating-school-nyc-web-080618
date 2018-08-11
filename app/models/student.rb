class Student

  attr_accessor :first_name

 @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(self, instructor, test_name, test_status)
  end

  def self.find_student(first_name)
    Student.all.find{|student| student.first_name == first_name}
  end

end #end with class
