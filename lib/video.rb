require_relative "lesson"

class Video < Lesson
  attr_reader :name, :body, :url

  def initialize(name, body, url = nil)
    @name = name
    @body = body
    @url = url
  end
end
