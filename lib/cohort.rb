class Cohort
  attr_reader :title, :start_date, :end_date
  attr_accessor :students, :system_checks

  def initialize(title, start_date,end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students =[]
    @system_checks =[]
  end

  def career_kickoff
    @end_date + 4
  end

  def enroll(student)
    return self if students.include? student
    @students << student
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster = ""
     roster << "#{title}"
     roster += "--------------------"
       @students.each do |student|
         roster << "#{student.name}#{student.email} \n"
       end
     roster
   end

  def system_check_completed?(system_check)
    if @system_checks.include?(system_check)
     correct_submissions = 0
     @students.each do |student|
       if system_check.submissions.any? { |submission| submission.student == student }
         correct_submissions += 1
       end
      end
    else
      false
    end
    correct_submissions == @students.size
  end
end
