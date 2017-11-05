class Course
  attr_accessor :title, :schedule, :description
  @@courses = []
  def initialize(title,schedule,description)
    @title = title
    @schedule = schedule
    @description = description
    @@courses << self
  end
  def self.all
    @@courses
  end
  def self.reset_all
    @@courses.clear
  end
end
