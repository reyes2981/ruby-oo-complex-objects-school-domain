class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(s_name, grade)
        roster[grade] ||= []
        roster[grade] << s_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
    end

 

end
