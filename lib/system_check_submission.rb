require_relative "grade"

class SystemCheckSubmission
  include Grade
  attr_reader :student, :solution, :grade

  def initialize(solution, student)
    @solution = solution
    @student = student

  end

  def assign_grade(grade)
    valid_grades = GRADES
    raise InvalidGradeError if !valid_grades.include?(grade)
    @grade = grade
  end

  def graded?
    !@grade.nil?
  end
end

class InvalidGradeError < StandardError
end
