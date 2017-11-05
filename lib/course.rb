class Course
  attr_accessor :title, :schedule, :description
  @@courses = []
  def self.all
    @@courses
  end
end
