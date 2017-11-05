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
  end
  def get_courses
    @document.css(".post")
  end
  def make_courses
    xml_elements = get_courses
     
  end
end
