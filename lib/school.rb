# require 'pry'

class School
# attr_accessor :roster, :student
attr_accessor  :student


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)

    if @roster.keys.include?(grade)
      @roster[grade] << student_name
      # binding.pry
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
# <<<<<<< HEAD
    @roster.each do |k,v|
      @roster[k] = v.sort!
    end
# =======
     @roster.sort.to_h
# >>>>>>> 936f0fc3976f01201ae54296dbb7711452776b03
  end

end
