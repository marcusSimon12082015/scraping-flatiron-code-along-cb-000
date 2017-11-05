require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
    @document
    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  def get_page
      @document = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
      doc.css(".post").each do |post|
        course = Course.new
        course.title = post.css("h2").text
        course.schedule = post.css(".date").text
        course.description = post.css("p").text
      end
  end
  def get_courses
  end
  def make_courses
    xml_elements = get_courses
    xml_elements.each{|element| puts "#{element}"}
  end
end
