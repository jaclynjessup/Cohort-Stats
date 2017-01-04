require_relative "lesson"

class SystemCheck < Lesson
  attr_reader :submissions, :grade

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum = 0
      @submissions.each do |submission|
        sum += submission.grade
      end
    sum / @submissions.length.to_f
  end

  def did_student_complete_system_check?(student)
    !@submissions.empty?
  end

  def submittable?
    true
  end
end
